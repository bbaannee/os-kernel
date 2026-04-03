
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00005117          	auipc	sp,0x5
    80000004:	7b813103          	ld	sp,1976(sp) # 800057b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	611010ef          	jal	ra,80001e2c <start>

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
    80001084:	2d5000ef          	jal	ra,80001b58 <_ZN5Riscv20handleSupervisorTrapEPm>


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
.type _ZN6Thread13switchContextEPNS_7ContextES1_, @function
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
    .irp index, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    sd x\index, \index * 8(sp)
    .endr
    80001128:	00313c23          	sd	gp,24(sp)
    8000112c:	02413023          	sd	tp,32(sp)
    80001130:	02513423          	sd	t0,40(sp)
    80001134:	02613823          	sd	t1,48(sp)
    80001138:	02713c23          	sd	t2,56(sp)
    8000113c:	04813023          	sd	s0,64(sp)
    80001140:	04913423          	sd	s1,72(sp)
    80001144:	04a13823          	sd	a0,80(sp)
    80001148:	04b13c23          	sd	a1,88(sp)
    8000114c:	06c13023          	sd	a2,96(sp)
    80001150:	06d13423          	sd	a3,104(sp)
    80001154:	06e13823          	sd	a4,112(sp)
    80001158:	06f13c23          	sd	a5,120(sp)
    8000115c:	09013023          	sd	a6,128(sp)
    80001160:	09113423          	sd	a7,136(sp)
    80001164:	09213823          	sd	s2,144(sp)
    80001168:	09313c23          	sd	s3,152(sp)
    8000116c:	0b413023          	sd	s4,160(sp)
    80001170:	0b513423          	sd	s5,168(sp)
    80001174:	0b613823          	sd	s6,176(sp)
    80001178:	0b713c23          	sd	s7,184(sp)
    8000117c:	0d813023          	sd	s8,192(sp)
    80001180:	0d913423          	sd	s9,200(sp)
    80001184:	0da13823          	sd	s10,208(sp)
    80001188:	0db13c23          	sd	s11,216(sp)
    8000118c:	0fc13023          	sd	t3,224(sp)
    80001190:	0fd13423          	sd	t4,232(sp)
    80001194:	0fe13823          	sd	t5,240(sp)
    80001198:	0ff13c23          	sd	t6,248(sp)

    ret
    8000119c:	00008067          	ret

00000000800011a0 <_ZN5Riscv10popAllRegsEv>:
.type _ZN5Riscv10popAllRegsEv, @function
_ZN5Riscv10popAllRegsEv:
    # Vraćamo registre x1 do x31 sa steka
    .irp index, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    ld x\index, \index * 8(sp)
    .endr
    800011a0:	01813183          	ld	gp,24(sp)
    800011a4:	02013203          	ld	tp,32(sp)
    800011a8:	02813283          	ld	t0,40(sp)
    800011ac:	03013303          	ld	t1,48(sp)
    800011b0:	03813383          	ld	t2,56(sp)
    800011b4:	04013403          	ld	s0,64(sp)
    800011b8:	04813483          	ld	s1,72(sp)
    800011bc:	05013503          	ld	a0,80(sp)
    800011c0:	05813583          	ld	a1,88(sp)
    800011c4:	06013603          	ld	a2,96(sp)
    800011c8:	06813683          	ld	a3,104(sp)
    800011cc:	07013703          	ld	a4,112(sp)
    800011d0:	07813783          	ld	a5,120(sp)
    800011d4:	08013803          	ld	a6,128(sp)
    800011d8:	08813883          	ld	a7,136(sp)
    800011dc:	09013903          	ld	s2,144(sp)
    800011e0:	09813983          	ld	s3,152(sp)
    800011e4:	0a013a03          	ld	s4,160(sp)
    800011e8:	0a813a83          	ld	s5,168(sp)
    800011ec:	0b013b03          	ld	s6,176(sp)
    800011f0:	0b813b83          	ld	s7,184(sp)
    800011f4:	0c013c03          	ld	s8,192(sp)
    800011f8:	0c813c83          	ld	s9,200(sp)
    800011fc:	0d013d03          	ld	s10,208(sp)
    80001200:	0d813d83          	ld	s11,216(sp)
    80001204:	0e013e03          	ld	t3,224(sp)
    80001208:	0e813e83          	ld	t4,232(sp)
    8000120c:	0f013f03          	ld	t5,240(sp)
    80001210:	0f813f83          	ld	t6,248(sp)

    # Oslobađamo prostor na steku
    addi sp, sp, 256
    80001214:	10010113          	addi	sp,sp,256
    80001218:	00008067          	ret

000000008000121c <_Z9mem_allocm>:
#include "../h/syscall_c.h"
#include  "../h/riscv.h"
#include "../lib/mem.h"
void *mem_alloc(size_t size) {
    8000121c:	fe010113          	addi	sp,sp,-32
    80001220:	00813c23          	sd	s0,24(sp)
    80001224:	02010413          	addi	s0,sp,32
    size_t blocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001228:	03f50513          	addi	a0,a0,63
    8000122c:	00655513          	srli	a0,a0,0x6
        return value;
    }


inline void Riscv::writeARegister( int reg_number, uint64 value) {
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001230:	00050593          	mv	a1,a0
    80001234:	00100793          	li	a5,1
    80001238:	00078513          	mv	a0,a5

    Riscv::writeARegister(1, blocks);
    Riscv::writeARegister(0, 0x01);

    __asm__ volatile("ecall");
    8000123c:	00000073          	ecall
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    80001240:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80001244:	fef43423          	sd	a5,-24(s0)
    return (void*) a0;
    80001248:	fe843503          	ld	a0,-24(s0)


}
    8000124c:	01813403          	ld	s0,24(sp)
    80001250:	02010113          	addi	sp,sp,32
    80001254:	00008067          	ret

0000000080001258 <_Z8mem_freePv>:

int mem_free (void* ptr) {
    80001258:	fe010113          	addi	sp,sp,-32
    8000125c:	00813c23          	sd	s0,24(sp)
    80001260:	02010413          	addi	s0,sp,32
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001264:	00050593          	mv	a1,a0
    80001268:	00200793          	li	a5,2
    8000126c:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)ptr);
    Riscv::writeARegister(0, 0x02);

    __asm__ volatile("ecall");
    80001270:	00000073          	ecall
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    80001274:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80001278:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    8000127c:	fe843503          	ld	a0,-24(s0)
}
    80001280:	0005051b          	sext.w	a0,a0
    80001284:	01813403          	ld	s0,24(sp)
    80001288:	02010113          	addi	sp,sp,32
    8000128c:	00008067          	ret

0000000080001290 <_Znwm>:

void* operator new(size_t size) {
    80001290:	ff010113          	addi	sp,sp,-16
    80001294:	00113423          	sd	ra,8(sp)
    80001298:	00813023          	sd	s0,0(sp)
    8000129c:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    800012a0:	00003097          	auipc	ra,0x3
    800012a4:	d18080e7          	jalr	-744(ra) # 80003fb8 <__mem_alloc>
}
    800012a8:	00813083          	ld	ra,8(sp)
    800012ac:	00013403          	ld	s0,0(sp)
    800012b0:	01010113          	addi	sp,sp,16
    800012b4:	00008067          	ret

00000000800012b8 <_Znam>:


void* operator new[](size_t size) {
    800012b8:	ff010113          	addi	sp,sp,-16
    800012bc:	00113423          	sd	ra,8(sp)
    800012c0:	00813023          	sd	s0,0(sp)
    800012c4:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    800012c8:	00003097          	auipc	ra,0x3
    800012cc:	cf0080e7          	jalr	-784(ra) # 80003fb8 <__mem_alloc>
}
    800012d0:	00813083          	ld	ra,8(sp)
    800012d4:	00013403          	ld	s0,0(sp)
    800012d8:	01010113          	addi	sp,sp,16
    800012dc:	00008067          	ret

00000000800012e0 <_ZdlPv>:


void operator delete(void* ptr) noexcept {
    800012e0:	ff010113          	addi	sp,sp,-16
    800012e4:	00113423          	sd	ra,8(sp)
    800012e8:	00813023          	sd	s0,0(sp)
    800012ec:	01010413          	addi	s0,sp,16
    __mem_free(ptr);
    800012f0:	00003097          	auipc	ra,0x3
    800012f4:	bfc080e7          	jalr	-1028(ra) # 80003eec <__mem_free>
}
    800012f8:	00813083          	ld	ra,8(sp)
    800012fc:	00013403          	ld	s0,0(sp)
    80001300:	01010113          	addi	sp,sp,16
    80001304:	00008067          	ret

0000000080001308 <_ZdaPv>:

void operator delete[](void* ptr) noexcept {
    80001308:	ff010113          	addi	sp,sp,-16
    8000130c:	00113423          	sd	ra,8(sp)
    80001310:	00813023          	sd	s0,0(sp)
    80001314:	01010413          	addi	s0,sp,16
    __mem_free(ptr);
    80001318:	00003097          	auipc	ra,0x3
    8000131c:	bd4080e7          	jalr	-1068(ra) # 80003eec <__mem_free>
    80001320:	00813083          	ld	ra,8(sp)
    80001324:	00013403          	ld	s0,0(sp)
    80001328:	01010113          	addi	sp,sp,16
    8000132c:	00008067          	ret

0000000080001330 <_ZL9fibonaccim>:
#include "../lib/hw.h"
#include "../h/Thread.h"
#include "../h/printer.h"

static uint64 fibonacci(uint64 n)
{
    80001330:	fe010113          	addi	sp,sp,-32
    80001334:	00113c23          	sd	ra,24(sp)
    80001338:	00813823          	sd	s0,16(sp)
    8000133c:	00913423          	sd	s1,8(sp)
    80001340:	01213023          	sd	s2,0(sp)
    80001344:	02010413          	addi	s0,sp,32
    80001348:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000134c:	00100793          	li	a5,1
    80001350:	02a7f663          	bgeu	a5,a0,8000137c <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) Thread::yield();
    80001354:	00357793          	andi	a5,a0,3
    80001358:	02078e63          	beqz	a5,80001394 <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000135c:	fff48513          	addi	a0,s1,-1
    80001360:	00000097          	auipc	ra,0x0
    80001364:	fd0080e7          	jalr	-48(ra) # 80001330 <_ZL9fibonaccim>
    80001368:	00050913          	mv	s2,a0
    8000136c:	ffe48513          	addi	a0,s1,-2
    80001370:	00000097          	auipc	ra,0x0
    80001374:	fc0080e7          	jalr	-64(ra) # 80001330 <_ZL9fibonaccim>
    80001378:	00a90533          	add	a0,s2,a0
}
    8000137c:	01813083          	ld	ra,24(sp)
    80001380:	01013403          	ld	s0,16(sp)
    80001384:	00813483          	ld	s1,8(sp)
    80001388:	00013903          	ld	s2,0(sp)
    8000138c:	02010113          	addi	sp,sp,32
    80001390:	00008067          	ret
    if (n % 4 == 0) Thread::yield();
    80001394:	00000097          	auipc	ra,0x0
    80001398:	454080e7          	jalr	1108(ra) # 800017e8 <_ZN6Thread5yieldEv>
    8000139c:	fc1ff06f          	j	8000135c <_ZL9fibonaccim+0x2c>

00000000800013a0 <_Z11workerBodyAv>:

void workerBodyA()
{
    800013a0:	fe010113          	addi	sp,sp,-32
    800013a4:	00113c23          	sd	ra,24(sp)
    800013a8:	00813823          	sd	s0,16(sp)
    800013ac:	00913423          	sd	s1,8(sp)
    800013b0:	01213023          	sd	s2,0(sp)
    800013b4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800013b8:	00000493          	li	s1,0
    800013bc:	0380006f          	j	800013f4 <_Z11workerBodyAv+0x54>
    for (; i < 3; i++)
    {
        printString("A: i=");
    800013c0:	00004517          	auipc	a0,0x4
    800013c4:	c6050513          	addi	a0,a0,-928 # 80005020 <CONSOLE_STATUS+0x10>
    800013c8:	00000097          	auipc	ra,0x0
    800013cc:	458080e7          	jalr	1112(ra) # 80001820 <_Z11printStringPKc>
        printInteger(i);
    800013d0:	00048513          	mv	a0,s1
    800013d4:	00000097          	auipc	ra,0x0
    800013d8:	490080e7          	jalr	1168(ra) # 80001864 <_Z12printIntegerm>
        printString("\n");
    800013dc:	00004517          	auipc	a0,0x4
    800013e0:	c5450513          	addi	a0,a0,-940 # 80005030 <CONSOLE_STATUS+0x20>
    800013e4:	00000097          	auipc	ra,0x0
    800013e8:	43c080e7          	jalr	1084(ra) # 80001820 <_Z11printStringPKc>
    for (; i < 3; i++)
    800013ec:	0014849b          	addiw	s1,s1,1
    800013f0:	0ff4f493          	andi	s1,s1,255
    800013f4:	00200793          	li	a5,2
    800013f8:	fc97f4e3          	bgeu	a5,s1,800013c0 <_Z11workerBodyAv+0x20>
    }

    printString("A: yield\n");
    800013fc:	00004517          	auipc	a0,0x4
    80001400:	c2c50513          	addi	a0,a0,-980 # 80005028 <CONSOLE_STATUS+0x18>
    80001404:	00000097          	auipc	ra,0x0
    80001408:	41c080e7          	jalr	1052(ra) # 80001820 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000140c:	00700313          	li	t1,7
    Thread::yield();
    80001410:	00000097          	auipc	ra,0x0
    80001414:	3d8080e7          	jalr	984(ra) # 800017e8 <_ZN6Thread5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %0, t1" : "=r"(t1));
    80001418:	00030913          	mv	s2,t1

    printString("A: t1=");
    8000141c:	00004517          	auipc	a0,0x4
    80001420:	c1c50513          	addi	a0,a0,-996 # 80005038 <CONSOLE_STATUS+0x28>
    80001424:	00000097          	auipc	ra,0x0
    80001428:	3fc080e7          	jalr	1020(ra) # 80001820 <_Z11printStringPKc>
    printInteger(t1);
    8000142c:	00090513          	mv	a0,s2
    80001430:	00000097          	auipc	ra,0x0
    80001434:	434080e7          	jalr	1076(ra) # 80001864 <_Z12printIntegerm>
    printString("\n");
    80001438:	00004517          	auipc	a0,0x4
    8000143c:	bf850513          	addi	a0,a0,-1032 # 80005030 <CONSOLE_STATUS+0x20>
    80001440:	00000097          	auipc	ra,0x0
    80001444:	3e0080e7          	jalr	992(ra) # 80001820 <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    80001448:	01400513          	li	a0,20
    8000144c:	00000097          	auipc	ra,0x0
    80001450:	ee4080e7          	jalr	-284(ra) # 80001330 <_ZL9fibonaccim>
    80001454:	00050913          	mv	s2,a0
    printString("A: fibonacci=");
    80001458:	00004517          	auipc	a0,0x4
    8000145c:	be850513          	addi	a0,a0,-1048 # 80005040 <CONSOLE_STATUS+0x30>
    80001460:	00000097          	auipc	ra,0x0
    80001464:	3c0080e7          	jalr	960(ra) # 80001820 <_Z11printStringPKc>
    printInteger(result);
    80001468:	00090513          	mv	a0,s2
    8000146c:	00000097          	auipc	ra,0x0
    80001470:	3f8080e7          	jalr	1016(ra) # 80001864 <_Z12printIntegerm>
    printString("\n");
    80001474:	00004517          	auipc	a0,0x4
    80001478:	bbc50513          	addi	a0,a0,-1092 # 80005030 <CONSOLE_STATUS+0x20>
    8000147c:	00000097          	auipc	ra,0x0
    80001480:	3a4080e7          	jalr	932(ra) # 80001820 <_Z11printStringPKc>
    80001484:	0380006f          	j	800014bc <_Z11workerBodyAv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    80001488:	00004517          	auipc	a0,0x4
    8000148c:	b9850513          	addi	a0,a0,-1128 # 80005020 <CONSOLE_STATUS+0x10>
    80001490:	00000097          	auipc	ra,0x0
    80001494:	390080e7          	jalr	912(ra) # 80001820 <_Z11printStringPKc>
        printInteger(i);
    80001498:	00048513          	mv	a0,s1
    8000149c:	00000097          	auipc	ra,0x0
    800014a0:	3c8080e7          	jalr	968(ra) # 80001864 <_Z12printIntegerm>
        printString("\n");
    800014a4:	00004517          	auipc	a0,0x4
    800014a8:	b8c50513          	addi	a0,a0,-1140 # 80005030 <CONSOLE_STATUS+0x20>
    800014ac:	00000097          	auipc	ra,0x0
    800014b0:	374080e7          	jalr	884(ra) # 80001820 <_Z11printStringPKc>
    for (; i < 6; i++)
    800014b4:	0014849b          	addiw	s1,s1,1
    800014b8:	0ff4f493          	andi	s1,s1,255
    800014bc:	00500793          	li	a5,5
    800014c0:	fc97f4e3          	bgeu	a5,s1,80001488 <_Z11workerBodyAv+0xe8>
    }

    Thread::running->setFinished(true);
    800014c4:	00004797          	auipc	a5,0x4
    800014c8:	2fc7b783          	ld	a5,764(a5) # 800057c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800014cc:	0007b783          	ld	a5,0(a5)

    static void dispatch();

    bool isFinished(){return finished;};

    void setFinished(bool finished){Thread::finished = finished;};
    800014d0:	00100713          	li	a4,1
    800014d4:	02e78423          	sb	a4,40(a5)
    Thread::yield();
    800014d8:	00000097          	auipc	ra,0x0
    800014dc:	310080e7          	jalr	784(ra) # 800017e8 <_ZN6Thread5yieldEv>
}
    800014e0:	01813083          	ld	ra,24(sp)
    800014e4:	01013403          	ld	s0,16(sp)
    800014e8:	00813483          	ld	s1,8(sp)
    800014ec:	00013903          	ld	s2,0(sp)
    800014f0:	02010113          	addi	sp,sp,32
    800014f4:	00008067          	ret

00000000800014f8 <_Z11workerBodyBv>:

void workerBodyB()
{
    800014f8:	fe010113          	addi	sp,sp,-32
    800014fc:	00113c23          	sd	ra,24(sp)
    80001500:	00813823          	sd	s0,16(sp)
    80001504:	00913423          	sd	s1,8(sp)
    80001508:	01213023          	sd	s2,0(sp)
    8000150c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001510:	00a00493          	li	s1,10
    80001514:	0380006f          	j	8000154c <_Z11workerBodyBv+0x54>
    for (; i < 13; i++)
    {
        printString("B: i=");
    80001518:	00004517          	auipc	a0,0x4
    8000151c:	b3850513          	addi	a0,a0,-1224 # 80005050 <CONSOLE_STATUS+0x40>
    80001520:	00000097          	auipc	ra,0x0
    80001524:	300080e7          	jalr	768(ra) # 80001820 <_Z11printStringPKc>
        printInteger(i);
    80001528:	00048513          	mv	a0,s1
    8000152c:	00000097          	auipc	ra,0x0
    80001530:	338080e7          	jalr	824(ra) # 80001864 <_Z12printIntegerm>
        printString("\n");
    80001534:	00004517          	auipc	a0,0x4
    80001538:	afc50513          	addi	a0,a0,-1284 # 80005030 <CONSOLE_STATUS+0x20>
    8000153c:	00000097          	auipc	ra,0x0
    80001540:	2e4080e7          	jalr	740(ra) # 80001820 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001544:	0014849b          	addiw	s1,s1,1
    80001548:	0ff4f493          	andi	s1,s1,255
    8000154c:	00c00793          	li	a5,12
    80001550:	fc97f4e3          	bgeu	a5,s1,80001518 <_Z11workerBodyBv+0x20>
    }

    printString("B: yield\n");
    80001554:	00004517          	auipc	a0,0x4
    80001558:	b0450513          	addi	a0,a0,-1276 # 80005058 <CONSOLE_STATUS+0x48>
    8000155c:	00000097          	auipc	ra,0x0
    80001560:	2c4080e7          	jalr	708(ra) # 80001820 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001564:	00500313          	li	t1,5
    Thread::yield();
    80001568:	00000097          	auipc	ra,0x0
    8000156c:	280080e7          	jalr	640(ra) # 800017e8 <_ZN6Thread5yieldEv>

    uint64 result = fibonacci(23);
    80001570:	01700513          	li	a0,23
    80001574:	00000097          	auipc	ra,0x0
    80001578:	dbc080e7          	jalr	-580(ra) # 80001330 <_ZL9fibonaccim>
    8000157c:	00050913          	mv	s2,a0
    printString("B: fibonacci=");
    80001580:	00004517          	auipc	a0,0x4
    80001584:	ae850513          	addi	a0,a0,-1304 # 80005068 <CONSOLE_STATUS+0x58>
    80001588:	00000097          	auipc	ra,0x0
    8000158c:	298080e7          	jalr	664(ra) # 80001820 <_Z11printStringPKc>
    printInteger(result);
    80001590:	00090513          	mv	a0,s2
    80001594:	00000097          	auipc	ra,0x0
    80001598:	2d0080e7          	jalr	720(ra) # 80001864 <_Z12printIntegerm>
    printString("\n");
    8000159c:	00004517          	auipc	a0,0x4
    800015a0:	a9450513          	addi	a0,a0,-1388 # 80005030 <CONSOLE_STATUS+0x20>
    800015a4:	00000097          	auipc	ra,0x0
    800015a8:	27c080e7          	jalr	636(ra) # 80001820 <_Z11printStringPKc>
    800015ac:	0380006f          	j	800015e4 <_Z11workerBodyBv+0xec>

    for (; i < 16; i++)
    {
        printString("B: i=");
    800015b0:	00004517          	auipc	a0,0x4
    800015b4:	aa050513          	addi	a0,a0,-1376 # 80005050 <CONSOLE_STATUS+0x40>
    800015b8:	00000097          	auipc	ra,0x0
    800015bc:	268080e7          	jalr	616(ra) # 80001820 <_Z11printStringPKc>
        printInteger(i);
    800015c0:	00048513          	mv	a0,s1
    800015c4:	00000097          	auipc	ra,0x0
    800015c8:	2a0080e7          	jalr	672(ra) # 80001864 <_Z12printIntegerm>
        printString("\n");
    800015cc:	00004517          	auipc	a0,0x4
    800015d0:	a6450513          	addi	a0,a0,-1436 # 80005030 <CONSOLE_STATUS+0x20>
    800015d4:	00000097          	auipc	ra,0x0
    800015d8:	24c080e7          	jalr	588(ra) # 80001820 <_Z11printStringPKc>
    for (; i < 16; i++)
    800015dc:	0014849b          	addiw	s1,s1,1
    800015e0:	0ff4f493          	andi	s1,s1,255
    800015e4:	00f00793          	li	a5,15
    800015e8:	fc97f4e3          	bgeu	a5,s1,800015b0 <_Z11workerBodyBv+0xb8>
    }

    Thread::running->setFinished(true);
    800015ec:	00004797          	auipc	a5,0x4
    800015f0:	1d47b783          	ld	a5,468(a5) # 800057c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800015f4:	0007b783          	ld	a5,0(a5)
    800015f8:	00100713          	li	a4,1
    800015fc:	02e78423          	sb	a4,40(a5)
    Thread::yield();
    80001600:	00000097          	auipc	ra,0x0
    80001604:	1e8080e7          	jalr	488(ra) # 800017e8 <_ZN6Thread5yieldEv>
    80001608:	01813083          	ld	ra,24(sp)
    8000160c:	01013403          	ld	s0,16(sp)
    80001610:	00813483          	ld	s1,8(sp)
    80001614:	00013903          	ld	s2,0(sp)
    80001618:	02010113          	addi	sp,sp,32
    8000161c:	00008067          	ret

0000000080001620 <_ZN6Thread12createThreadEPFvvE>:
#include "../h/riscv.h"
#include "../h/Scheduler.h"

Thread* Thread::running = nullptr;

Thread* Thread::createThread(Body body) {
    80001620:	fe010113          	addi	sp,sp,-32
    80001624:	00113c23          	sd	ra,24(sp)
    80001628:	00813823          	sd	s0,16(sp)
    8000162c:	00913423          	sd	s1,8(sp)
    80001630:	01213023          	sd	s2,0(sp)
    80001634:	02010413          	addi	s0,sp,32
    80001638:	00050913          	mv	s2,a0
    return new Thread(body);
    8000163c:	03000513          	li	a0,48
    80001640:	00000097          	auipc	ra,0x0
    80001644:	c50080e7          	jalr	-944(ra) # 80001290 <_Znwm>
    80001648:	00050493          	mv	s1,a0
private:
    // Konstruktor je privatan
    friend class Scheduler;

    Thread(Body body): next(nullptr), body(body),stack(body!=nullptr ? new uint64[STACK_SIZE] : nullptr),context({
    body!=nullptr ? (uint64) body : 0, stack!= nullptr ? (uint64)& stack[STACK_SIZE] : 0}), finished(false) {
    8000164c:	00053023          	sd	zero,0(a0)
    80001650:	01253423          	sd	s2,8(a0)
    Thread(Body body): next(nullptr), body(body),stack(body!=nullptr ? new uint64[STACK_SIZE] : nullptr),context({
    80001654:	00090a63          	beqz	s2,80001668 <_ZN6Thread12createThreadEPFvvE+0x48>
    80001658:	00002537          	lui	a0,0x2
    8000165c:	00000097          	auipc	ra,0x0
    80001660:	c5c080e7          	jalr	-932(ra) # 800012b8 <_Znam>
    80001664:	0080006f          	j	8000166c <_ZN6Thread12createThreadEPFvvE+0x4c>
    80001668:	00000513          	li	a0,0
    body!=nullptr ? (uint64) body : 0, stack!= nullptr ? (uint64)& stack[STACK_SIZE] : 0}), finished(false) {
    8000166c:	00a4b823          	sd	a0,16(s1)
    80001670:	06090263          	beqz	s2,800016d4 <_ZN6Thread12createThreadEPFvvE+0xb4>
    80001674:	00090793          	mv	a5,s2
    80001678:	00f4bc23          	sd	a5,24(s1)
    8000167c:	06050063          	beqz	a0,800016dc <_ZN6Thread12createThreadEPFvvE+0xbc>
    80001680:	000027b7          	lui	a5,0x2
    80001684:	00f50533          	add	a0,a0,a5
    80001688:	02a4b023          	sd	a0,32(s1)
    8000168c:	02048423          	sb	zero,40(s1)
        if (body!=nullptr) Scheduler::instance().put(this);
    80001690:	06090863          	beqz	s2,80001700 <_ZN6Thread12createThreadEPFvvE+0xe0>

class Thread;

class Scheduler {
public:
    static Scheduler& instance(){static Scheduler instance; return instance;}
    80001694:	00004797          	auipc	a5,0x4
    80001698:	1847c783          	lbu	a5,388(a5) # 80005818 <_ZGVZN9Scheduler8instanceEvE8instance>
    8000169c:	02079063          	bnez	a5,800016bc <_ZN6Thread12createThreadEPFvvE+0x9c>

    void put(Thread* t);

    Thread* get();
private:
    Scheduler():head(nullptr), tail(nullptr){};
    800016a0:	00004797          	auipc	a5,0x4
    800016a4:	18078793          	addi	a5,a5,384 # 80005820 <_ZZN9Scheduler8instanceEvE8instance>
    800016a8:	0007b023          	sd	zero,0(a5)
    800016ac:	0007b423          	sd	zero,8(a5)
    static Scheduler& instance(){static Scheduler instance; return instance;}
    800016b0:	00100793          	li	a5,1
    800016b4:	00004717          	auipc	a4,0x4
    800016b8:	16f70223          	sb	a5,356(a4) # 80005818 <_ZGVZN9Scheduler8instanceEvE8instance>
    800016bc:	00048593          	mv	a1,s1
    800016c0:	00004517          	auipc	a0,0x4
    800016c4:	16050513          	addi	a0,a0,352 # 80005820 <_ZZN9Scheduler8instanceEvE8instance>
    800016c8:	00000097          	auipc	ra,0x0
    800016cc:	22c080e7          	jalr	556(ra) # 800018f4 <_ZN9Scheduler3putEP6Thread>
    800016d0:	0300006f          	j	80001700 <_ZN6Thread12createThreadEPFvvE+0xe0>
    body!=nullptr ? (uint64) body : 0, stack!= nullptr ? (uint64)& stack[STACK_SIZE] : 0}), finished(false) {
    800016d4:	00000793          	li	a5,0
    800016d8:	fa1ff06f          	j	80001678 <_ZN6Thread12createThreadEPFvvE+0x58>
    800016dc:	00000513          	li	a0,0
    800016e0:	fa9ff06f          	j	80001688 <_ZN6Thread12createThreadEPFvvE+0x68>
    800016e4:	00050913          	mv	s2,a0
    800016e8:	00048513          	mv	a0,s1
    800016ec:	00000097          	auipc	ra,0x0
    800016f0:	bf4080e7          	jalr	-1036(ra) # 800012e0 <_ZdlPv>
    800016f4:	00090513          	mv	a0,s2
    800016f8:	00005097          	auipc	ra,0x5
    800016fc:	210080e7          	jalr	528(ra) # 80006908 <_Unwind_Resume>
}
    80001700:	00048513          	mv	a0,s1
    80001704:	01813083          	ld	ra,24(sp)
    80001708:	01013403          	ld	s0,16(sp)
    8000170c:	00813483          	ld	s1,8(sp)
    80001710:	00013903          	ld	s2,0(sp)
    80001714:	02010113          	addi	sp,sp,32
    80001718:	00008067          	ret

000000008000171c <_ZN6Thread8dispatchEv>:
    Thread::dispatch();

     Riscv::popAllRegs();
}

void Thread::dispatch() {
    8000171c:	fe010113          	addi	sp,sp,-32
    80001720:	00113c23          	sd	ra,24(sp)
    80001724:	00813823          	sd	s0,16(sp)
    80001728:	00913423          	sd	s1,8(sp)
    8000172c:	02010413          	addi	s0,sp,32
    Thread* old = running;
    80001730:	00004497          	auipc	s1,0x4
    80001734:	0e04b483          	ld	s1,224(s1) # 80005810 <_ZN6Thread7runningE>

    // Ako nije gotova, vrati je u Scheduler
    if (old && !old->finished) {
    80001738:	04048463          	beqz	s1,80001780 <_ZN6Thread8dispatchEv+0x64>
    8000173c:	0284c783          	lbu	a5,40(s1)
    80001740:	04079063          	bnez	a5,80001780 <_ZN6Thread8dispatchEv+0x64>
    80001744:	00004797          	auipc	a5,0x4
    80001748:	0d47c783          	lbu	a5,212(a5) # 80005818 <_ZGVZN9Scheduler8instanceEvE8instance>
    8000174c:	02079063          	bnez	a5,8000176c <_ZN6Thread8dispatchEv+0x50>
    Scheduler():head(nullptr), tail(nullptr){};
    80001750:	00004797          	auipc	a5,0x4
    80001754:	0d078793          	addi	a5,a5,208 # 80005820 <_ZZN9Scheduler8instanceEvE8instance>
    80001758:	0007b023          	sd	zero,0(a5)
    8000175c:	0007b423          	sd	zero,8(a5)
    static Scheduler& instance(){static Scheduler instance; return instance;}
    80001760:	00100793          	li	a5,1
    80001764:	00004717          	auipc	a4,0x4
    80001768:	0af70a23          	sb	a5,180(a4) # 80005818 <_ZGVZN9Scheduler8instanceEvE8instance>
        Scheduler::instance().put(old);
    8000176c:	00048593          	mv	a1,s1
    80001770:	00004517          	auipc	a0,0x4
    80001774:	0b050513          	addi	a0,a0,176 # 80005820 <_ZZN9Scheduler8instanceEvE8instance>
    80001778:	00000097          	auipc	ra,0x0
    8000177c:	17c080e7          	jalr	380(ra) # 800018f4 <_ZN9Scheduler3putEP6Thread>
    80001780:	00004797          	auipc	a5,0x4
    80001784:	0987c783          	lbu	a5,152(a5) # 80005818 <_ZGVZN9Scheduler8instanceEvE8instance>
    80001788:	02079063          	bnez	a5,800017a8 <_ZN6Thread8dispatchEv+0x8c>
    Scheduler():head(nullptr), tail(nullptr){};
    8000178c:	00004797          	auipc	a5,0x4
    80001790:	09478793          	addi	a5,a5,148 # 80005820 <_ZZN9Scheduler8instanceEvE8instance>
    80001794:	0007b023          	sd	zero,0(a5)
    80001798:	0007b423          	sd	zero,8(a5)
    static Scheduler& instance(){static Scheduler instance; return instance;}
    8000179c:	00100793          	li	a5,1
    800017a0:	00004717          	auipc	a4,0x4
    800017a4:	06f70c23          	sb	a5,120(a4) # 80005818 <_ZGVZN9Scheduler8instanceEvE8instance>
    }

    // Uzmi sledeću
    running = Scheduler::instance().get();
    800017a8:	00004517          	auipc	a0,0x4
    800017ac:	07850513          	addi	a0,a0,120 # 80005820 <_ZZN9Scheduler8instanceEvE8instance>
    800017b0:	00000097          	auipc	ra,0x0
    800017b4:	180080e7          	jalr	384(ra) # 80001930 <_ZN9Scheduler3getEv>
    800017b8:	00004797          	auipc	a5,0x4
    800017bc:	04a7bc23          	sd	a0,88(a5) # 80005810 <_ZN6Thread7runningE>

    // Ako smo zapravo promenili nit, uradi switch
    if (old != running) {
    800017c0:	00a48a63          	beq	s1,a0,800017d4 <_ZN6Thread8dispatchEv+0xb8>
        switchContext(&old->context, &running->context);
    800017c4:	01850593          	addi	a1,a0,24
    800017c8:	01848513          	addi	a0,s1,24
    800017cc:	00000097          	auipc	ra,0x0
    800017d0:	944080e7          	jalr	-1724(ra) # 80001110 <_ZN6Thread13switchContextEPNS_7ContextES1_>
    }
}
    800017d4:	01813083          	ld	ra,24(sp)
    800017d8:	01013403          	ld	s0,16(sp)
    800017dc:	00813483          	ld	s1,8(sp)
    800017e0:	02010113          	addi	sp,sp,32
    800017e4:	00008067          	ret

00000000800017e8 <_ZN6Thread5yieldEv>:
void Thread::yield() {
    800017e8:	ff010113          	addi	sp,sp,-16
    800017ec:	00113423          	sd	ra,8(sp)
    800017f0:	00813023          	sd	s0,0(sp)
    800017f4:	01010413          	addi	s0,sp,16
    Riscv::pushAllRegs();
    800017f8:	00000097          	auipc	ra,0x0
    800017fc:	92c080e7          	jalr	-1748(ra) # 80001124 <_ZN5Riscv11pushAllRegsEv>
    Thread::dispatch();
    80001800:	00000097          	auipc	ra,0x0
    80001804:	f1c080e7          	jalr	-228(ra) # 8000171c <_ZN6Thread8dispatchEv>
     Riscv::popAllRegs();
    80001808:	00000097          	auipc	ra,0x0
    8000180c:	998080e7          	jalr	-1640(ra) # 800011a0 <_ZN5Riscv10popAllRegsEv>
}
    80001810:	00813083          	ld	ra,8(sp)
    80001814:	00013403          	ld	s0,0(sp)
    80001818:	01010113          	addi	sp,sp,16
    8000181c:	00008067          	ret

0000000080001820 <_Z11printStringPKc>:

#include "../h/printer.h"
#include "../lib/console.h"

void printString(char const *string)
{
    80001820:	fe010113          	addi	sp,sp,-32
    80001824:	00113c23          	sd	ra,24(sp)
    80001828:	00813823          	sd	s0,16(sp)
    8000182c:	00913423          	sd	s1,8(sp)
    80001830:	02010413          	addi	s0,sp,32
    80001834:	00050493          	mv	s1,a0
    while (*string != '\0')
    80001838:	0004c503          	lbu	a0,0(s1)
    8000183c:	00050a63          	beqz	a0,80001850 <_Z11printStringPKc+0x30>
    {
        __putc(*string);
    80001840:	00003097          	auipc	ra,0x3
    80001844:	8d0080e7          	jalr	-1840(ra) # 80004110 <__putc>
        string++;
    80001848:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000184c:	fedff06f          	j	80001838 <_Z11printStringPKc+0x18>
    }
}
    80001850:	01813083          	ld	ra,24(sp)
    80001854:	01013403          	ld	s0,16(sp)
    80001858:	00813483          	ld	s1,8(sp)
    8000185c:	02010113          	addi	sp,sp,32
    80001860:	00008067          	ret

0000000080001864 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001864:	fd010113          	addi	sp,sp,-48
    80001868:	02113423          	sd	ra,40(sp)
    8000186c:	02813023          	sd	s0,32(sp)
    80001870:	00913c23          	sd	s1,24(sp)
    80001874:	03010413          	addi	s0,sp,48
        neg = 1;
        x = -integer;
    }
    else
    {
        x = integer;
    80001878:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    8000187c:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001880:	00a00613          	li	a2,10
    80001884:	02c5773b          	remuw	a4,a0,a2
    80001888:	02071693          	slli	a3,a4,0x20
    8000188c:	0206d693          	srli	a3,a3,0x20
    80001890:	00003717          	auipc	a4,0x3
    80001894:	7e870713          	addi	a4,a4,2024 # 80005078 <_ZZ12printIntegermE6digits>
    80001898:	00d70733          	add	a4,a4,a3
    8000189c:	00074703          	lbu	a4,0(a4)
    800018a0:	fe040693          	addi	a3,s0,-32
    800018a4:	009687b3          	add	a5,a3,s1
    800018a8:	0014849b          	addiw	s1,s1,1
    800018ac:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    800018b0:	0005071b          	sext.w	a4,a0
    800018b4:	02c5553b          	divuw	a0,a0,a2
    800018b8:	00900793          	li	a5,9
    800018bc:	fce7e2e3          	bltu	a5,a4,80001880 <_Z12printIntegerm+0x1c>

    if (neg)
        buf[i++] = '-';

    while (--i >= 0)
    800018c0:	fff4849b          	addiw	s1,s1,-1
    800018c4:	0004ce63          	bltz	s1,800018e0 <_Z12printIntegerm+0x7c>
        __putc(buf[i]);
    800018c8:	fe040793          	addi	a5,s0,-32
    800018cc:	009787b3          	add	a5,a5,s1
    800018d0:	ff07c503          	lbu	a0,-16(a5)
    800018d4:	00003097          	auipc	ra,0x3
    800018d8:	83c080e7          	jalr	-1988(ra) # 80004110 <__putc>
    800018dc:	fe5ff06f          	j	800018c0 <_Z12printIntegerm+0x5c>
    800018e0:	02813083          	ld	ra,40(sp)
    800018e4:	02013403          	ld	s0,32(sp)
    800018e8:	01813483          	ld	s1,24(sp)
    800018ec:	03010113          	addi	sp,sp,48
    800018f0:	00008067          	ret

00000000800018f4 <_ZN9Scheduler3putEP6Thread>:
#include "../h/Scheduler.h"
#include "../h/Thread.h"
void Scheduler::put(Thread* t) {
    800018f4:	ff010113          	addi	sp,sp,-16
    800018f8:	00813423          	sd	s0,8(sp)
    800018fc:	01010413          	addi	s0,sp,16
    if (!t) return;
    80001900:	00058e63          	beqz	a1,8000191c <_ZN9Scheduler3putEP6Thread+0x28>
    t->next = nullptr;
    80001904:	0005b023          	sd	zero,0(a1)

    if (!head) {
    80001908:	00053783          	ld	a5,0(a0)
    8000190c:	00078e63          	beqz	a5,80001928 <_ZN9Scheduler3putEP6Thread+0x34>
        head = t;
    } else {
        tail->next = t;
    80001910:	00853783          	ld	a5,8(a0)
    80001914:	00b7b023          	sd	a1,0(a5)
    }
    tail = t;
    80001918:	00b53423          	sd	a1,8(a0)
}
    8000191c:	00813403          	ld	s0,8(sp)
    80001920:	01010113          	addi	sp,sp,16
    80001924:	00008067          	ret
        head = t;
    80001928:	00b53023          	sd	a1,0(a0)
    8000192c:	fedff06f          	j	80001918 <_ZN9Scheduler3putEP6Thread+0x24>

0000000080001930 <_ZN9Scheduler3getEv>:

Thread* Scheduler::get() {
    80001930:	ff010113          	addi	sp,sp,-16
    80001934:	00813423          	sd	s0,8(sp)
    80001938:	01010413          	addi	s0,sp,16
    8000193c:	00050793          	mv	a5,a0
    if (!head) {
    80001940:	00053503          	ld	a0,0(a0)
    80001944:	00050a63          	beqz	a0,80001958 <_ZN9Scheduler3getEv+0x28>
        return nullptr;
    }

    Thread* t = head;
    head = head->next;
    80001948:	00053703          	ld	a4,0(a0)
    8000194c:	00e7b023          	sd	a4,0(a5)

    if (!head) {
    80001950:	00070a63          	beqz	a4,80001964 <_ZN9Scheduler3getEv+0x34>
        tail = nullptr;
    }

    t->next = nullptr;
    80001954:	00053023          	sd	zero,0(a0)
    return t;
    80001958:	00813403          	ld	s0,8(sp)
    8000195c:	01010113          	addi	sp,sp,16
    80001960:	00008067          	ret
        tail = nullptr;
    80001964:	0007b423          	sd	zero,8(a5)
    80001968:	fedff06f          	j	80001954 <_ZN9Scheduler3getEv+0x24>

000000008000196c <main>:
#include "../h/syscall_c.h"
#include  "../h/riscv.h"
#include "../h/Thread.h"
#include  "../h/workers.h"
#include "../h/printer.h"
int main() {
    8000196c:	fc010113          	addi	sp,sp,-64
    80001970:	02113c23          	sd	ra,56(sp)
    80001974:	02813823          	sd	s0,48(sp)
    80001978:	02913423          	sd	s1,40(sp)
    8000197c:	03213023          	sd	s2,32(sp)
    80001980:	04010413          	addi	s0,sp,64
    Thread* corut[3];

    corut[0] = Thread::createThread(nullptr);
    80001984:	00000513          	li	a0,0
    80001988:	00000097          	auipc	ra,0x0
    8000198c:	c98080e7          	jalr	-872(ra) # 80001620 <_ZN6Thread12createThreadEPFvvE>
    80001990:	fca43423          	sd	a0,-56(s0)

    Thread::running = corut[0];
    80001994:	00004797          	auipc	a5,0x4
    80001998:	e2c7b783          	ld	a5,-468(a5) # 800057c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000199c:	00a7b023          	sd	a0,0(a5)

    corut[1] = Thread::createThread(workerBodyA);
    800019a0:	00004517          	auipc	a0,0x4
    800019a4:	e1053503          	ld	a0,-496(a0) # 800057b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	c78080e7          	jalr	-904(ra) # 80001620 <_ZN6Thread12createThreadEPFvvE>
    800019b0:	fca43823          	sd	a0,-48(s0)
    printString("Cort a created");
    800019b4:	00003517          	auipc	a0,0x3
    800019b8:	6d450513          	addi	a0,a0,1748 # 80005088 <_ZZ12printIntegermE6digits+0x10>
    800019bc:	00000097          	auipc	ra,0x0
    800019c0:	e64080e7          	jalr	-412(ra) # 80001820 <_Z11printStringPKc>
    corut[2] = Thread::createThread(workerBodyB);
    800019c4:	00004517          	auipc	a0,0x4
    800019c8:	de453503          	ld	a0,-540(a0) # 800057a8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	c54080e7          	jalr	-940(ra) # 80001620 <_ZN6Thread12createThreadEPFvvE>
    800019d4:	fca43c23          	sd	a0,-40(s0)
    printString("Cort b created");
    800019d8:	00003517          	auipc	a0,0x3
    800019dc:	6c050513          	addi	a0,a0,1728 # 80005098 <_ZZ12printIntegermE6digits+0x20>
    800019e0:	00000097          	auipc	ra,0x0
    800019e4:	e40080e7          	jalr	-448(ra) # 80001820 <_Z11printStringPKc>
    800019e8:	00c0006f          	j	800019f4 <main+0x88>
    while (!(corut[1]->isFinished() && corut[2] -> isFinished()))Thread::yield();
    800019ec:	00000097          	auipc	ra,0x0
    800019f0:	dfc080e7          	jalr	-516(ra) # 800017e8 <_ZN6Thread5yieldEv>
    800019f4:	fd043783          	ld	a5,-48(s0)
    bool isFinished(){return finished;};
    800019f8:	0287c783          	lbu	a5,40(a5)
    800019fc:	fe0788e3          	beqz	a5,800019ec <main+0x80>
    80001a00:	fd843783          	ld	a5,-40(s0)
    80001a04:	0287c783          	lbu	a5,40(a5)
    80001a08:	fe0782e3          	beqz	a5,800019ec <main+0x80>
    80001a0c:	fc840493          	addi	s1,s0,-56
    80001a10:	0140006f          	j	80001a24 <main+0xb8>

    for (auto& cort : corut) {delete cort;}
    80001a14:	00090513          	mv	a0,s2
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	8c8080e7          	jalr	-1848(ra) # 800012e0 <_ZdlPv>
    80001a20:	00848493          	addi	s1,s1,8
    80001a24:	fe040793          	addi	a5,s0,-32
    80001a28:	02f48063          	beq	s1,a5,80001a48 <main+0xdc>
    80001a2c:	0004b903          	ld	s2,0(s1)
    80001a30:	fe0908e3          	beqz	s2,80001a20 <main+0xb4>
    ~Thread() {delete[] stack;};
    80001a34:	01093503          	ld	a0,16(s2)
    80001a38:	fc050ee3          	beqz	a0,80001a14 <main+0xa8>
    80001a3c:	00000097          	auipc	ra,0x0
    80001a40:	8cc080e7          	jalr	-1844(ra) # 80001308 <_ZdaPv>
    80001a44:	fd1ff06f          	j	80001a14 <main+0xa8>

    printString("Finished");
    80001a48:	00003517          	auipc	a0,0x3
    80001a4c:	66050513          	addi	a0,a0,1632 # 800050a8 <_ZZ12printIntegermE6digits+0x30>
    80001a50:	00000097          	auipc	ra,0x0
    80001a54:	dd0080e7          	jalr	-560(ra) # 80001820 <_Z11printStringPKc>

    return 0;


}
    80001a58:	00000513          	li	a0,0
    80001a5c:	03813083          	ld	ra,56(sp)
    80001a60:	03013403          	ld	s0,48(sp)
    80001a64:	02813483          	ld	s1,40(sp)
    80001a68:	02013903          	ld	s2,32(sp)
    80001a6c:	04010113          	addi	sp,sp,64
    80001a70:	00008067          	ret

0000000080001a74 <_ZN5Riscv11handleEcallEPm>:
#include "../h/riscv.h"
#include "../lib/console.h"
#include "../h/MemoryAllocator.h"

void Riscv::handleEcall(uint64* regs) {
    80001a74:	fc010113          	addi	sp,sp,-64
    80001a78:	02113c23          	sd	ra,56(sp)
    80001a7c:	02813823          	sd	s0,48(sp)
    80001a80:	02913423          	sd	s1,40(sp)
    80001a84:	03213023          	sd	s2,32(sp)
    80001a88:	01313c23          	sd	s3,24(sp)
    80001a8c:	04010413          	addi	s0,sp,64
    80001a90:	00050493          	mv	s1,a0
    // regs[10] je x10 (a0), regs[11] je x11 (a1)
    uint64 a0_val = regs[10];
    80001a94:	05053703          	ld	a4,80(a0)
    uint64 a1_val = regs[11];
    80001a98:	05853503          	ld	a0,88(a0)
        __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001a9c:	141027f3          	csrr	a5,sepc
    80001aa0:	fcf43423          	sd	a5,-56(s0)
        return sepc;
    80001aa4:	fc843783          	ld	a5,-56(s0)

    uint64 sepc = r_sepc() + 4;
    80001aa8:	00478913          	addi	s2,a5,4
        __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001aac:	100027f3          	csrr	a5,sstatus
    80001ab0:	fcf43023          	sd	a5,-64(s0)
        return sstatus;
    80001ab4:	fc043983          	ld	s3,-64(s0)
    uint64 sstatus = r_sstatus();

    switch(a0_val) {
    80001ab8:	00100793          	li	a5,1
    80001abc:	02f70863          	beq	a4,a5,80001aec <_ZN5Riscv11handleEcallEPm+0x78>
    80001ac0:	00200793          	li	a5,2
    80001ac4:	02f70e63          	beq	a4,a5,80001b00 <_ZN5Riscv11handleEcallEPm+0x8c>
        __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001ac8:	10099073          	csrw	sstatus,s3
        __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001acc:	14191073          	csrw	sepc,s2
            break;
    }

    w_sstatus(sstatus);
    w_sepc(sepc);
}
    80001ad0:	03813083          	ld	ra,56(sp)
    80001ad4:	03013403          	ld	s0,48(sp)
    80001ad8:	02813483          	ld	s1,40(sp)
    80001adc:	02013903          	ld	s2,32(sp)
    80001ae0:	01813983          	ld	s3,24(sp)
    80001ae4:	04010113          	addi	sp,sp,64
    80001ae8:	00008067          	ret
            void* result = MemoryAllocator::kmalloc(size_in_bytes);
    80001aec:	00651513          	slli	a0,a0,0x6
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	110080e7          	jalr	272(ra) # 80001c00 <_ZN15MemoryAllocator7kmallocEm>
            regs[10] = (uint64)result;
    80001af8:	04a4b823          	sd	a0,80(s1)
            break;
    80001afc:	fcdff06f          	j	80001ac8 <_ZN5Riscv11handleEcallEPm+0x54>
            int result = MemoryAllocator::kfree(ptr);
    80001b00:	00000097          	auipc	ra,0x0
    80001b04:	22c080e7          	jalr	556(ra) # 80001d2c <_ZN15MemoryAllocator5kfreeEPv>
            regs[10] = (uint64)result;
    80001b08:	04a4b823          	sd	a0,80(s1)
            break;
    80001b0c:	fbdff06f          	j	80001ac8 <_ZN5Riscv11handleEcallEPm+0x54>

0000000080001b10 <_ZN5Riscv13handleConsoleEv>:

void Riscv::handleConsole() {
    80001b10:	ff010113          	addi	sp,sp,-16
    80001b14:	00813423          	sd	s0,8(sp)
    80001b18:	01010413          	addi	s0,sp,16
}
    80001b1c:	00813403          	ld	s0,8(sp)
    80001b20:	01010113          	addi	sp,sp,16
    80001b24:	00008067          	ret

0000000080001b28 <_ZN5Riscv11handleTimerEv>:

void Riscv::handleTimer() {
    80001b28:	ff010113          	addi	sp,sp,-16
    80001b2c:	00813423          	sd	s0,8(sp)
    80001b30:	01010413          	addi	s0,sp,16
}
    80001b34:	00813403          	ld	s0,8(sp)
    80001b38:	01010113          	addi	sp,sp,16
    80001b3c:	00008067          	ret

0000000080001b40 <_ZN5Riscv13unknownsCauseEv>:

void Riscv::unknownsCause() {
    80001b40:	ff010113          	addi	sp,sp,-16
    80001b44:	00813423          	sd	s0,8(sp)
    80001b48:	01010413          	addi	s0,sp,16
}
    80001b4c:	00813403          	ld	s0,8(sp)
    80001b50:	01010113          	addi	sp,sp,16
    80001b54:	00008067          	ret

0000000080001b58 <_ZN5Riscv20handleSupervisorTrapEPm>:

void Riscv::handleSupervisorTrap(uint64* regs) {
    80001b58:	fe010113          	addi	sp,sp,-32
    80001b5c:	00113c23          	sd	ra,24(sp)
    80001b60:	00813823          	sd	s0,16(sp)
    80001b64:	02010413          	addi	s0,sp,32
        __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001b68:	142027f3          	csrr	a5,scause
    80001b6c:	fef43423          	sd	a5,-24(s0)
        return scause;
    80001b70:	fe843783          	ld	a5,-24(s0)

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
    80001b74:	ff878793          	addi	a5,a5,-8
    80001b78:	00100713          	li	a4,1
    80001b7c:	00f77a63          	bgeu	a4,a5,80001b90 <_ZN5Riscv20handleSupervisorTrapEPm+0x38>
    } else if (scause == 0x8000000000000001UL) {
        handleTimer();
    } else {
        unknownsCause();
    }
}
    80001b80:	01813083          	ld	ra,24(sp)
    80001b84:	01013403          	ld	s0,16(sp)
    80001b88:	02010113          	addi	sp,sp,32
    80001b8c:	00008067          	ret
        handleEcall(regs);
    80001b90:	00000097          	auipc	ra,0x0
    80001b94:	ee4080e7          	jalr	-284(ra) # 80001a74 <_ZN5Riscv11handleEcallEPm>
}
    80001b98:	fe9ff06f          	j	80001b80 <_ZN5Riscv20handleSupervisorTrapEPm+0x28>

0000000080001b9c <_ZN15MemoryAllocator4initEv>:
    }

    return address;
}

void MemoryAllocator::init() {
    80001b9c:	ff010113          	addi	sp,sp,-16
    80001ba0:	00813423          	sd	s0,8(sp)
    80001ba4:	01010413          	addi	s0,sp,16
    size_t start = (size_t)HEAP_START_ADDR;
    80001ba8:	00004797          	auipc	a5,0x4
    80001bac:	bf87b783          	ld	a5,-1032(a5) # 800057a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001bb0:	0007b783          	ld	a5,0(a5)
    size_t end = (size_t)HEAP_END_ADDR;
    80001bb4:	00004717          	auipc	a4,0x4
    80001bb8:	c1473703          	ld	a4,-1004(a4) # 800057c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001bbc:	00073703          	ld	a4,0(a4)

    start = start % MEM_BLOCK_SIZE == 0 ? start :   (start - start % MEM_BLOCK_SIZE) + MEM_BLOCK_SIZE;
    80001bc0:	03f7f693          	andi	a3,a5,63
    80001bc4:	00068663          	beqz	a3,80001bd0 <_ZN15MemoryAllocator4initEv+0x34>
    80001bc8:	fc07f793          	andi	a5,a5,-64
    80001bcc:	04078793          	addi	a5,a5,64
    end = end % MEM_BLOCK_SIZE == 0 ? end : (end - end % MEM_BLOCK_SIZE);
    80001bd0:	03f77693          	andi	a3,a4,63
    80001bd4:	00068463          	beqz	a3,80001bdc <_ZN15MemoryAllocator4initEv+0x40>
    80001bd8:	fc077713          	andi	a4,a4,-64

    head = (segmentHeader*) start;
    80001bdc:	00004697          	auipc	a3,0x4
    80001be0:	c4f6ba23          	sd	a5,-940(a3) # 80005830 <_ZN15MemoryAllocator4headE>
    head->size = end - start - MEM_BLOCK_SIZE;
    80001be4:	40f70733          	sub	a4,a4,a5
    80001be8:	fc070713          	addi	a4,a4,-64
    80001bec:	00e7b423          	sd	a4,8(a5)
    head -> next = nullptr;
    80001bf0:	0007b023          	sd	zero,0(a5)
}
    80001bf4:	00813403          	ld	s0,8(sp)
    80001bf8:	01010113          	addi	sp,sp,16
    80001bfc:	00008067          	ret

0000000080001c00 <_ZN15MemoryAllocator7kmallocEm>:
void *MemoryAllocator::kmalloc(size_t size) {  // argument is in bytes
    80001c00:	fe010113          	addi	sp,sp,-32
    80001c04:	00113c23          	sd	ra,24(sp)
    80001c08:	00813823          	sd	s0,16(sp)
    80001c0c:	00913423          	sd	s1,8(sp)
    80001c10:	02010413          	addi	s0,sp,32
    80001c14:	00050493          	mv	s1,a0
    if(!isinit){
    80001c18:	00004797          	auipc	a5,0x4
    80001c1c:	c207c783          	lbu	a5,-992(a5) # 80005838 <_ZN15MemoryAllocator6isinitE>
    80001c20:	02078863          	beqz	a5,80001c50 <_ZN15MemoryAllocator7kmallocEm+0x50>
    size_t bytes_needed = (size_t)((size + MEM_BLOCK_SIZE - 1 ) / MEM_BLOCK_SIZE)*MEM_BLOCK_SIZE;
    80001c24:	03f48713          	addi	a4,s1,63
    80001c28:	fc077713          	andi	a4,a4,-64
    segmentHeader* curr = head;
    80001c2c:	00004797          	auipc	a5,0x4
    80001c30:	c047b783          	ld	a5,-1020(a5) # 80005830 <_ZN15MemoryAllocator4headE>
    segmentHeader* prev = nullptr;
    80001c34:	00000613          	li	a2,0
    for(;curr; curr = curr -> next){
    80001c38:	02078c63          	beqz	a5,80001c70 <_ZN15MemoryAllocator7kmallocEm+0x70>
        if(curr -> size >= bytes_needed) {
    80001c3c:	0087b683          	ld	a3,8(a5)
    80001c40:	02e6f463          	bgeu	a3,a4,80001c68 <_ZN15MemoryAllocator7kmallocEm+0x68>
        prev = curr;
    80001c44:	00078613          	mv	a2,a5
    for(;curr; curr = curr -> next){
    80001c48:	0007b783          	ld	a5,0(a5)
    80001c4c:	fedff06f          	j	80001c38 <_ZN15MemoryAllocator7kmallocEm+0x38>
        isinit = true;
    80001c50:	00100793          	li	a5,1
    80001c54:	00004717          	auipc	a4,0x4
    80001c58:	bef70223          	sb	a5,-1052(a4) # 80005838 <_ZN15MemoryAllocator6isinitE>
        init();
    80001c5c:	00000097          	auipc	ra,0x0
    80001c60:	f40080e7          	jalr	-192(ra) # 80001b9c <_ZN15MemoryAllocator4initEv>
    80001c64:	fc1ff06f          	j	80001c24 <_ZN15MemoryAllocator7kmallocEm+0x24>
            address = (void*) ((size_t) curr + MEM_BLOCK_SIZE);
    80001c68:	04078513          	addi	a0,a5,64
            break;
    80001c6c:	0080006f          	j	80001c74 <_ZN15MemoryAllocator7kmallocEm+0x74>
    void* address = nullptr;
    80001c70:	00078513          	mv	a0,a5
    if(!curr) return nullptr;
    80001c74:	06078063          	beqz	a5,80001cd4 <_ZN15MemoryAllocator7kmallocEm+0xd4>
    size_t remaining_bytes = curr->size - bytes_needed;
    80001c78:	0087b683          	ld	a3,8(a5)
    80001c7c:	40e686b3          	sub	a3,a3,a4
    if(remaining_bytes >= 2*MEM_BLOCK_SIZE){  //there is enough space for header and minimum one block
    80001c80:	07f00593          	li	a1,127
    80001c84:	02d5fe63          	bgeu	a1,a3,80001cc0 <_ZN15MemoryAllocator7kmallocEm+0xc0>
        next_free_node = (segmentHeader*)((char*)curr + bytes_needed + MEM_BLOCK_SIZE);
    80001c88:	04070593          	addi	a1,a4,64
    80001c8c:	00b785b3          	add	a1,a5,a1
        next_free_node -> next = curr -> next;
    80001c90:	0007b803          	ld	a6,0(a5)
    80001c94:	0105b023          	sd	a6,0(a1)
        next_free_node -> size = remaining_bytes - MEM_BLOCK_SIZE;
    80001c98:	fc068693          	addi	a3,a3,-64
    80001c9c:	00d5b423          	sd	a3,8(a1)
        curr -> size = bytes_needed;
    80001ca0:	00e7b423          	sd	a4,8(a5)
    if(prev){
    80001ca4:	02060263          	beqz	a2,80001cc8 <_ZN15MemoryAllocator7kmallocEm+0xc8>
        prev -> next = next_free_node;
    80001ca8:	00b63023          	sd	a1,0(a2)
}
    80001cac:	01813083          	ld	ra,24(sp)
    80001cb0:	01013403          	ld	s0,16(sp)
    80001cb4:	00813483          	ld	s1,8(sp)
    80001cb8:	02010113          	addi	sp,sp,32
    80001cbc:	00008067          	ret
        next_free_node = curr -> next;
    80001cc0:	0007b583          	ld	a1,0(a5)
    80001cc4:	fe1ff06f          	j	80001ca4 <_ZN15MemoryAllocator7kmallocEm+0xa4>
        head = next_free_node;
    80001cc8:	00004797          	auipc	a5,0x4
    80001ccc:	b6b7b423          	sd	a1,-1176(a5) # 80005830 <_ZN15MemoryAllocator4headE>
    80001cd0:	fddff06f          	j	80001cac <_ZN15MemoryAllocator7kmallocEm+0xac>
    if(!curr) return nullptr;
    80001cd4:	00078513          	mv	a0,a5
    80001cd8:	fd5ff06f          	j	80001cac <_ZN15MemoryAllocator7kmallocEm+0xac>

0000000080001cdc <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE>:



void MemoryAllocator::tryMerge(segmentHeader *block) {
    80001cdc:	ff010113          	addi	sp,sp,-16
    80001ce0:	00813423          	sd	s0,8(sp)
    80001ce4:	01010413          	addi	s0,sp,16
    if(!block) return;
    80001ce8:	00050e63          	beqz	a0,80001d04 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x28>

    segmentHeader* next_seg = block -> next;
    80001cec:	00053783          	ld	a5,0(a0)

    if(!next_seg) return;
    80001cf0:	00078a63          	beqz	a5,80001d04 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x28>

    if((char*) block +  MEM_BLOCK_SIZE + block -> size == (char*) next_seg){
    80001cf4:	00853683          	ld	a3,8(a0)
    80001cf8:	04068713          	addi	a4,a3,64
    80001cfc:	00e50733          	add	a4,a0,a4
    80001d00:	00f70863          	beq	a4,a5,80001d10 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x34>
        block -> next = next_seg -> next;
        block -> size += next_seg -> size +  MEM_BLOCK_SIZE;
    }
}
    80001d04:	00813403          	ld	s0,8(sp)
    80001d08:	01010113          	addi	sp,sp,16
    80001d0c:	00008067          	ret
        block -> next = next_seg -> next;
    80001d10:	0007b703          	ld	a4,0(a5)
    80001d14:	00e53023          	sd	a4,0(a0)
        block -> size += next_seg -> size +  MEM_BLOCK_SIZE;
    80001d18:	0087b783          	ld	a5,8(a5)
    80001d1c:	00f686b3          	add	a3,a3,a5
    80001d20:	04068693          	addi	a3,a3,64
    80001d24:	00d53423          	sd	a3,8(a0)
    80001d28:	fddff06f          	j	80001d04 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x28>

0000000080001d2c <_ZN15MemoryAllocator5kfreeEPv>:
int MemoryAllocator::kfree(void *addr) {
    80001d2c:	fe010113          	addi	sp,sp,-32
    80001d30:	00113c23          	sd	ra,24(sp)
    80001d34:	00813823          	sd	s0,16(sp)
    80001d38:	00913423          	sd	s1,8(sp)
    80001d3c:	01213023          	sd	s2,0(sp)
    80001d40:	02010413          	addi	s0,sp,32
    80001d44:	00050913          	mv	s2,a0
    if(!isinit){ isinit = true; init(); }
    80001d48:	00004797          	auipc	a5,0x4
    80001d4c:	af07c783          	lbu	a5,-1296(a5) # 80005838 <_ZN15MemoryAllocator6isinitE>
    80001d50:	04078a63          	beqz	a5,80001da4 <_ZN15MemoryAllocator5kfreeEPv+0x78>
    if(!addr) return -1;
    80001d54:	0a090c63          	beqz	s2,80001e0c <_ZN15MemoryAllocator5kfreeEPv+0xe0>
    segmentHeader* newFree = (segmentHeader*)((char*)addr - MEM_BLOCK_SIZE);
    80001d58:	fc090513          	addi	a0,s2,-64
    if((size_t)newFree < (size_t)HEAP_START_ADDR || (size_t)newFree >= (size_t)HEAP_END_ADDR) {
    80001d5c:	00004797          	auipc	a5,0x4
    80001d60:	a447b783          	ld	a5,-1468(a5) # 800057a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001d64:	0007b783          	ld	a5,0(a5)
    80001d68:	0af56663          	bltu	a0,a5,80001e14 <_ZN15MemoryAllocator5kfreeEPv+0xe8>
    80001d6c:	00004797          	auipc	a5,0x4
    80001d70:	a5c7b783          	ld	a5,-1444(a5) # 800057c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d74:	0007b783          	ld	a5,0(a5)
    80001d78:	0af57263          	bgeu	a0,a5,80001e1c <_ZN15MemoryAllocator5kfreeEPv+0xf0>
    segmentHeader* curr = head;
    80001d7c:	00004717          	auipc	a4,0x4
    80001d80:	ab473703          	ld	a4,-1356(a4) # 80005830 <_ZN15MemoryAllocator4headE>
    80001d84:	00070793          	mv	a5,a4
    segmentHeader* prev = nullptr;
    80001d88:	00000493          	li	s1,0
    while(curr) {
    80001d8c:	02078863          	beqz	a5,80001dbc <_ZN15MemoryAllocator5kfreeEPv+0x90>
        if(curr == newFree) {
    80001d90:	08a78a63          	beq	a5,a0,80001e24 <_ZN15MemoryAllocator5kfreeEPv+0xf8>
        if(curr > newFree) break;
    80001d94:	02f56463          	bltu	a0,a5,80001dbc <_ZN15MemoryAllocator5kfreeEPv+0x90>
        prev = curr;
    80001d98:	00078493          	mv	s1,a5
        curr = curr->next;
    80001d9c:	0007b783          	ld	a5,0(a5)
    while(curr) {
    80001da0:	fedff06f          	j	80001d8c <_ZN15MemoryAllocator5kfreeEPv+0x60>
    if(!isinit){ isinit = true; init(); }
    80001da4:	00100793          	li	a5,1
    80001da8:	00004717          	auipc	a4,0x4
    80001dac:	a8f70823          	sb	a5,-1392(a4) # 80005838 <_ZN15MemoryAllocator6isinitE>
    80001db0:	00000097          	auipc	ra,0x0
    80001db4:	dec080e7          	jalr	-532(ra) # 80001b9c <_ZN15MemoryAllocator4initEv>
    80001db8:	f9dff06f          	j	80001d54 <_ZN15MemoryAllocator5kfreeEPv+0x28>
    if(prev) {
    80001dbc:	04048063          	beqz	s1,80001dfc <_ZN15MemoryAllocator5kfreeEPv+0xd0>
        newFree->next = prev->next;
    80001dc0:	0004b783          	ld	a5,0(s1)
    80001dc4:	fcf93023          	sd	a5,-64(s2)
        prev->next = newFree;
    80001dc8:	00a4b023          	sd	a0,0(s1)
    tryMerge(newFree);
    80001dcc:	00000097          	auipc	ra,0x0
    80001dd0:	f10080e7          	jalr	-240(ra) # 80001cdc <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE>
    tryMerge(prev);
    80001dd4:	00048513          	mv	a0,s1
    80001dd8:	00000097          	auipc	ra,0x0
    80001ddc:	f04080e7          	jalr	-252(ra) # 80001cdc <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE>
    return 0;
    80001de0:	00000513          	li	a0,0
}
    80001de4:	01813083          	ld	ra,24(sp)
    80001de8:	01013403          	ld	s0,16(sp)
    80001dec:	00813483          	ld	s1,8(sp)
    80001df0:	00013903          	ld	s2,0(sp)
    80001df4:	02010113          	addi	sp,sp,32
    80001df8:	00008067          	ret
        newFree->next = head;
    80001dfc:	fce93023          	sd	a4,-64(s2)
        head = newFree;
    80001e00:	00004797          	auipc	a5,0x4
    80001e04:	a2a7b823          	sd	a0,-1488(a5) # 80005830 <_ZN15MemoryAllocator4headE>
    80001e08:	fc5ff06f          	j	80001dcc <_ZN15MemoryAllocator5kfreeEPv+0xa0>
    if(!addr) return -1;
    80001e0c:	fff00513          	li	a0,-1
    80001e10:	fd5ff06f          	j	80001de4 <_ZN15MemoryAllocator5kfreeEPv+0xb8>
        return -1;
    80001e14:	fff00513          	li	a0,-1
    80001e18:	fcdff06f          	j	80001de4 <_ZN15MemoryAllocator5kfreeEPv+0xb8>
    80001e1c:	fff00513          	li	a0,-1
    80001e20:	fc5ff06f          	j	80001de4 <_ZN15MemoryAllocator5kfreeEPv+0xb8>
            return -1;
    80001e24:	fff00513          	li	a0,-1
    80001e28:	fbdff06f          	j	80001de4 <_ZN15MemoryAllocator5kfreeEPv+0xb8>

0000000080001e2c <start>:
    80001e2c:	ff010113          	addi	sp,sp,-16
    80001e30:	00813423          	sd	s0,8(sp)
    80001e34:	01010413          	addi	s0,sp,16
    80001e38:	300027f3          	csrr	a5,mstatus
    80001e3c:	ffffe737          	lui	a4,0xffffe
    80001e40:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7d4f>
    80001e44:	00e7f7b3          	and	a5,a5,a4
    80001e48:	00001737          	lui	a4,0x1
    80001e4c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001e50:	00e7e7b3          	or	a5,a5,a4
    80001e54:	30079073          	csrw	mstatus,a5
    80001e58:	00000797          	auipc	a5,0x0
    80001e5c:	16078793          	addi	a5,a5,352 # 80001fb8 <system_main>
    80001e60:	34179073          	csrw	mepc,a5
    80001e64:	00000793          	li	a5,0
    80001e68:	18079073          	csrw	satp,a5
    80001e6c:	000107b7          	lui	a5,0x10
    80001e70:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001e74:	30279073          	csrw	medeleg,a5
    80001e78:	30379073          	csrw	mideleg,a5
    80001e7c:	104027f3          	csrr	a5,sie
    80001e80:	2227e793          	ori	a5,a5,546
    80001e84:	10479073          	csrw	sie,a5
    80001e88:	fff00793          	li	a5,-1
    80001e8c:	00a7d793          	srli	a5,a5,0xa
    80001e90:	3b079073          	csrw	pmpaddr0,a5
    80001e94:	00f00793          	li	a5,15
    80001e98:	3a079073          	csrw	pmpcfg0,a5
    80001e9c:	f14027f3          	csrr	a5,mhartid
    80001ea0:	0200c737          	lui	a4,0x200c
    80001ea4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001ea8:	0007869b          	sext.w	a3,a5
    80001eac:	00269713          	slli	a4,a3,0x2
    80001eb0:	000f4637          	lui	a2,0xf4
    80001eb4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001eb8:	00d70733          	add	a4,a4,a3
    80001ebc:	0037979b          	slliw	a5,a5,0x3
    80001ec0:	020046b7          	lui	a3,0x2004
    80001ec4:	00d787b3          	add	a5,a5,a3
    80001ec8:	00c585b3          	add	a1,a1,a2
    80001ecc:	00371693          	slli	a3,a4,0x3
    80001ed0:	00004717          	auipc	a4,0x4
    80001ed4:	97070713          	addi	a4,a4,-1680 # 80005840 <timer_scratch>
    80001ed8:	00b7b023          	sd	a1,0(a5)
    80001edc:	00d70733          	add	a4,a4,a3
    80001ee0:	00f73c23          	sd	a5,24(a4)
    80001ee4:	02c73023          	sd	a2,32(a4)
    80001ee8:	34071073          	csrw	mscratch,a4
    80001eec:	00000797          	auipc	a5,0x0
    80001ef0:	6e478793          	addi	a5,a5,1764 # 800025d0 <timervec>
    80001ef4:	30579073          	csrw	mtvec,a5
    80001ef8:	300027f3          	csrr	a5,mstatus
    80001efc:	0087e793          	ori	a5,a5,8
    80001f00:	30079073          	csrw	mstatus,a5
    80001f04:	304027f3          	csrr	a5,mie
    80001f08:	0807e793          	ori	a5,a5,128
    80001f0c:	30479073          	csrw	mie,a5
    80001f10:	f14027f3          	csrr	a5,mhartid
    80001f14:	0007879b          	sext.w	a5,a5
    80001f18:	00078213          	mv	tp,a5
    80001f1c:	30200073          	mret
    80001f20:	00813403          	ld	s0,8(sp)
    80001f24:	01010113          	addi	sp,sp,16
    80001f28:	00008067          	ret

0000000080001f2c <timerinit>:
    80001f2c:	ff010113          	addi	sp,sp,-16
    80001f30:	00813423          	sd	s0,8(sp)
    80001f34:	01010413          	addi	s0,sp,16
    80001f38:	f14027f3          	csrr	a5,mhartid
    80001f3c:	0200c737          	lui	a4,0x200c
    80001f40:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001f44:	0007869b          	sext.w	a3,a5
    80001f48:	00269713          	slli	a4,a3,0x2
    80001f4c:	000f4637          	lui	a2,0xf4
    80001f50:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001f54:	00d70733          	add	a4,a4,a3
    80001f58:	0037979b          	slliw	a5,a5,0x3
    80001f5c:	020046b7          	lui	a3,0x2004
    80001f60:	00d787b3          	add	a5,a5,a3
    80001f64:	00c585b3          	add	a1,a1,a2
    80001f68:	00371693          	slli	a3,a4,0x3
    80001f6c:	00004717          	auipc	a4,0x4
    80001f70:	8d470713          	addi	a4,a4,-1836 # 80005840 <timer_scratch>
    80001f74:	00b7b023          	sd	a1,0(a5)
    80001f78:	00d70733          	add	a4,a4,a3
    80001f7c:	00f73c23          	sd	a5,24(a4)
    80001f80:	02c73023          	sd	a2,32(a4)
    80001f84:	34071073          	csrw	mscratch,a4
    80001f88:	00000797          	auipc	a5,0x0
    80001f8c:	64878793          	addi	a5,a5,1608 # 800025d0 <timervec>
    80001f90:	30579073          	csrw	mtvec,a5
    80001f94:	300027f3          	csrr	a5,mstatus
    80001f98:	0087e793          	ori	a5,a5,8
    80001f9c:	30079073          	csrw	mstatus,a5
    80001fa0:	304027f3          	csrr	a5,mie
    80001fa4:	0807e793          	ori	a5,a5,128
    80001fa8:	30479073          	csrw	mie,a5
    80001fac:	00813403          	ld	s0,8(sp)
    80001fb0:	01010113          	addi	sp,sp,16
    80001fb4:	00008067          	ret

0000000080001fb8 <system_main>:
    80001fb8:	fe010113          	addi	sp,sp,-32
    80001fbc:	00813823          	sd	s0,16(sp)
    80001fc0:	00913423          	sd	s1,8(sp)
    80001fc4:	00113c23          	sd	ra,24(sp)
    80001fc8:	02010413          	addi	s0,sp,32
    80001fcc:	00000097          	auipc	ra,0x0
    80001fd0:	0c4080e7          	jalr	196(ra) # 80002090 <cpuid>
    80001fd4:	00004497          	auipc	s1,0x4
    80001fd8:	80c48493          	addi	s1,s1,-2036 # 800057e0 <started>
    80001fdc:	02050263          	beqz	a0,80002000 <system_main+0x48>
    80001fe0:	0004a783          	lw	a5,0(s1)
    80001fe4:	0007879b          	sext.w	a5,a5
    80001fe8:	fe078ce3          	beqz	a5,80001fe0 <system_main+0x28>
    80001fec:	0ff0000f          	fence
    80001ff0:	00003517          	auipc	a0,0x3
    80001ff4:	0f850513          	addi	a0,a0,248 # 800050e8 <_ZZ12printIntegermE6digits+0x70>
    80001ff8:	00001097          	auipc	ra,0x1
    80001ffc:	a74080e7          	jalr	-1420(ra) # 80002a6c <panic>
    80002000:	00001097          	auipc	ra,0x1
    80002004:	9c8080e7          	jalr	-1592(ra) # 800029c8 <consoleinit>
    80002008:	00001097          	auipc	ra,0x1
    8000200c:	154080e7          	jalr	340(ra) # 8000315c <printfinit>
    80002010:	00003517          	auipc	a0,0x3
    80002014:	02050513          	addi	a0,a0,32 # 80005030 <CONSOLE_STATUS+0x20>
    80002018:	00001097          	auipc	ra,0x1
    8000201c:	ab0080e7          	jalr	-1360(ra) # 80002ac8 <__printf>
    80002020:	00003517          	auipc	a0,0x3
    80002024:	09850513          	addi	a0,a0,152 # 800050b8 <_ZZ12printIntegermE6digits+0x40>
    80002028:	00001097          	auipc	ra,0x1
    8000202c:	aa0080e7          	jalr	-1376(ra) # 80002ac8 <__printf>
    80002030:	00003517          	auipc	a0,0x3
    80002034:	00050513          	mv	a0,a0
    80002038:	00001097          	auipc	ra,0x1
    8000203c:	a90080e7          	jalr	-1392(ra) # 80002ac8 <__printf>
    80002040:	00001097          	auipc	ra,0x1
    80002044:	4a8080e7          	jalr	1192(ra) # 800034e8 <kinit>
    80002048:	00000097          	auipc	ra,0x0
    8000204c:	148080e7          	jalr	328(ra) # 80002190 <trapinit>
    80002050:	00000097          	auipc	ra,0x0
    80002054:	16c080e7          	jalr	364(ra) # 800021bc <trapinithart>
    80002058:	00000097          	auipc	ra,0x0
    8000205c:	5b8080e7          	jalr	1464(ra) # 80002610 <plicinit>
    80002060:	00000097          	auipc	ra,0x0
    80002064:	5d8080e7          	jalr	1496(ra) # 80002638 <plicinithart>
    80002068:	00000097          	auipc	ra,0x0
    8000206c:	078080e7          	jalr	120(ra) # 800020e0 <userinit>
    80002070:	0ff0000f          	fence
    80002074:	00100793          	li	a5,1
    80002078:	00003517          	auipc	a0,0x3
    8000207c:	05850513          	addi	a0,a0,88 # 800050d0 <_ZZ12printIntegermE6digits+0x58>
    80002080:	00f4a023          	sw	a5,0(s1)
    80002084:	00001097          	auipc	ra,0x1
    80002088:	a44080e7          	jalr	-1468(ra) # 80002ac8 <__printf>
    8000208c:	0000006f          	j	8000208c <system_main+0xd4>

0000000080002090 <cpuid>:
    80002090:	ff010113          	addi	sp,sp,-16
    80002094:	00813423          	sd	s0,8(sp)
    80002098:	01010413          	addi	s0,sp,16
    8000209c:	00020513          	mv	a0,tp
    800020a0:	00813403          	ld	s0,8(sp)
    800020a4:	0005051b          	sext.w	a0,a0
    800020a8:	01010113          	addi	sp,sp,16
    800020ac:	00008067          	ret

00000000800020b0 <mycpu>:
    800020b0:	ff010113          	addi	sp,sp,-16
    800020b4:	00813423          	sd	s0,8(sp)
    800020b8:	01010413          	addi	s0,sp,16
    800020bc:	00020793          	mv	a5,tp
    800020c0:	00813403          	ld	s0,8(sp)
    800020c4:	0007879b          	sext.w	a5,a5
    800020c8:	00779793          	slli	a5,a5,0x7
    800020cc:	00004517          	auipc	a0,0x4
    800020d0:	7a450513          	addi	a0,a0,1956 # 80006870 <cpus>
    800020d4:	00f50533          	add	a0,a0,a5
    800020d8:	01010113          	addi	sp,sp,16
    800020dc:	00008067          	ret

00000000800020e0 <userinit>:
    800020e0:	ff010113          	addi	sp,sp,-16
    800020e4:	00813423          	sd	s0,8(sp)
    800020e8:	01010413          	addi	s0,sp,16
    800020ec:	00813403          	ld	s0,8(sp)
    800020f0:	01010113          	addi	sp,sp,16
    800020f4:	00000317          	auipc	t1,0x0
    800020f8:	87830067          	jr	-1928(t1) # 8000196c <main>

00000000800020fc <either_copyout>:
    800020fc:	ff010113          	addi	sp,sp,-16
    80002100:	00813023          	sd	s0,0(sp)
    80002104:	00113423          	sd	ra,8(sp)
    80002108:	01010413          	addi	s0,sp,16
    8000210c:	02051663          	bnez	a0,80002138 <either_copyout+0x3c>
    80002110:	00058513          	mv	a0,a1
    80002114:	00060593          	mv	a1,a2
    80002118:	0006861b          	sext.w	a2,a3
    8000211c:	00002097          	auipc	ra,0x2
    80002120:	c58080e7          	jalr	-936(ra) # 80003d74 <__memmove>
    80002124:	00813083          	ld	ra,8(sp)
    80002128:	00013403          	ld	s0,0(sp)
    8000212c:	00000513          	li	a0,0
    80002130:	01010113          	addi	sp,sp,16
    80002134:	00008067          	ret
    80002138:	00003517          	auipc	a0,0x3
    8000213c:	fd850513          	addi	a0,a0,-40 # 80005110 <_ZZ12printIntegermE6digits+0x98>
    80002140:	00001097          	auipc	ra,0x1
    80002144:	92c080e7          	jalr	-1748(ra) # 80002a6c <panic>

0000000080002148 <either_copyin>:
    80002148:	ff010113          	addi	sp,sp,-16
    8000214c:	00813023          	sd	s0,0(sp)
    80002150:	00113423          	sd	ra,8(sp)
    80002154:	01010413          	addi	s0,sp,16
    80002158:	02059463          	bnez	a1,80002180 <either_copyin+0x38>
    8000215c:	00060593          	mv	a1,a2
    80002160:	0006861b          	sext.w	a2,a3
    80002164:	00002097          	auipc	ra,0x2
    80002168:	c10080e7          	jalr	-1008(ra) # 80003d74 <__memmove>
    8000216c:	00813083          	ld	ra,8(sp)
    80002170:	00013403          	ld	s0,0(sp)
    80002174:	00000513          	li	a0,0
    80002178:	01010113          	addi	sp,sp,16
    8000217c:	00008067          	ret
    80002180:	00003517          	auipc	a0,0x3
    80002184:	fb850513          	addi	a0,a0,-72 # 80005138 <_ZZ12printIntegermE6digits+0xc0>
    80002188:	00001097          	auipc	ra,0x1
    8000218c:	8e4080e7          	jalr	-1820(ra) # 80002a6c <panic>

0000000080002190 <trapinit>:
    80002190:	ff010113          	addi	sp,sp,-16
    80002194:	00813423          	sd	s0,8(sp)
    80002198:	01010413          	addi	s0,sp,16
    8000219c:	00813403          	ld	s0,8(sp)
    800021a0:	00003597          	auipc	a1,0x3
    800021a4:	fc058593          	addi	a1,a1,-64 # 80005160 <_ZZ12printIntegermE6digits+0xe8>
    800021a8:	00004517          	auipc	a0,0x4
    800021ac:	74850513          	addi	a0,a0,1864 # 800068f0 <tickslock>
    800021b0:	01010113          	addi	sp,sp,16
    800021b4:	00001317          	auipc	t1,0x1
    800021b8:	5c430067          	jr	1476(t1) # 80003778 <initlock>

00000000800021bc <trapinithart>:
    800021bc:	ff010113          	addi	sp,sp,-16
    800021c0:	00813423          	sd	s0,8(sp)
    800021c4:	01010413          	addi	s0,sp,16
    800021c8:	00000797          	auipc	a5,0x0
    800021cc:	2f878793          	addi	a5,a5,760 # 800024c0 <kernelvec>
    800021d0:	10579073          	csrw	stvec,a5
    800021d4:	00813403          	ld	s0,8(sp)
    800021d8:	01010113          	addi	sp,sp,16
    800021dc:	00008067          	ret

00000000800021e0 <usertrap>:
    800021e0:	ff010113          	addi	sp,sp,-16
    800021e4:	00813423          	sd	s0,8(sp)
    800021e8:	01010413          	addi	s0,sp,16
    800021ec:	00813403          	ld	s0,8(sp)
    800021f0:	01010113          	addi	sp,sp,16
    800021f4:	00008067          	ret

00000000800021f8 <usertrapret>:
    800021f8:	ff010113          	addi	sp,sp,-16
    800021fc:	00813423          	sd	s0,8(sp)
    80002200:	01010413          	addi	s0,sp,16
    80002204:	00813403          	ld	s0,8(sp)
    80002208:	01010113          	addi	sp,sp,16
    8000220c:	00008067          	ret

0000000080002210 <kerneltrap>:
    80002210:	fe010113          	addi	sp,sp,-32
    80002214:	00813823          	sd	s0,16(sp)
    80002218:	00113c23          	sd	ra,24(sp)
    8000221c:	00913423          	sd	s1,8(sp)
    80002220:	02010413          	addi	s0,sp,32
    80002224:	142025f3          	csrr	a1,scause
    80002228:	100027f3          	csrr	a5,sstatus
    8000222c:	0027f793          	andi	a5,a5,2
    80002230:	10079c63          	bnez	a5,80002348 <kerneltrap+0x138>
    80002234:	142027f3          	csrr	a5,scause
    80002238:	0207ce63          	bltz	a5,80002274 <kerneltrap+0x64>
    8000223c:	00003517          	auipc	a0,0x3
    80002240:	f6c50513          	addi	a0,a0,-148 # 800051a8 <_ZZ12printIntegermE6digits+0x130>
    80002244:	00001097          	auipc	ra,0x1
    80002248:	884080e7          	jalr	-1916(ra) # 80002ac8 <__printf>
    8000224c:	141025f3          	csrr	a1,sepc
    80002250:	14302673          	csrr	a2,stval
    80002254:	00003517          	auipc	a0,0x3
    80002258:	f6450513          	addi	a0,a0,-156 # 800051b8 <_ZZ12printIntegermE6digits+0x140>
    8000225c:	00001097          	auipc	ra,0x1
    80002260:	86c080e7          	jalr	-1940(ra) # 80002ac8 <__printf>
    80002264:	00003517          	auipc	a0,0x3
    80002268:	f6c50513          	addi	a0,a0,-148 # 800051d0 <_ZZ12printIntegermE6digits+0x158>
    8000226c:	00001097          	auipc	ra,0x1
    80002270:	800080e7          	jalr	-2048(ra) # 80002a6c <panic>
    80002274:	0ff7f713          	andi	a4,a5,255
    80002278:	00900693          	li	a3,9
    8000227c:	04d70063          	beq	a4,a3,800022bc <kerneltrap+0xac>
    80002280:	fff00713          	li	a4,-1
    80002284:	03f71713          	slli	a4,a4,0x3f
    80002288:	00170713          	addi	a4,a4,1
    8000228c:	fae798e3          	bne	a5,a4,8000223c <kerneltrap+0x2c>
    80002290:	00000097          	auipc	ra,0x0
    80002294:	e00080e7          	jalr	-512(ra) # 80002090 <cpuid>
    80002298:	06050663          	beqz	a0,80002304 <kerneltrap+0xf4>
    8000229c:	144027f3          	csrr	a5,sip
    800022a0:	ffd7f793          	andi	a5,a5,-3
    800022a4:	14479073          	csrw	sip,a5
    800022a8:	01813083          	ld	ra,24(sp)
    800022ac:	01013403          	ld	s0,16(sp)
    800022b0:	00813483          	ld	s1,8(sp)
    800022b4:	02010113          	addi	sp,sp,32
    800022b8:	00008067          	ret
    800022bc:	00000097          	auipc	ra,0x0
    800022c0:	3c8080e7          	jalr	968(ra) # 80002684 <plic_claim>
    800022c4:	00a00793          	li	a5,10
    800022c8:	00050493          	mv	s1,a0
    800022cc:	06f50863          	beq	a0,a5,8000233c <kerneltrap+0x12c>
    800022d0:	fc050ce3          	beqz	a0,800022a8 <kerneltrap+0x98>
    800022d4:	00050593          	mv	a1,a0
    800022d8:	00003517          	auipc	a0,0x3
    800022dc:	eb050513          	addi	a0,a0,-336 # 80005188 <_ZZ12printIntegermE6digits+0x110>
    800022e0:	00000097          	auipc	ra,0x0
    800022e4:	7e8080e7          	jalr	2024(ra) # 80002ac8 <__printf>
    800022e8:	01013403          	ld	s0,16(sp)
    800022ec:	01813083          	ld	ra,24(sp)
    800022f0:	00048513          	mv	a0,s1
    800022f4:	00813483          	ld	s1,8(sp)
    800022f8:	02010113          	addi	sp,sp,32
    800022fc:	00000317          	auipc	t1,0x0
    80002300:	3c030067          	jr	960(t1) # 800026bc <plic_complete>
    80002304:	00004517          	auipc	a0,0x4
    80002308:	5ec50513          	addi	a0,a0,1516 # 800068f0 <tickslock>
    8000230c:	00001097          	auipc	ra,0x1
    80002310:	490080e7          	jalr	1168(ra) # 8000379c <acquire>
    80002314:	00003717          	auipc	a4,0x3
    80002318:	4d070713          	addi	a4,a4,1232 # 800057e4 <ticks>
    8000231c:	00072783          	lw	a5,0(a4)
    80002320:	00004517          	auipc	a0,0x4
    80002324:	5d050513          	addi	a0,a0,1488 # 800068f0 <tickslock>
    80002328:	0017879b          	addiw	a5,a5,1
    8000232c:	00f72023          	sw	a5,0(a4)
    80002330:	00001097          	auipc	ra,0x1
    80002334:	538080e7          	jalr	1336(ra) # 80003868 <release>
    80002338:	f65ff06f          	j	8000229c <kerneltrap+0x8c>
    8000233c:	00001097          	auipc	ra,0x1
    80002340:	094080e7          	jalr	148(ra) # 800033d0 <uartintr>
    80002344:	fa5ff06f          	j	800022e8 <kerneltrap+0xd8>
    80002348:	00003517          	auipc	a0,0x3
    8000234c:	e2050513          	addi	a0,a0,-480 # 80005168 <_ZZ12printIntegermE6digits+0xf0>
    80002350:	00000097          	auipc	ra,0x0
    80002354:	71c080e7          	jalr	1820(ra) # 80002a6c <panic>

0000000080002358 <clockintr>:
    80002358:	fe010113          	addi	sp,sp,-32
    8000235c:	00813823          	sd	s0,16(sp)
    80002360:	00913423          	sd	s1,8(sp)
    80002364:	00113c23          	sd	ra,24(sp)
    80002368:	02010413          	addi	s0,sp,32
    8000236c:	00004497          	auipc	s1,0x4
    80002370:	58448493          	addi	s1,s1,1412 # 800068f0 <tickslock>
    80002374:	00048513          	mv	a0,s1
    80002378:	00001097          	auipc	ra,0x1
    8000237c:	424080e7          	jalr	1060(ra) # 8000379c <acquire>
    80002380:	00003717          	auipc	a4,0x3
    80002384:	46470713          	addi	a4,a4,1124 # 800057e4 <ticks>
    80002388:	00072783          	lw	a5,0(a4)
    8000238c:	01013403          	ld	s0,16(sp)
    80002390:	01813083          	ld	ra,24(sp)
    80002394:	00048513          	mv	a0,s1
    80002398:	0017879b          	addiw	a5,a5,1
    8000239c:	00813483          	ld	s1,8(sp)
    800023a0:	00f72023          	sw	a5,0(a4)
    800023a4:	02010113          	addi	sp,sp,32
    800023a8:	00001317          	auipc	t1,0x1
    800023ac:	4c030067          	jr	1216(t1) # 80003868 <release>

00000000800023b0 <devintr>:
    800023b0:	142027f3          	csrr	a5,scause
    800023b4:	00000513          	li	a0,0
    800023b8:	0007c463          	bltz	a5,800023c0 <devintr+0x10>
    800023bc:	00008067          	ret
    800023c0:	fe010113          	addi	sp,sp,-32
    800023c4:	00813823          	sd	s0,16(sp)
    800023c8:	00113c23          	sd	ra,24(sp)
    800023cc:	00913423          	sd	s1,8(sp)
    800023d0:	02010413          	addi	s0,sp,32
    800023d4:	0ff7f713          	andi	a4,a5,255
    800023d8:	00900693          	li	a3,9
    800023dc:	04d70c63          	beq	a4,a3,80002434 <devintr+0x84>
    800023e0:	fff00713          	li	a4,-1
    800023e4:	03f71713          	slli	a4,a4,0x3f
    800023e8:	00170713          	addi	a4,a4,1
    800023ec:	00e78c63          	beq	a5,a4,80002404 <devintr+0x54>
    800023f0:	01813083          	ld	ra,24(sp)
    800023f4:	01013403          	ld	s0,16(sp)
    800023f8:	00813483          	ld	s1,8(sp)
    800023fc:	02010113          	addi	sp,sp,32
    80002400:	00008067          	ret
    80002404:	00000097          	auipc	ra,0x0
    80002408:	c8c080e7          	jalr	-884(ra) # 80002090 <cpuid>
    8000240c:	06050663          	beqz	a0,80002478 <devintr+0xc8>
    80002410:	144027f3          	csrr	a5,sip
    80002414:	ffd7f793          	andi	a5,a5,-3
    80002418:	14479073          	csrw	sip,a5
    8000241c:	01813083          	ld	ra,24(sp)
    80002420:	01013403          	ld	s0,16(sp)
    80002424:	00813483          	ld	s1,8(sp)
    80002428:	00200513          	li	a0,2
    8000242c:	02010113          	addi	sp,sp,32
    80002430:	00008067          	ret
    80002434:	00000097          	auipc	ra,0x0
    80002438:	250080e7          	jalr	592(ra) # 80002684 <plic_claim>
    8000243c:	00a00793          	li	a5,10
    80002440:	00050493          	mv	s1,a0
    80002444:	06f50663          	beq	a0,a5,800024b0 <devintr+0x100>
    80002448:	00100513          	li	a0,1
    8000244c:	fa0482e3          	beqz	s1,800023f0 <devintr+0x40>
    80002450:	00048593          	mv	a1,s1
    80002454:	00003517          	auipc	a0,0x3
    80002458:	d3450513          	addi	a0,a0,-716 # 80005188 <_ZZ12printIntegermE6digits+0x110>
    8000245c:	00000097          	auipc	ra,0x0
    80002460:	66c080e7          	jalr	1644(ra) # 80002ac8 <__printf>
    80002464:	00048513          	mv	a0,s1
    80002468:	00000097          	auipc	ra,0x0
    8000246c:	254080e7          	jalr	596(ra) # 800026bc <plic_complete>
    80002470:	00100513          	li	a0,1
    80002474:	f7dff06f          	j	800023f0 <devintr+0x40>
    80002478:	00004517          	auipc	a0,0x4
    8000247c:	47850513          	addi	a0,a0,1144 # 800068f0 <tickslock>
    80002480:	00001097          	auipc	ra,0x1
    80002484:	31c080e7          	jalr	796(ra) # 8000379c <acquire>
    80002488:	00003717          	auipc	a4,0x3
    8000248c:	35c70713          	addi	a4,a4,860 # 800057e4 <ticks>
    80002490:	00072783          	lw	a5,0(a4)
    80002494:	00004517          	auipc	a0,0x4
    80002498:	45c50513          	addi	a0,a0,1116 # 800068f0 <tickslock>
    8000249c:	0017879b          	addiw	a5,a5,1
    800024a0:	00f72023          	sw	a5,0(a4)
    800024a4:	00001097          	auipc	ra,0x1
    800024a8:	3c4080e7          	jalr	964(ra) # 80003868 <release>
    800024ac:	f65ff06f          	j	80002410 <devintr+0x60>
    800024b0:	00001097          	auipc	ra,0x1
    800024b4:	f20080e7          	jalr	-224(ra) # 800033d0 <uartintr>
    800024b8:	fadff06f          	j	80002464 <devintr+0xb4>
    800024bc:	0000                	unimp
	...

00000000800024c0 <kernelvec>:
    800024c0:	f0010113          	addi	sp,sp,-256
    800024c4:	00113023          	sd	ra,0(sp)
    800024c8:	00213423          	sd	sp,8(sp)
    800024cc:	00313823          	sd	gp,16(sp)
    800024d0:	00413c23          	sd	tp,24(sp)
    800024d4:	02513023          	sd	t0,32(sp)
    800024d8:	02613423          	sd	t1,40(sp)
    800024dc:	02713823          	sd	t2,48(sp)
    800024e0:	02813c23          	sd	s0,56(sp)
    800024e4:	04913023          	sd	s1,64(sp)
    800024e8:	04a13423          	sd	a0,72(sp)
    800024ec:	04b13823          	sd	a1,80(sp)
    800024f0:	04c13c23          	sd	a2,88(sp)
    800024f4:	06d13023          	sd	a3,96(sp)
    800024f8:	06e13423          	sd	a4,104(sp)
    800024fc:	06f13823          	sd	a5,112(sp)
    80002500:	07013c23          	sd	a6,120(sp)
    80002504:	09113023          	sd	a7,128(sp)
    80002508:	09213423          	sd	s2,136(sp)
    8000250c:	09313823          	sd	s3,144(sp)
    80002510:	09413c23          	sd	s4,152(sp)
    80002514:	0b513023          	sd	s5,160(sp)
    80002518:	0b613423          	sd	s6,168(sp)
    8000251c:	0b713823          	sd	s7,176(sp)
    80002520:	0b813c23          	sd	s8,184(sp)
    80002524:	0d913023          	sd	s9,192(sp)
    80002528:	0da13423          	sd	s10,200(sp)
    8000252c:	0db13823          	sd	s11,208(sp)
    80002530:	0dc13c23          	sd	t3,216(sp)
    80002534:	0fd13023          	sd	t4,224(sp)
    80002538:	0fe13423          	sd	t5,232(sp)
    8000253c:	0ff13823          	sd	t6,240(sp)
    80002540:	cd1ff0ef          	jal	ra,80002210 <kerneltrap>
    80002544:	00013083          	ld	ra,0(sp)
    80002548:	00813103          	ld	sp,8(sp)
    8000254c:	01013183          	ld	gp,16(sp)
    80002550:	02013283          	ld	t0,32(sp)
    80002554:	02813303          	ld	t1,40(sp)
    80002558:	03013383          	ld	t2,48(sp)
    8000255c:	03813403          	ld	s0,56(sp)
    80002560:	04013483          	ld	s1,64(sp)
    80002564:	04813503          	ld	a0,72(sp)
    80002568:	05013583          	ld	a1,80(sp)
    8000256c:	05813603          	ld	a2,88(sp)
    80002570:	06013683          	ld	a3,96(sp)
    80002574:	06813703          	ld	a4,104(sp)
    80002578:	07013783          	ld	a5,112(sp)
    8000257c:	07813803          	ld	a6,120(sp)
    80002580:	08013883          	ld	a7,128(sp)
    80002584:	08813903          	ld	s2,136(sp)
    80002588:	09013983          	ld	s3,144(sp)
    8000258c:	09813a03          	ld	s4,152(sp)
    80002590:	0a013a83          	ld	s5,160(sp)
    80002594:	0a813b03          	ld	s6,168(sp)
    80002598:	0b013b83          	ld	s7,176(sp)
    8000259c:	0b813c03          	ld	s8,184(sp)
    800025a0:	0c013c83          	ld	s9,192(sp)
    800025a4:	0c813d03          	ld	s10,200(sp)
    800025a8:	0d013d83          	ld	s11,208(sp)
    800025ac:	0d813e03          	ld	t3,216(sp)
    800025b0:	0e013e83          	ld	t4,224(sp)
    800025b4:	0e813f03          	ld	t5,232(sp)
    800025b8:	0f013f83          	ld	t6,240(sp)
    800025bc:	10010113          	addi	sp,sp,256
    800025c0:	10200073          	sret
    800025c4:	00000013          	nop
    800025c8:	00000013          	nop
    800025cc:	00000013          	nop

00000000800025d0 <timervec>:
    800025d0:	34051573          	csrrw	a0,mscratch,a0
    800025d4:	00b53023          	sd	a1,0(a0)
    800025d8:	00c53423          	sd	a2,8(a0)
    800025dc:	00d53823          	sd	a3,16(a0)
    800025e0:	01853583          	ld	a1,24(a0)
    800025e4:	02053603          	ld	a2,32(a0)
    800025e8:	0005b683          	ld	a3,0(a1)
    800025ec:	00c686b3          	add	a3,a3,a2
    800025f0:	00d5b023          	sd	a3,0(a1)
    800025f4:	00200593          	li	a1,2
    800025f8:	14459073          	csrw	sip,a1
    800025fc:	01053683          	ld	a3,16(a0)
    80002600:	00853603          	ld	a2,8(a0)
    80002604:	00053583          	ld	a1,0(a0)
    80002608:	34051573          	csrrw	a0,mscratch,a0
    8000260c:	30200073          	mret

0000000080002610 <plicinit>:
    80002610:	ff010113          	addi	sp,sp,-16
    80002614:	00813423          	sd	s0,8(sp)
    80002618:	01010413          	addi	s0,sp,16
    8000261c:	00813403          	ld	s0,8(sp)
    80002620:	0c0007b7          	lui	a5,0xc000
    80002624:	00100713          	li	a4,1
    80002628:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000262c:	00e7a223          	sw	a4,4(a5)
    80002630:	01010113          	addi	sp,sp,16
    80002634:	00008067          	ret

0000000080002638 <plicinithart>:
    80002638:	ff010113          	addi	sp,sp,-16
    8000263c:	00813023          	sd	s0,0(sp)
    80002640:	00113423          	sd	ra,8(sp)
    80002644:	01010413          	addi	s0,sp,16
    80002648:	00000097          	auipc	ra,0x0
    8000264c:	a48080e7          	jalr	-1464(ra) # 80002090 <cpuid>
    80002650:	0085171b          	slliw	a4,a0,0x8
    80002654:	0c0027b7          	lui	a5,0xc002
    80002658:	00e787b3          	add	a5,a5,a4
    8000265c:	40200713          	li	a4,1026
    80002660:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002664:	00813083          	ld	ra,8(sp)
    80002668:	00013403          	ld	s0,0(sp)
    8000266c:	00d5151b          	slliw	a0,a0,0xd
    80002670:	0c2017b7          	lui	a5,0xc201
    80002674:	00a78533          	add	a0,a5,a0
    80002678:	00052023          	sw	zero,0(a0)
    8000267c:	01010113          	addi	sp,sp,16
    80002680:	00008067          	ret

0000000080002684 <plic_claim>:
    80002684:	ff010113          	addi	sp,sp,-16
    80002688:	00813023          	sd	s0,0(sp)
    8000268c:	00113423          	sd	ra,8(sp)
    80002690:	01010413          	addi	s0,sp,16
    80002694:	00000097          	auipc	ra,0x0
    80002698:	9fc080e7          	jalr	-1540(ra) # 80002090 <cpuid>
    8000269c:	00813083          	ld	ra,8(sp)
    800026a0:	00013403          	ld	s0,0(sp)
    800026a4:	00d5151b          	slliw	a0,a0,0xd
    800026a8:	0c2017b7          	lui	a5,0xc201
    800026ac:	00a78533          	add	a0,a5,a0
    800026b0:	00452503          	lw	a0,4(a0)
    800026b4:	01010113          	addi	sp,sp,16
    800026b8:	00008067          	ret

00000000800026bc <plic_complete>:
    800026bc:	fe010113          	addi	sp,sp,-32
    800026c0:	00813823          	sd	s0,16(sp)
    800026c4:	00913423          	sd	s1,8(sp)
    800026c8:	00113c23          	sd	ra,24(sp)
    800026cc:	02010413          	addi	s0,sp,32
    800026d0:	00050493          	mv	s1,a0
    800026d4:	00000097          	auipc	ra,0x0
    800026d8:	9bc080e7          	jalr	-1604(ra) # 80002090 <cpuid>
    800026dc:	01813083          	ld	ra,24(sp)
    800026e0:	01013403          	ld	s0,16(sp)
    800026e4:	00d5179b          	slliw	a5,a0,0xd
    800026e8:	0c201737          	lui	a4,0xc201
    800026ec:	00f707b3          	add	a5,a4,a5
    800026f0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800026f4:	00813483          	ld	s1,8(sp)
    800026f8:	02010113          	addi	sp,sp,32
    800026fc:	00008067          	ret

0000000080002700 <consolewrite>:
    80002700:	fb010113          	addi	sp,sp,-80
    80002704:	04813023          	sd	s0,64(sp)
    80002708:	04113423          	sd	ra,72(sp)
    8000270c:	02913c23          	sd	s1,56(sp)
    80002710:	03213823          	sd	s2,48(sp)
    80002714:	03313423          	sd	s3,40(sp)
    80002718:	03413023          	sd	s4,32(sp)
    8000271c:	01513c23          	sd	s5,24(sp)
    80002720:	05010413          	addi	s0,sp,80
    80002724:	06c05c63          	blez	a2,8000279c <consolewrite+0x9c>
    80002728:	00060993          	mv	s3,a2
    8000272c:	00050a13          	mv	s4,a0
    80002730:	00058493          	mv	s1,a1
    80002734:	00000913          	li	s2,0
    80002738:	fff00a93          	li	s5,-1
    8000273c:	01c0006f          	j	80002758 <consolewrite+0x58>
    80002740:	fbf44503          	lbu	a0,-65(s0)
    80002744:	0019091b          	addiw	s2,s2,1
    80002748:	00148493          	addi	s1,s1,1
    8000274c:	00001097          	auipc	ra,0x1
    80002750:	a9c080e7          	jalr	-1380(ra) # 800031e8 <uartputc>
    80002754:	03298063          	beq	s3,s2,80002774 <consolewrite+0x74>
    80002758:	00048613          	mv	a2,s1
    8000275c:	00100693          	li	a3,1
    80002760:	000a0593          	mv	a1,s4
    80002764:	fbf40513          	addi	a0,s0,-65
    80002768:	00000097          	auipc	ra,0x0
    8000276c:	9e0080e7          	jalr	-1568(ra) # 80002148 <either_copyin>
    80002770:	fd5518e3          	bne	a0,s5,80002740 <consolewrite+0x40>
    80002774:	04813083          	ld	ra,72(sp)
    80002778:	04013403          	ld	s0,64(sp)
    8000277c:	03813483          	ld	s1,56(sp)
    80002780:	02813983          	ld	s3,40(sp)
    80002784:	02013a03          	ld	s4,32(sp)
    80002788:	01813a83          	ld	s5,24(sp)
    8000278c:	00090513          	mv	a0,s2
    80002790:	03013903          	ld	s2,48(sp)
    80002794:	05010113          	addi	sp,sp,80
    80002798:	00008067          	ret
    8000279c:	00000913          	li	s2,0
    800027a0:	fd5ff06f          	j	80002774 <consolewrite+0x74>

00000000800027a4 <consoleread>:
    800027a4:	f9010113          	addi	sp,sp,-112
    800027a8:	06813023          	sd	s0,96(sp)
    800027ac:	04913c23          	sd	s1,88(sp)
    800027b0:	05213823          	sd	s2,80(sp)
    800027b4:	05313423          	sd	s3,72(sp)
    800027b8:	05413023          	sd	s4,64(sp)
    800027bc:	03513c23          	sd	s5,56(sp)
    800027c0:	03613823          	sd	s6,48(sp)
    800027c4:	03713423          	sd	s7,40(sp)
    800027c8:	03813023          	sd	s8,32(sp)
    800027cc:	06113423          	sd	ra,104(sp)
    800027d0:	01913c23          	sd	s9,24(sp)
    800027d4:	07010413          	addi	s0,sp,112
    800027d8:	00060b93          	mv	s7,a2
    800027dc:	00050913          	mv	s2,a0
    800027e0:	00058c13          	mv	s8,a1
    800027e4:	00060b1b          	sext.w	s6,a2
    800027e8:	00004497          	auipc	s1,0x4
    800027ec:	13048493          	addi	s1,s1,304 # 80006918 <cons>
    800027f0:	00400993          	li	s3,4
    800027f4:	fff00a13          	li	s4,-1
    800027f8:	00a00a93          	li	s5,10
    800027fc:	05705e63          	blez	s7,80002858 <consoleread+0xb4>
    80002800:	09c4a703          	lw	a4,156(s1)
    80002804:	0984a783          	lw	a5,152(s1)
    80002808:	0007071b          	sext.w	a4,a4
    8000280c:	08e78463          	beq	a5,a4,80002894 <consoleread+0xf0>
    80002810:	07f7f713          	andi	a4,a5,127
    80002814:	00e48733          	add	a4,s1,a4
    80002818:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000281c:	0017869b          	addiw	a3,a5,1
    80002820:	08d4ac23          	sw	a3,152(s1)
    80002824:	00070c9b          	sext.w	s9,a4
    80002828:	0b370663          	beq	a4,s3,800028d4 <consoleread+0x130>
    8000282c:	00100693          	li	a3,1
    80002830:	f9f40613          	addi	a2,s0,-97
    80002834:	000c0593          	mv	a1,s8
    80002838:	00090513          	mv	a0,s2
    8000283c:	f8e40fa3          	sb	a4,-97(s0)
    80002840:	00000097          	auipc	ra,0x0
    80002844:	8bc080e7          	jalr	-1860(ra) # 800020fc <either_copyout>
    80002848:	01450863          	beq	a0,s4,80002858 <consoleread+0xb4>
    8000284c:	001c0c13          	addi	s8,s8,1
    80002850:	fffb8b9b          	addiw	s7,s7,-1
    80002854:	fb5c94e3          	bne	s9,s5,800027fc <consoleread+0x58>
    80002858:	000b851b          	sext.w	a0,s7
    8000285c:	06813083          	ld	ra,104(sp)
    80002860:	06013403          	ld	s0,96(sp)
    80002864:	05813483          	ld	s1,88(sp)
    80002868:	05013903          	ld	s2,80(sp)
    8000286c:	04813983          	ld	s3,72(sp)
    80002870:	04013a03          	ld	s4,64(sp)
    80002874:	03813a83          	ld	s5,56(sp)
    80002878:	02813b83          	ld	s7,40(sp)
    8000287c:	02013c03          	ld	s8,32(sp)
    80002880:	01813c83          	ld	s9,24(sp)
    80002884:	40ab053b          	subw	a0,s6,a0
    80002888:	03013b03          	ld	s6,48(sp)
    8000288c:	07010113          	addi	sp,sp,112
    80002890:	00008067          	ret
    80002894:	00001097          	auipc	ra,0x1
    80002898:	1d8080e7          	jalr	472(ra) # 80003a6c <push_on>
    8000289c:	0984a703          	lw	a4,152(s1)
    800028a0:	09c4a783          	lw	a5,156(s1)
    800028a4:	0007879b          	sext.w	a5,a5
    800028a8:	fef70ce3          	beq	a4,a5,800028a0 <consoleread+0xfc>
    800028ac:	00001097          	auipc	ra,0x1
    800028b0:	234080e7          	jalr	564(ra) # 80003ae0 <pop_on>
    800028b4:	0984a783          	lw	a5,152(s1)
    800028b8:	07f7f713          	andi	a4,a5,127
    800028bc:	00e48733          	add	a4,s1,a4
    800028c0:	01874703          	lbu	a4,24(a4)
    800028c4:	0017869b          	addiw	a3,a5,1
    800028c8:	08d4ac23          	sw	a3,152(s1)
    800028cc:	00070c9b          	sext.w	s9,a4
    800028d0:	f5371ee3          	bne	a4,s3,8000282c <consoleread+0x88>
    800028d4:	000b851b          	sext.w	a0,s7
    800028d8:	f96bf2e3          	bgeu	s7,s6,8000285c <consoleread+0xb8>
    800028dc:	08f4ac23          	sw	a5,152(s1)
    800028e0:	f7dff06f          	j	8000285c <consoleread+0xb8>

00000000800028e4 <consputc>:
    800028e4:	10000793          	li	a5,256
    800028e8:	00f50663          	beq	a0,a5,800028f4 <consputc+0x10>
    800028ec:	00001317          	auipc	t1,0x1
    800028f0:	9f430067          	jr	-1548(t1) # 800032e0 <uartputc_sync>
    800028f4:	ff010113          	addi	sp,sp,-16
    800028f8:	00113423          	sd	ra,8(sp)
    800028fc:	00813023          	sd	s0,0(sp)
    80002900:	01010413          	addi	s0,sp,16
    80002904:	00800513          	li	a0,8
    80002908:	00001097          	auipc	ra,0x1
    8000290c:	9d8080e7          	jalr	-1576(ra) # 800032e0 <uartputc_sync>
    80002910:	02000513          	li	a0,32
    80002914:	00001097          	auipc	ra,0x1
    80002918:	9cc080e7          	jalr	-1588(ra) # 800032e0 <uartputc_sync>
    8000291c:	00013403          	ld	s0,0(sp)
    80002920:	00813083          	ld	ra,8(sp)
    80002924:	00800513          	li	a0,8
    80002928:	01010113          	addi	sp,sp,16
    8000292c:	00001317          	auipc	t1,0x1
    80002930:	9b430067          	jr	-1612(t1) # 800032e0 <uartputc_sync>

0000000080002934 <consoleintr>:
    80002934:	fe010113          	addi	sp,sp,-32
    80002938:	00813823          	sd	s0,16(sp)
    8000293c:	00913423          	sd	s1,8(sp)
    80002940:	01213023          	sd	s2,0(sp)
    80002944:	00113c23          	sd	ra,24(sp)
    80002948:	02010413          	addi	s0,sp,32
    8000294c:	00004917          	auipc	s2,0x4
    80002950:	fcc90913          	addi	s2,s2,-52 # 80006918 <cons>
    80002954:	00050493          	mv	s1,a0
    80002958:	00090513          	mv	a0,s2
    8000295c:	00001097          	auipc	ra,0x1
    80002960:	e40080e7          	jalr	-448(ra) # 8000379c <acquire>
    80002964:	02048c63          	beqz	s1,8000299c <consoleintr+0x68>
    80002968:	0a092783          	lw	a5,160(s2)
    8000296c:	09892703          	lw	a4,152(s2)
    80002970:	07f00693          	li	a3,127
    80002974:	40e7873b          	subw	a4,a5,a4
    80002978:	02e6e263          	bltu	a3,a4,8000299c <consoleintr+0x68>
    8000297c:	00d00713          	li	a4,13
    80002980:	04e48063          	beq	s1,a4,800029c0 <consoleintr+0x8c>
    80002984:	07f7f713          	andi	a4,a5,127
    80002988:	00e90733          	add	a4,s2,a4
    8000298c:	0017879b          	addiw	a5,a5,1
    80002990:	0af92023          	sw	a5,160(s2)
    80002994:	00970c23          	sb	s1,24(a4)
    80002998:	08f92e23          	sw	a5,156(s2)
    8000299c:	01013403          	ld	s0,16(sp)
    800029a0:	01813083          	ld	ra,24(sp)
    800029a4:	00813483          	ld	s1,8(sp)
    800029a8:	00013903          	ld	s2,0(sp)
    800029ac:	00004517          	auipc	a0,0x4
    800029b0:	f6c50513          	addi	a0,a0,-148 # 80006918 <cons>
    800029b4:	02010113          	addi	sp,sp,32
    800029b8:	00001317          	auipc	t1,0x1
    800029bc:	eb030067          	jr	-336(t1) # 80003868 <release>
    800029c0:	00a00493          	li	s1,10
    800029c4:	fc1ff06f          	j	80002984 <consoleintr+0x50>

00000000800029c8 <consoleinit>:
    800029c8:	fe010113          	addi	sp,sp,-32
    800029cc:	00113c23          	sd	ra,24(sp)
    800029d0:	00813823          	sd	s0,16(sp)
    800029d4:	00913423          	sd	s1,8(sp)
    800029d8:	02010413          	addi	s0,sp,32
    800029dc:	00004497          	auipc	s1,0x4
    800029e0:	f3c48493          	addi	s1,s1,-196 # 80006918 <cons>
    800029e4:	00048513          	mv	a0,s1
    800029e8:	00002597          	auipc	a1,0x2
    800029ec:	7f858593          	addi	a1,a1,2040 # 800051e0 <_ZZ12printIntegermE6digits+0x168>
    800029f0:	00001097          	auipc	ra,0x1
    800029f4:	d88080e7          	jalr	-632(ra) # 80003778 <initlock>
    800029f8:	00000097          	auipc	ra,0x0
    800029fc:	7ac080e7          	jalr	1964(ra) # 800031a4 <uartinit>
    80002a00:	01813083          	ld	ra,24(sp)
    80002a04:	01013403          	ld	s0,16(sp)
    80002a08:	00000797          	auipc	a5,0x0
    80002a0c:	d9c78793          	addi	a5,a5,-612 # 800027a4 <consoleread>
    80002a10:	0af4bc23          	sd	a5,184(s1)
    80002a14:	00000797          	auipc	a5,0x0
    80002a18:	cec78793          	addi	a5,a5,-788 # 80002700 <consolewrite>
    80002a1c:	0cf4b023          	sd	a5,192(s1)
    80002a20:	00813483          	ld	s1,8(sp)
    80002a24:	02010113          	addi	sp,sp,32
    80002a28:	00008067          	ret

0000000080002a2c <console_read>:
    80002a2c:	ff010113          	addi	sp,sp,-16
    80002a30:	00813423          	sd	s0,8(sp)
    80002a34:	01010413          	addi	s0,sp,16
    80002a38:	00813403          	ld	s0,8(sp)
    80002a3c:	00004317          	auipc	t1,0x4
    80002a40:	f9433303          	ld	t1,-108(t1) # 800069d0 <devsw+0x10>
    80002a44:	01010113          	addi	sp,sp,16
    80002a48:	00030067          	jr	t1

0000000080002a4c <console_write>:
    80002a4c:	ff010113          	addi	sp,sp,-16
    80002a50:	00813423          	sd	s0,8(sp)
    80002a54:	01010413          	addi	s0,sp,16
    80002a58:	00813403          	ld	s0,8(sp)
    80002a5c:	00004317          	auipc	t1,0x4
    80002a60:	f7c33303          	ld	t1,-132(t1) # 800069d8 <devsw+0x18>
    80002a64:	01010113          	addi	sp,sp,16
    80002a68:	00030067          	jr	t1

0000000080002a6c <panic>:
    80002a6c:	fe010113          	addi	sp,sp,-32
    80002a70:	00113c23          	sd	ra,24(sp)
    80002a74:	00813823          	sd	s0,16(sp)
    80002a78:	00913423          	sd	s1,8(sp)
    80002a7c:	02010413          	addi	s0,sp,32
    80002a80:	00050493          	mv	s1,a0
    80002a84:	00002517          	auipc	a0,0x2
    80002a88:	76450513          	addi	a0,a0,1892 # 800051e8 <_ZZ12printIntegermE6digits+0x170>
    80002a8c:	00004797          	auipc	a5,0x4
    80002a90:	fe07a623          	sw	zero,-20(a5) # 80006a78 <pr+0x18>
    80002a94:	00000097          	auipc	ra,0x0
    80002a98:	034080e7          	jalr	52(ra) # 80002ac8 <__printf>
    80002a9c:	00048513          	mv	a0,s1
    80002aa0:	00000097          	auipc	ra,0x0
    80002aa4:	028080e7          	jalr	40(ra) # 80002ac8 <__printf>
    80002aa8:	00002517          	auipc	a0,0x2
    80002aac:	58850513          	addi	a0,a0,1416 # 80005030 <CONSOLE_STATUS+0x20>
    80002ab0:	00000097          	auipc	ra,0x0
    80002ab4:	018080e7          	jalr	24(ra) # 80002ac8 <__printf>
    80002ab8:	00100793          	li	a5,1
    80002abc:	00003717          	auipc	a4,0x3
    80002ac0:	d2f72623          	sw	a5,-724(a4) # 800057e8 <panicked>
    80002ac4:	0000006f          	j	80002ac4 <panic+0x58>

0000000080002ac8 <__printf>:
    80002ac8:	f3010113          	addi	sp,sp,-208
    80002acc:	08813023          	sd	s0,128(sp)
    80002ad0:	07313423          	sd	s3,104(sp)
    80002ad4:	09010413          	addi	s0,sp,144
    80002ad8:	05813023          	sd	s8,64(sp)
    80002adc:	08113423          	sd	ra,136(sp)
    80002ae0:	06913c23          	sd	s1,120(sp)
    80002ae4:	07213823          	sd	s2,112(sp)
    80002ae8:	07413023          	sd	s4,96(sp)
    80002aec:	05513c23          	sd	s5,88(sp)
    80002af0:	05613823          	sd	s6,80(sp)
    80002af4:	05713423          	sd	s7,72(sp)
    80002af8:	03913c23          	sd	s9,56(sp)
    80002afc:	03a13823          	sd	s10,48(sp)
    80002b00:	03b13423          	sd	s11,40(sp)
    80002b04:	00004317          	auipc	t1,0x4
    80002b08:	f5c30313          	addi	t1,t1,-164 # 80006a60 <pr>
    80002b0c:	01832c03          	lw	s8,24(t1)
    80002b10:	00b43423          	sd	a1,8(s0)
    80002b14:	00c43823          	sd	a2,16(s0)
    80002b18:	00d43c23          	sd	a3,24(s0)
    80002b1c:	02e43023          	sd	a4,32(s0)
    80002b20:	02f43423          	sd	a5,40(s0)
    80002b24:	03043823          	sd	a6,48(s0)
    80002b28:	03143c23          	sd	a7,56(s0)
    80002b2c:	00050993          	mv	s3,a0
    80002b30:	4a0c1663          	bnez	s8,80002fdc <__printf+0x514>
    80002b34:	60098c63          	beqz	s3,8000314c <__printf+0x684>
    80002b38:	0009c503          	lbu	a0,0(s3)
    80002b3c:	00840793          	addi	a5,s0,8
    80002b40:	f6f43c23          	sd	a5,-136(s0)
    80002b44:	00000493          	li	s1,0
    80002b48:	22050063          	beqz	a0,80002d68 <__printf+0x2a0>
    80002b4c:	00002a37          	lui	s4,0x2
    80002b50:	00018ab7          	lui	s5,0x18
    80002b54:	000f4b37          	lui	s6,0xf4
    80002b58:	00989bb7          	lui	s7,0x989
    80002b5c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002b60:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002b64:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002b68:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002b6c:	00148c9b          	addiw	s9,s1,1
    80002b70:	02500793          	li	a5,37
    80002b74:	01998933          	add	s2,s3,s9
    80002b78:	38f51263          	bne	a0,a5,80002efc <__printf+0x434>
    80002b7c:	00094783          	lbu	a5,0(s2)
    80002b80:	00078c9b          	sext.w	s9,a5
    80002b84:	1e078263          	beqz	a5,80002d68 <__printf+0x2a0>
    80002b88:	0024849b          	addiw	s1,s1,2
    80002b8c:	07000713          	li	a4,112
    80002b90:	00998933          	add	s2,s3,s1
    80002b94:	38e78a63          	beq	a5,a4,80002f28 <__printf+0x460>
    80002b98:	20f76863          	bltu	a4,a5,80002da8 <__printf+0x2e0>
    80002b9c:	42a78863          	beq	a5,a0,80002fcc <__printf+0x504>
    80002ba0:	06400713          	li	a4,100
    80002ba4:	40e79663          	bne	a5,a4,80002fb0 <__printf+0x4e8>
    80002ba8:	f7843783          	ld	a5,-136(s0)
    80002bac:	0007a603          	lw	a2,0(a5)
    80002bb0:	00878793          	addi	a5,a5,8
    80002bb4:	f6f43c23          	sd	a5,-136(s0)
    80002bb8:	42064a63          	bltz	a2,80002fec <__printf+0x524>
    80002bbc:	00a00713          	li	a4,10
    80002bc0:	02e677bb          	remuw	a5,a2,a4
    80002bc4:	00002d97          	auipc	s11,0x2
    80002bc8:	64cd8d93          	addi	s11,s11,1612 # 80005210 <digits>
    80002bcc:	00900593          	li	a1,9
    80002bd0:	0006051b          	sext.w	a0,a2
    80002bd4:	00000c93          	li	s9,0
    80002bd8:	02079793          	slli	a5,a5,0x20
    80002bdc:	0207d793          	srli	a5,a5,0x20
    80002be0:	00fd87b3          	add	a5,s11,a5
    80002be4:	0007c783          	lbu	a5,0(a5)
    80002be8:	02e656bb          	divuw	a3,a2,a4
    80002bec:	f8f40023          	sb	a5,-128(s0)
    80002bf0:	14c5d863          	bge	a1,a2,80002d40 <__printf+0x278>
    80002bf4:	06300593          	li	a1,99
    80002bf8:	00100c93          	li	s9,1
    80002bfc:	02e6f7bb          	remuw	a5,a3,a4
    80002c00:	02079793          	slli	a5,a5,0x20
    80002c04:	0207d793          	srli	a5,a5,0x20
    80002c08:	00fd87b3          	add	a5,s11,a5
    80002c0c:	0007c783          	lbu	a5,0(a5)
    80002c10:	02e6d73b          	divuw	a4,a3,a4
    80002c14:	f8f400a3          	sb	a5,-127(s0)
    80002c18:	12a5f463          	bgeu	a1,a0,80002d40 <__printf+0x278>
    80002c1c:	00a00693          	li	a3,10
    80002c20:	00900593          	li	a1,9
    80002c24:	02d777bb          	remuw	a5,a4,a3
    80002c28:	02079793          	slli	a5,a5,0x20
    80002c2c:	0207d793          	srli	a5,a5,0x20
    80002c30:	00fd87b3          	add	a5,s11,a5
    80002c34:	0007c503          	lbu	a0,0(a5)
    80002c38:	02d757bb          	divuw	a5,a4,a3
    80002c3c:	f8a40123          	sb	a0,-126(s0)
    80002c40:	48e5f263          	bgeu	a1,a4,800030c4 <__printf+0x5fc>
    80002c44:	06300513          	li	a0,99
    80002c48:	02d7f5bb          	remuw	a1,a5,a3
    80002c4c:	02059593          	slli	a1,a1,0x20
    80002c50:	0205d593          	srli	a1,a1,0x20
    80002c54:	00bd85b3          	add	a1,s11,a1
    80002c58:	0005c583          	lbu	a1,0(a1)
    80002c5c:	02d7d7bb          	divuw	a5,a5,a3
    80002c60:	f8b401a3          	sb	a1,-125(s0)
    80002c64:	48e57263          	bgeu	a0,a4,800030e8 <__printf+0x620>
    80002c68:	3e700513          	li	a0,999
    80002c6c:	02d7f5bb          	remuw	a1,a5,a3
    80002c70:	02059593          	slli	a1,a1,0x20
    80002c74:	0205d593          	srli	a1,a1,0x20
    80002c78:	00bd85b3          	add	a1,s11,a1
    80002c7c:	0005c583          	lbu	a1,0(a1)
    80002c80:	02d7d7bb          	divuw	a5,a5,a3
    80002c84:	f8b40223          	sb	a1,-124(s0)
    80002c88:	46e57663          	bgeu	a0,a4,800030f4 <__printf+0x62c>
    80002c8c:	02d7f5bb          	remuw	a1,a5,a3
    80002c90:	02059593          	slli	a1,a1,0x20
    80002c94:	0205d593          	srli	a1,a1,0x20
    80002c98:	00bd85b3          	add	a1,s11,a1
    80002c9c:	0005c583          	lbu	a1,0(a1)
    80002ca0:	02d7d7bb          	divuw	a5,a5,a3
    80002ca4:	f8b402a3          	sb	a1,-123(s0)
    80002ca8:	46ea7863          	bgeu	s4,a4,80003118 <__printf+0x650>
    80002cac:	02d7f5bb          	remuw	a1,a5,a3
    80002cb0:	02059593          	slli	a1,a1,0x20
    80002cb4:	0205d593          	srli	a1,a1,0x20
    80002cb8:	00bd85b3          	add	a1,s11,a1
    80002cbc:	0005c583          	lbu	a1,0(a1)
    80002cc0:	02d7d7bb          	divuw	a5,a5,a3
    80002cc4:	f8b40323          	sb	a1,-122(s0)
    80002cc8:	3eeaf863          	bgeu	s5,a4,800030b8 <__printf+0x5f0>
    80002ccc:	02d7f5bb          	remuw	a1,a5,a3
    80002cd0:	02059593          	slli	a1,a1,0x20
    80002cd4:	0205d593          	srli	a1,a1,0x20
    80002cd8:	00bd85b3          	add	a1,s11,a1
    80002cdc:	0005c583          	lbu	a1,0(a1)
    80002ce0:	02d7d7bb          	divuw	a5,a5,a3
    80002ce4:	f8b403a3          	sb	a1,-121(s0)
    80002ce8:	42eb7e63          	bgeu	s6,a4,80003124 <__printf+0x65c>
    80002cec:	02d7f5bb          	remuw	a1,a5,a3
    80002cf0:	02059593          	slli	a1,a1,0x20
    80002cf4:	0205d593          	srli	a1,a1,0x20
    80002cf8:	00bd85b3          	add	a1,s11,a1
    80002cfc:	0005c583          	lbu	a1,0(a1)
    80002d00:	02d7d7bb          	divuw	a5,a5,a3
    80002d04:	f8b40423          	sb	a1,-120(s0)
    80002d08:	42ebfc63          	bgeu	s7,a4,80003140 <__printf+0x678>
    80002d0c:	02079793          	slli	a5,a5,0x20
    80002d10:	0207d793          	srli	a5,a5,0x20
    80002d14:	00fd8db3          	add	s11,s11,a5
    80002d18:	000dc703          	lbu	a4,0(s11)
    80002d1c:	00a00793          	li	a5,10
    80002d20:	00900c93          	li	s9,9
    80002d24:	f8e404a3          	sb	a4,-119(s0)
    80002d28:	00065c63          	bgez	a2,80002d40 <__printf+0x278>
    80002d2c:	f9040713          	addi	a4,s0,-112
    80002d30:	00f70733          	add	a4,a4,a5
    80002d34:	02d00693          	li	a3,45
    80002d38:	fed70823          	sb	a3,-16(a4)
    80002d3c:	00078c93          	mv	s9,a5
    80002d40:	f8040793          	addi	a5,s0,-128
    80002d44:	01978cb3          	add	s9,a5,s9
    80002d48:	f7f40d13          	addi	s10,s0,-129
    80002d4c:	000cc503          	lbu	a0,0(s9)
    80002d50:	fffc8c93          	addi	s9,s9,-1
    80002d54:	00000097          	auipc	ra,0x0
    80002d58:	b90080e7          	jalr	-1136(ra) # 800028e4 <consputc>
    80002d5c:	ffac98e3          	bne	s9,s10,80002d4c <__printf+0x284>
    80002d60:	00094503          	lbu	a0,0(s2)
    80002d64:	e00514e3          	bnez	a0,80002b6c <__printf+0xa4>
    80002d68:	1a0c1663          	bnez	s8,80002f14 <__printf+0x44c>
    80002d6c:	08813083          	ld	ra,136(sp)
    80002d70:	08013403          	ld	s0,128(sp)
    80002d74:	07813483          	ld	s1,120(sp)
    80002d78:	07013903          	ld	s2,112(sp)
    80002d7c:	06813983          	ld	s3,104(sp)
    80002d80:	06013a03          	ld	s4,96(sp)
    80002d84:	05813a83          	ld	s5,88(sp)
    80002d88:	05013b03          	ld	s6,80(sp)
    80002d8c:	04813b83          	ld	s7,72(sp)
    80002d90:	04013c03          	ld	s8,64(sp)
    80002d94:	03813c83          	ld	s9,56(sp)
    80002d98:	03013d03          	ld	s10,48(sp)
    80002d9c:	02813d83          	ld	s11,40(sp)
    80002da0:	0d010113          	addi	sp,sp,208
    80002da4:	00008067          	ret
    80002da8:	07300713          	li	a4,115
    80002dac:	1ce78a63          	beq	a5,a4,80002f80 <__printf+0x4b8>
    80002db0:	07800713          	li	a4,120
    80002db4:	1ee79e63          	bne	a5,a4,80002fb0 <__printf+0x4e8>
    80002db8:	f7843783          	ld	a5,-136(s0)
    80002dbc:	0007a703          	lw	a4,0(a5)
    80002dc0:	00878793          	addi	a5,a5,8
    80002dc4:	f6f43c23          	sd	a5,-136(s0)
    80002dc8:	28074263          	bltz	a4,8000304c <__printf+0x584>
    80002dcc:	00002d97          	auipc	s11,0x2
    80002dd0:	444d8d93          	addi	s11,s11,1092 # 80005210 <digits>
    80002dd4:	00f77793          	andi	a5,a4,15
    80002dd8:	00fd87b3          	add	a5,s11,a5
    80002ddc:	0007c683          	lbu	a3,0(a5)
    80002de0:	00f00613          	li	a2,15
    80002de4:	0007079b          	sext.w	a5,a4
    80002de8:	f8d40023          	sb	a3,-128(s0)
    80002dec:	0047559b          	srliw	a1,a4,0x4
    80002df0:	0047569b          	srliw	a3,a4,0x4
    80002df4:	00000c93          	li	s9,0
    80002df8:	0ee65063          	bge	a2,a4,80002ed8 <__printf+0x410>
    80002dfc:	00f6f693          	andi	a3,a3,15
    80002e00:	00dd86b3          	add	a3,s11,a3
    80002e04:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002e08:	0087d79b          	srliw	a5,a5,0x8
    80002e0c:	00100c93          	li	s9,1
    80002e10:	f8d400a3          	sb	a3,-127(s0)
    80002e14:	0cb67263          	bgeu	a2,a1,80002ed8 <__printf+0x410>
    80002e18:	00f7f693          	andi	a3,a5,15
    80002e1c:	00dd86b3          	add	a3,s11,a3
    80002e20:	0006c583          	lbu	a1,0(a3)
    80002e24:	00f00613          	li	a2,15
    80002e28:	0047d69b          	srliw	a3,a5,0x4
    80002e2c:	f8b40123          	sb	a1,-126(s0)
    80002e30:	0047d593          	srli	a1,a5,0x4
    80002e34:	28f67e63          	bgeu	a2,a5,800030d0 <__printf+0x608>
    80002e38:	00f6f693          	andi	a3,a3,15
    80002e3c:	00dd86b3          	add	a3,s11,a3
    80002e40:	0006c503          	lbu	a0,0(a3)
    80002e44:	0087d813          	srli	a6,a5,0x8
    80002e48:	0087d69b          	srliw	a3,a5,0x8
    80002e4c:	f8a401a3          	sb	a0,-125(s0)
    80002e50:	28b67663          	bgeu	a2,a1,800030dc <__printf+0x614>
    80002e54:	00f6f693          	andi	a3,a3,15
    80002e58:	00dd86b3          	add	a3,s11,a3
    80002e5c:	0006c583          	lbu	a1,0(a3)
    80002e60:	00c7d513          	srli	a0,a5,0xc
    80002e64:	00c7d69b          	srliw	a3,a5,0xc
    80002e68:	f8b40223          	sb	a1,-124(s0)
    80002e6c:	29067a63          	bgeu	a2,a6,80003100 <__printf+0x638>
    80002e70:	00f6f693          	andi	a3,a3,15
    80002e74:	00dd86b3          	add	a3,s11,a3
    80002e78:	0006c583          	lbu	a1,0(a3)
    80002e7c:	0107d813          	srli	a6,a5,0x10
    80002e80:	0107d69b          	srliw	a3,a5,0x10
    80002e84:	f8b402a3          	sb	a1,-123(s0)
    80002e88:	28a67263          	bgeu	a2,a0,8000310c <__printf+0x644>
    80002e8c:	00f6f693          	andi	a3,a3,15
    80002e90:	00dd86b3          	add	a3,s11,a3
    80002e94:	0006c683          	lbu	a3,0(a3)
    80002e98:	0147d79b          	srliw	a5,a5,0x14
    80002e9c:	f8d40323          	sb	a3,-122(s0)
    80002ea0:	21067663          	bgeu	a2,a6,800030ac <__printf+0x5e4>
    80002ea4:	02079793          	slli	a5,a5,0x20
    80002ea8:	0207d793          	srli	a5,a5,0x20
    80002eac:	00fd8db3          	add	s11,s11,a5
    80002eb0:	000dc683          	lbu	a3,0(s11)
    80002eb4:	00800793          	li	a5,8
    80002eb8:	00700c93          	li	s9,7
    80002ebc:	f8d403a3          	sb	a3,-121(s0)
    80002ec0:	00075c63          	bgez	a4,80002ed8 <__printf+0x410>
    80002ec4:	f9040713          	addi	a4,s0,-112
    80002ec8:	00f70733          	add	a4,a4,a5
    80002ecc:	02d00693          	li	a3,45
    80002ed0:	fed70823          	sb	a3,-16(a4)
    80002ed4:	00078c93          	mv	s9,a5
    80002ed8:	f8040793          	addi	a5,s0,-128
    80002edc:	01978cb3          	add	s9,a5,s9
    80002ee0:	f7f40d13          	addi	s10,s0,-129
    80002ee4:	000cc503          	lbu	a0,0(s9)
    80002ee8:	fffc8c93          	addi	s9,s9,-1
    80002eec:	00000097          	auipc	ra,0x0
    80002ef0:	9f8080e7          	jalr	-1544(ra) # 800028e4 <consputc>
    80002ef4:	ff9d18e3          	bne	s10,s9,80002ee4 <__printf+0x41c>
    80002ef8:	0100006f          	j	80002f08 <__printf+0x440>
    80002efc:	00000097          	auipc	ra,0x0
    80002f00:	9e8080e7          	jalr	-1560(ra) # 800028e4 <consputc>
    80002f04:	000c8493          	mv	s1,s9
    80002f08:	00094503          	lbu	a0,0(s2)
    80002f0c:	c60510e3          	bnez	a0,80002b6c <__printf+0xa4>
    80002f10:	e40c0ee3          	beqz	s8,80002d6c <__printf+0x2a4>
    80002f14:	00004517          	auipc	a0,0x4
    80002f18:	b4c50513          	addi	a0,a0,-1204 # 80006a60 <pr>
    80002f1c:	00001097          	auipc	ra,0x1
    80002f20:	94c080e7          	jalr	-1716(ra) # 80003868 <release>
    80002f24:	e49ff06f          	j	80002d6c <__printf+0x2a4>
    80002f28:	f7843783          	ld	a5,-136(s0)
    80002f2c:	03000513          	li	a0,48
    80002f30:	01000d13          	li	s10,16
    80002f34:	00878713          	addi	a4,a5,8
    80002f38:	0007bc83          	ld	s9,0(a5)
    80002f3c:	f6e43c23          	sd	a4,-136(s0)
    80002f40:	00000097          	auipc	ra,0x0
    80002f44:	9a4080e7          	jalr	-1628(ra) # 800028e4 <consputc>
    80002f48:	07800513          	li	a0,120
    80002f4c:	00000097          	auipc	ra,0x0
    80002f50:	998080e7          	jalr	-1640(ra) # 800028e4 <consputc>
    80002f54:	00002d97          	auipc	s11,0x2
    80002f58:	2bcd8d93          	addi	s11,s11,700 # 80005210 <digits>
    80002f5c:	03ccd793          	srli	a5,s9,0x3c
    80002f60:	00fd87b3          	add	a5,s11,a5
    80002f64:	0007c503          	lbu	a0,0(a5)
    80002f68:	fffd0d1b          	addiw	s10,s10,-1
    80002f6c:	004c9c93          	slli	s9,s9,0x4
    80002f70:	00000097          	auipc	ra,0x0
    80002f74:	974080e7          	jalr	-1676(ra) # 800028e4 <consputc>
    80002f78:	fe0d12e3          	bnez	s10,80002f5c <__printf+0x494>
    80002f7c:	f8dff06f          	j	80002f08 <__printf+0x440>
    80002f80:	f7843783          	ld	a5,-136(s0)
    80002f84:	0007bc83          	ld	s9,0(a5)
    80002f88:	00878793          	addi	a5,a5,8
    80002f8c:	f6f43c23          	sd	a5,-136(s0)
    80002f90:	000c9a63          	bnez	s9,80002fa4 <__printf+0x4dc>
    80002f94:	1080006f          	j	8000309c <__printf+0x5d4>
    80002f98:	001c8c93          	addi	s9,s9,1
    80002f9c:	00000097          	auipc	ra,0x0
    80002fa0:	948080e7          	jalr	-1720(ra) # 800028e4 <consputc>
    80002fa4:	000cc503          	lbu	a0,0(s9)
    80002fa8:	fe0518e3          	bnez	a0,80002f98 <__printf+0x4d0>
    80002fac:	f5dff06f          	j	80002f08 <__printf+0x440>
    80002fb0:	02500513          	li	a0,37
    80002fb4:	00000097          	auipc	ra,0x0
    80002fb8:	930080e7          	jalr	-1744(ra) # 800028e4 <consputc>
    80002fbc:	000c8513          	mv	a0,s9
    80002fc0:	00000097          	auipc	ra,0x0
    80002fc4:	924080e7          	jalr	-1756(ra) # 800028e4 <consputc>
    80002fc8:	f41ff06f          	j	80002f08 <__printf+0x440>
    80002fcc:	02500513          	li	a0,37
    80002fd0:	00000097          	auipc	ra,0x0
    80002fd4:	914080e7          	jalr	-1772(ra) # 800028e4 <consputc>
    80002fd8:	f31ff06f          	j	80002f08 <__printf+0x440>
    80002fdc:	00030513          	mv	a0,t1
    80002fe0:	00000097          	auipc	ra,0x0
    80002fe4:	7bc080e7          	jalr	1980(ra) # 8000379c <acquire>
    80002fe8:	b4dff06f          	j	80002b34 <__printf+0x6c>
    80002fec:	40c0053b          	negw	a0,a2
    80002ff0:	00a00713          	li	a4,10
    80002ff4:	02e576bb          	remuw	a3,a0,a4
    80002ff8:	00002d97          	auipc	s11,0x2
    80002ffc:	218d8d93          	addi	s11,s11,536 # 80005210 <digits>
    80003000:	ff700593          	li	a1,-9
    80003004:	02069693          	slli	a3,a3,0x20
    80003008:	0206d693          	srli	a3,a3,0x20
    8000300c:	00dd86b3          	add	a3,s11,a3
    80003010:	0006c683          	lbu	a3,0(a3)
    80003014:	02e557bb          	divuw	a5,a0,a4
    80003018:	f8d40023          	sb	a3,-128(s0)
    8000301c:	10b65e63          	bge	a2,a1,80003138 <__printf+0x670>
    80003020:	06300593          	li	a1,99
    80003024:	02e7f6bb          	remuw	a3,a5,a4
    80003028:	02069693          	slli	a3,a3,0x20
    8000302c:	0206d693          	srli	a3,a3,0x20
    80003030:	00dd86b3          	add	a3,s11,a3
    80003034:	0006c683          	lbu	a3,0(a3)
    80003038:	02e7d73b          	divuw	a4,a5,a4
    8000303c:	00200793          	li	a5,2
    80003040:	f8d400a3          	sb	a3,-127(s0)
    80003044:	bca5ece3          	bltu	a1,a0,80002c1c <__printf+0x154>
    80003048:	ce5ff06f          	j	80002d2c <__printf+0x264>
    8000304c:	40e007bb          	negw	a5,a4
    80003050:	00002d97          	auipc	s11,0x2
    80003054:	1c0d8d93          	addi	s11,s11,448 # 80005210 <digits>
    80003058:	00f7f693          	andi	a3,a5,15
    8000305c:	00dd86b3          	add	a3,s11,a3
    80003060:	0006c583          	lbu	a1,0(a3)
    80003064:	ff100613          	li	a2,-15
    80003068:	0047d69b          	srliw	a3,a5,0x4
    8000306c:	f8b40023          	sb	a1,-128(s0)
    80003070:	0047d59b          	srliw	a1,a5,0x4
    80003074:	0ac75e63          	bge	a4,a2,80003130 <__printf+0x668>
    80003078:	00f6f693          	andi	a3,a3,15
    8000307c:	00dd86b3          	add	a3,s11,a3
    80003080:	0006c603          	lbu	a2,0(a3)
    80003084:	00f00693          	li	a3,15
    80003088:	0087d79b          	srliw	a5,a5,0x8
    8000308c:	f8c400a3          	sb	a2,-127(s0)
    80003090:	d8b6e4e3          	bltu	a3,a1,80002e18 <__printf+0x350>
    80003094:	00200793          	li	a5,2
    80003098:	e2dff06f          	j	80002ec4 <__printf+0x3fc>
    8000309c:	00002c97          	auipc	s9,0x2
    800030a0:	154c8c93          	addi	s9,s9,340 # 800051f0 <_ZZ12printIntegermE6digits+0x178>
    800030a4:	02800513          	li	a0,40
    800030a8:	ef1ff06f          	j	80002f98 <__printf+0x4d0>
    800030ac:	00700793          	li	a5,7
    800030b0:	00600c93          	li	s9,6
    800030b4:	e0dff06f          	j	80002ec0 <__printf+0x3f8>
    800030b8:	00700793          	li	a5,7
    800030bc:	00600c93          	li	s9,6
    800030c0:	c69ff06f          	j	80002d28 <__printf+0x260>
    800030c4:	00300793          	li	a5,3
    800030c8:	00200c93          	li	s9,2
    800030cc:	c5dff06f          	j	80002d28 <__printf+0x260>
    800030d0:	00300793          	li	a5,3
    800030d4:	00200c93          	li	s9,2
    800030d8:	de9ff06f          	j	80002ec0 <__printf+0x3f8>
    800030dc:	00400793          	li	a5,4
    800030e0:	00300c93          	li	s9,3
    800030e4:	dddff06f          	j	80002ec0 <__printf+0x3f8>
    800030e8:	00400793          	li	a5,4
    800030ec:	00300c93          	li	s9,3
    800030f0:	c39ff06f          	j	80002d28 <__printf+0x260>
    800030f4:	00500793          	li	a5,5
    800030f8:	00400c93          	li	s9,4
    800030fc:	c2dff06f          	j	80002d28 <__printf+0x260>
    80003100:	00500793          	li	a5,5
    80003104:	00400c93          	li	s9,4
    80003108:	db9ff06f          	j	80002ec0 <__printf+0x3f8>
    8000310c:	00600793          	li	a5,6
    80003110:	00500c93          	li	s9,5
    80003114:	dadff06f          	j	80002ec0 <__printf+0x3f8>
    80003118:	00600793          	li	a5,6
    8000311c:	00500c93          	li	s9,5
    80003120:	c09ff06f          	j	80002d28 <__printf+0x260>
    80003124:	00800793          	li	a5,8
    80003128:	00700c93          	li	s9,7
    8000312c:	bfdff06f          	j	80002d28 <__printf+0x260>
    80003130:	00100793          	li	a5,1
    80003134:	d91ff06f          	j	80002ec4 <__printf+0x3fc>
    80003138:	00100793          	li	a5,1
    8000313c:	bf1ff06f          	j	80002d2c <__printf+0x264>
    80003140:	00900793          	li	a5,9
    80003144:	00800c93          	li	s9,8
    80003148:	be1ff06f          	j	80002d28 <__printf+0x260>
    8000314c:	00002517          	auipc	a0,0x2
    80003150:	0ac50513          	addi	a0,a0,172 # 800051f8 <_ZZ12printIntegermE6digits+0x180>
    80003154:	00000097          	auipc	ra,0x0
    80003158:	918080e7          	jalr	-1768(ra) # 80002a6c <panic>

000000008000315c <printfinit>:
    8000315c:	fe010113          	addi	sp,sp,-32
    80003160:	00813823          	sd	s0,16(sp)
    80003164:	00913423          	sd	s1,8(sp)
    80003168:	00113c23          	sd	ra,24(sp)
    8000316c:	02010413          	addi	s0,sp,32
    80003170:	00004497          	auipc	s1,0x4
    80003174:	8f048493          	addi	s1,s1,-1808 # 80006a60 <pr>
    80003178:	00048513          	mv	a0,s1
    8000317c:	00002597          	auipc	a1,0x2
    80003180:	08c58593          	addi	a1,a1,140 # 80005208 <_ZZ12printIntegermE6digits+0x190>
    80003184:	00000097          	auipc	ra,0x0
    80003188:	5f4080e7          	jalr	1524(ra) # 80003778 <initlock>
    8000318c:	01813083          	ld	ra,24(sp)
    80003190:	01013403          	ld	s0,16(sp)
    80003194:	0004ac23          	sw	zero,24(s1)
    80003198:	00813483          	ld	s1,8(sp)
    8000319c:	02010113          	addi	sp,sp,32
    800031a0:	00008067          	ret

00000000800031a4 <uartinit>:
    800031a4:	ff010113          	addi	sp,sp,-16
    800031a8:	00813423          	sd	s0,8(sp)
    800031ac:	01010413          	addi	s0,sp,16
    800031b0:	100007b7          	lui	a5,0x10000
    800031b4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800031b8:	f8000713          	li	a4,-128
    800031bc:	00e781a3          	sb	a4,3(a5)
    800031c0:	00300713          	li	a4,3
    800031c4:	00e78023          	sb	a4,0(a5)
    800031c8:	000780a3          	sb	zero,1(a5)
    800031cc:	00e781a3          	sb	a4,3(a5)
    800031d0:	00700693          	li	a3,7
    800031d4:	00d78123          	sb	a3,2(a5)
    800031d8:	00e780a3          	sb	a4,1(a5)
    800031dc:	00813403          	ld	s0,8(sp)
    800031e0:	01010113          	addi	sp,sp,16
    800031e4:	00008067          	ret

00000000800031e8 <uartputc>:
    800031e8:	00002797          	auipc	a5,0x2
    800031ec:	6007a783          	lw	a5,1536(a5) # 800057e8 <panicked>
    800031f0:	00078463          	beqz	a5,800031f8 <uartputc+0x10>
    800031f4:	0000006f          	j	800031f4 <uartputc+0xc>
    800031f8:	fd010113          	addi	sp,sp,-48
    800031fc:	02813023          	sd	s0,32(sp)
    80003200:	00913c23          	sd	s1,24(sp)
    80003204:	01213823          	sd	s2,16(sp)
    80003208:	01313423          	sd	s3,8(sp)
    8000320c:	02113423          	sd	ra,40(sp)
    80003210:	03010413          	addi	s0,sp,48
    80003214:	00002917          	auipc	s2,0x2
    80003218:	5dc90913          	addi	s2,s2,1500 # 800057f0 <uart_tx_r>
    8000321c:	00093783          	ld	a5,0(s2)
    80003220:	00002497          	auipc	s1,0x2
    80003224:	5d848493          	addi	s1,s1,1496 # 800057f8 <uart_tx_w>
    80003228:	0004b703          	ld	a4,0(s1)
    8000322c:	02078693          	addi	a3,a5,32
    80003230:	00050993          	mv	s3,a0
    80003234:	02e69c63          	bne	a3,a4,8000326c <uartputc+0x84>
    80003238:	00001097          	auipc	ra,0x1
    8000323c:	834080e7          	jalr	-1996(ra) # 80003a6c <push_on>
    80003240:	00093783          	ld	a5,0(s2)
    80003244:	0004b703          	ld	a4,0(s1)
    80003248:	02078793          	addi	a5,a5,32
    8000324c:	00e79463          	bne	a5,a4,80003254 <uartputc+0x6c>
    80003250:	0000006f          	j	80003250 <uartputc+0x68>
    80003254:	00001097          	auipc	ra,0x1
    80003258:	88c080e7          	jalr	-1908(ra) # 80003ae0 <pop_on>
    8000325c:	00093783          	ld	a5,0(s2)
    80003260:	0004b703          	ld	a4,0(s1)
    80003264:	02078693          	addi	a3,a5,32
    80003268:	fce688e3          	beq	a3,a4,80003238 <uartputc+0x50>
    8000326c:	01f77693          	andi	a3,a4,31
    80003270:	00004597          	auipc	a1,0x4
    80003274:	81058593          	addi	a1,a1,-2032 # 80006a80 <uart_tx_buf>
    80003278:	00d586b3          	add	a3,a1,a3
    8000327c:	00170713          	addi	a4,a4,1
    80003280:	01368023          	sb	s3,0(a3)
    80003284:	00e4b023          	sd	a4,0(s1)
    80003288:	10000637          	lui	a2,0x10000
    8000328c:	02f71063          	bne	a4,a5,800032ac <uartputc+0xc4>
    80003290:	0340006f          	j	800032c4 <uartputc+0xdc>
    80003294:	00074703          	lbu	a4,0(a4)
    80003298:	00f93023          	sd	a5,0(s2)
    8000329c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800032a0:	00093783          	ld	a5,0(s2)
    800032a4:	0004b703          	ld	a4,0(s1)
    800032a8:	00f70e63          	beq	a4,a5,800032c4 <uartputc+0xdc>
    800032ac:	00564683          	lbu	a3,5(a2)
    800032b0:	01f7f713          	andi	a4,a5,31
    800032b4:	00e58733          	add	a4,a1,a4
    800032b8:	0206f693          	andi	a3,a3,32
    800032bc:	00178793          	addi	a5,a5,1
    800032c0:	fc069ae3          	bnez	a3,80003294 <uartputc+0xac>
    800032c4:	02813083          	ld	ra,40(sp)
    800032c8:	02013403          	ld	s0,32(sp)
    800032cc:	01813483          	ld	s1,24(sp)
    800032d0:	01013903          	ld	s2,16(sp)
    800032d4:	00813983          	ld	s3,8(sp)
    800032d8:	03010113          	addi	sp,sp,48
    800032dc:	00008067          	ret

00000000800032e0 <uartputc_sync>:
    800032e0:	ff010113          	addi	sp,sp,-16
    800032e4:	00813423          	sd	s0,8(sp)
    800032e8:	01010413          	addi	s0,sp,16
    800032ec:	00002717          	auipc	a4,0x2
    800032f0:	4fc72703          	lw	a4,1276(a4) # 800057e8 <panicked>
    800032f4:	02071663          	bnez	a4,80003320 <uartputc_sync+0x40>
    800032f8:	00050793          	mv	a5,a0
    800032fc:	100006b7          	lui	a3,0x10000
    80003300:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003304:	02077713          	andi	a4,a4,32
    80003308:	fe070ce3          	beqz	a4,80003300 <uartputc_sync+0x20>
    8000330c:	0ff7f793          	andi	a5,a5,255
    80003310:	00f68023          	sb	a5,0(a3)
    80003314:	00813403          	ld	s0,8(sp)
    80003318:	01010113          	addi	sp,sp,16
    8000331c:	00008067          	ret
    80003320:	0000006f          	j	80003320 <uartputc_sync+0x40>

0000000080003324 <uartstart>:
    80003324:	ff010113          	addi	sp,sp,-16
    80003328:	00813423          	sd	s0,8(sp)
    8000332c:	01010413          	addi	s0,sp,16
    80003330:	00002617          	auipc	a2,0x2
    80003334:	4c060613          	addi	a2,a2,1216 # 800057f0 <uart_tx_r>
    80003338:	00002517          	auipc	a0,0x2
    8000333c:	4c050513          	addi	a0,a0,1216 # 800057f8 <uart_tx_w>
    80003340:	00063783          	ld	a5,0(a2)
    80003344:	00053703          	ld	a4,0(a0)
    80003348:	04f70263          	beq	a4,a5,8000338c <uartstart+0x68>
    8000334c:	100005b7          	lui	a1,0x10000
    80003350:	00003817          	auipc	a6,0x3
    80003354:	73080813          	addi	a6,a6,1840 # 80006a80 <uart_tx_buf>
    80003358:	01c0006f          	j	80003374 <uartstart+0x50>
    8000335c:	0006c703          	lbu	a4,0(a3)
    80003360:	00f63023          	sd	a5,0(a2)
    80003364:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003368:	00063783          	ld	a5,0(a2)
    8000336c:	00053703          	ld	a4,0(a0)
    80003370:	00f70e63          	beq	a4,a5,8000338c <uartstart+0x68>
    80003374:	01f7f713          	andi	a4,a5,31
    80003378:	00e806b3          	add	a3,a6,a4
    8000337c:	0055c703          	lbu	a4,5(a1)
    80003380:	00178793          	addi	a5,a5,1
    80003384:	02077713          	andi	a4,a4,32
    80003388:	fc071ae3          	bnez	a4,8000335c <uartstart+0x38>
    8000338c:	00813403          	ld	s0,8(sp)
    80003390:	01010113          	addi	sp,sp,16
    80003394:	00008067          	ret

0000000080003398 <uartgetc>:
    80003398:	ff010113          	addi	sp,sp,-16
    8000339c:	00813423          	sd	s0,8(sp)
    800033a0:	01010413          	addi	s0,sp,16
    800033a4:	10000737          	lui	a4,0x10000
    800033a8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800033ac:	0017f793          	andi	a5,a5,1
    800033b0:	00078c63          	beqz	a5,800033c8 <uartgetc+0x30>
    800033b4:	00074503          	lbu	a0,0(a4)
    800033b8:	0ff57513          	andi	a0,a0,255
    800033bc:	00813403          	ld	s0,8(sp)
    800033c0:	01010113          	addi	sp,sp,16
    800033c4:	00008067          	ret
    800033c8:	fff00513          	li	a0,-1
    800033cc:	ff1ff06f          	j	800033bc <uartgetc+0x24>

00000000800033d0 <uartintr>:
    800033d0:	100007b7          	lui	a5,0x10000
    800033d4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800033d8:	0017f793          	andi	a5,a5,1
    800033dc:	0a078463          	beqz	a5,80003484 <uartintr+0xb4>
    800033e0:	fe010113          	addi	sp,sp,-32
    800033e4:	00813823          	sd	s0,16(sp)
    800033e8:	00913423          	sd	s1,8(sp)
    800033ec:	00113c23          	sd	ra,24(sp)
    800033f0:	02010413          	addi	s0,sp,32
    800033f4:	100004b7          	lui	s1,0x10000
    800033f8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800033fc:	0ff57513          	andi	a0,a0,255
    80003400:	fffff097          	auipc	ra,0xfffff
    80003404:	534080e7          	jalr	1332(ra) # 80002934 <consoleintr>
    80003408:	0054c783          	lbu	a5,5(s1)
    8000340c:	0017f793          	andi	a5,a5,1
    80003410:	fe0794e3          	bnez	a5,800033f8 <uartintr+0x28>
    80003414:	00002617          	auipc	a2,0x2
    80003418:	3dc60613          	addi	a2,a2,988 # 800057f0 <uart_tx_r>
    8000341c:	00002517          	auipc	a0,0x2
    80003420:	3dc50513          	addi	a0,a0,988 # 800057f8 <uart_tx_w>
    80003424:	00063783          	ld	a5,0(a2)
    80003428:	00053703          	ld	a4,0(a0)
    8000342c:	04f70263          	beq	a4,a5,80003470 <uartintr+0xa0>
    80003430:	100005b7          	lui	a1,0x10000
    80003434:	00003817          	auipc	a6,0x3
    80003438:	64c80813          	addi	a6,a6,1612 # 80006a80 <uart_tx_buf>
    8000343c:	01c0006f          	j	80003458 <uartintr+0x88>
    80003440:	0006c703          	lbu	a4,0(a3)
    80003444:	00f63023          	sd	a5,0(a2)
    80003448:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000344c:	00063783          	ld	a5,0(a2)
    80003450:	00053703          	ld	a4,0(a0)
    80003454:	00f70e63          	beq	a4,a5,80003470 <uartintr+0xa0>
    80003458:	01f7f713          	andi	a4,a5,31
    8000345c:	00e806b3          	add	a3,a6,a4
    80003460:	0055c703          	lbu	a4,5(a1)
    80003464:	00178793          	addi	a5,a5,1
    80003468:	02077713          	andi	a4,a4,32
    8000346c:	fc071ae3          	bnez	a4,80003440 <uartintr+0x70>
    80003470:	01813083          	ld	ra,24(sp)
    80003474:	01013403          	ld	s0,16(sp)
    80003478:	00813483          	ld	s1,8(sp)
    8000347c:	02010113          	addi	sp,sp,32
    80003480:	00008067          	ret
    80003484:	00002617          	auipc	a2,0x2
    80003488:	36c60613          	addi	a2,a2,876 # 800057f0 <uart_tx_r>
    8000348c:	00002517          	auipc	a0,0x2
    80003490:	36c50513          	addi	a0,a0,876 # 800057f8 <uart_tx_w>
    80003494:	00063783          	ld	a5,0(a2)
    80003498:	00053703          	ld	a4,0(a0)
    8000349c:	04f70263          	beq	a4,a5,800034e0 <uartintr+0x110>
    800034a0:	100005b7          	lui	a1,0x10000
    800034a4:	00003817          	auipc	a6,0x3
    800034a8:	5dc80813          	addi	a6,a6,1500 # 80006a80 <uart_tx_buf>
    800034ac:	01c0006f          	j	800034c8 <uartintr+0xf8>
    800034b0:	0006c703          	lbu	a4,0(a3)
    800034b4:	00f63023          	sd	a5,0(a2)
    800034b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800034bc:	00063783          	ld	a5,0(a2)
    800034c0:	00053703          	ld	a4,0(a0)
    800034c4:	02f70063          	beq	a4,a5,800034e4 <uartintr+0x114>
    800034c8:	01f7f713          	andi	a4,a5,31
    800034cc:	00e806b3          	add	a3,a6,a4
    800034d0:	0055c703          	lbu	a4,5(a1)
    800034d4:	00178793          	addi	a5,a5,1
    800034d8:	02077713          	andi	a4,a4,32
    800034dc:	fc071ae3          	bnez	a4,800034b0 <uartintr+0xe0>
    800034e0:	00008067          	ret
    800034e4:	00008067          	ret

00000000800034e8 <kinit>:
    800034e8:	fc010113          	addi	sp,sp,-64
    800034ec:	02913423          	sd	s1,40(sp)
    800034f0:	fffff7b7          	lui	a5,0xfffff
    800034f4:	00004497          	auipc	s1,0x4
    800034f8:	5bb48493          	addi	s1,s1,1467 # 80007aaf <end+0xfff>
    800034fc:	02813823          	sd	s0,48(sp)
    80003500:	01313c23          	sd	s3,24(sp)
    80003504:	00f4f4b3          	and	s1,s1,a5
    80003508:	02113c23          	sd	ra,56(sp)
    8000350c:	03213023          	sd	s2,32(sp)
    80003510:	01413823          	sd	s4,16(sp)
    80003514:	01513423          	sd	s5,8(sp)
    80003518:	04010413          	addi	s0,sp,64
    8000351c:	000017b7          	lui	a5,0x1
    80003520:	01100993          	li	s3,17
    80003524:	00f487b3          	add	a5,s1,a5
    80003528:	01b99993          	slli	s3,s3,0x1b
    8000352c:	06f9e063          	bltu	s3,a5,8000358c <kinit+0xa4>
    80003530:	00003a97          	auipc	s5,0x3
    80003534:	580a8a93          	addi	s5,s5,1408 # 80006ab0 <end>
    80003538:	0754ec63          	bltu	s1,s5,800035b0 <kinit+0xc8>
    8000353c:	0734fa63          	bgeu	s1,s3,800035b0 <kinit+0xc8>
    80003540:	00088a37          	lui	s4,0x88
    80003544:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003548:	00002917          	auipc	s2,0x2
    8000354c:	2b890913          	addi	s2,s2,696 # 80005800 <kmem>
    80003550:	00ca1a13          	slli	s4,s4,0xc
    80003554:	0140006f          	j	80003568 <kinit+0x80>
    80003558:	000017b7          	lui	a5,0x1
    8000355c:	00f484b3          	add	s1,s1,a5
    80003560:	0554e863          	bltu	s1,s5,800035b0 <kinit+0xc8>
    80003564:	0534f663          	bgeu	s1,s3,800035b0 <kinit+0xc8>
    80003568:	00001637          	lui	a2,0x1
    8000356c:	00100593          	li	a1,1
    80003570:	00048513          	mv	a0,s1
    80003574:	00000097          	auipc	ra,0x0
    80003578:	5e4080e7          	jalr	1508(ra) # 80003b58 <__memset>
    8000357c:	00093783          	ld	a5,0(s2)
    80003580:	00f4b023          	sd	a5,0(s1)
    80003584:	00993023          	sd	s1,0(s2)
    80003588:	fd4498e3          	bne	s1,s4,80003558 <kinit+0x70>
    8000358c:	03813083          	ld	ra,56(sp)
    80003590:	03013403          	ld	s0,48(sp)
    80003594:	02813483          	ld	s1,40(sp)
    80003598:	02013903          	ld	s2,32(sp)
    8000359c:	01813983          	ld	s3,24(sp)
    800035a0:	01013a03          	ld	s4,16(sp)
    800035a4:	00813a83          	ld	s5,8(sp)
    800035a8:	04010113          	addi	sp,sp,64
    800035ac:	00008067          	ret
    800035b0:	00002517          	auipc	a0,0x2
    800035b4:	c7850513          	addi	a0,a0,-904 # 80005228 <digits+0x18>
    800035b8:	fffff097          	auipc	ra,0xfffff
    800035bc:	4b4080e7          	jalr	1204(ra) # 80002a6c <panic>

00000000800035c0 <freerange>:
    800035c0:	fc010113          	addi	sp,sp,-64
    800035c4:	000017b7          	lui	a5,0x1
    800035c8:	02913423          	sd	s1,40(sp)
    800035cc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800035d0:	009504b3          	add	s1,a0,s1
    800035d4:	fffff537          	lui	a0,0xfffff
    800035d8:	02813823          	sd	s0,48(sp)
    800035dc:	02113c23          	sd	ra,56(sp)
    800035e0:	03213023          	sd	s2,32(sp)
    800035e4:	01313c23          	sd	s3,24(sp)
    800035e8:	01413823          	sd	s4,16(sp)
    800035ec:	01513423          	sd	s5,8(sp)
    800035f0:	01613023          	sd	s6,0(sp)
    800035f4:	04010413          	addi	s0,sp,64
    800035f8:	00a4f4b3          	and	s1,s1,a0
    800035fc:	00f487b3          	add	a5,s1,a5
    80003600:	06f5e463          	bltu	a1,a5,80003668 <freerange+0xa8>
    80003604:	00003a97          	auipc	s5,0x3
    80003608:	4aca8a93          	addi	s5,s5,1196 # 80006ab0 <end>
    8000360c:	0954e263          	bltu	s1,s5,80003690 <freerange+0xd0>
    80003610:	01100993          	li	s3,17
    80003614:	01b99993          	slli	s3,s3,0x1b
    80003618:	0734fc63          	bgeu	s1,s3,80003690 <freerange+0xd0>
    8000361c:	00058a13          	mv	s4,a1
    80003620:	00002917          	auipc	s2,0x2
    80003624:	1e090913          	addi	s2,s2,480 # 80005800 <kmem>
    80003628:	00002b37          	lui	s6,0x2
    8000362c:	0140006f          	j	80003640 <freerange+0x80>
    80003630:	000017b7          	lui	a5,0x1
    80003634:	00f484b3          	add	s1,s1,a5
    80003638:	0554ec63          	bltu	s1,s5,80003690 <freerange+0xd0>
    8000363c:	0534fa63          	bgeu	s1,s3,80003690 <freerange+0xd0>
    80003640:	00001637          	lui	a2,0x1
    80003644:	00100593          	li	a1,1
    80003648:	00048513          	mv	a0,s1
    8000364c:	00000097          	auipc	ra,0x0
    80003650:	50c080e7          	jalr	1292(ra) # 80003b58 <__memset>
    80003654:	00093703          	ld	a4,0(s2)
    80003658:	016487b3          	add	a5,s1,s6
    8000365c:	00e4b023          	sd	a4,0(s1)
    80003660:	00993023          	sd	s1,0(s2)
    80003664:	fcfa76e3          	bgeu	s4,a5,80003630 <freerange+0x70>
    80003668:	03813083          	ld	ra,56(sp)
    8000366c:	03013403          	ld	s0,48(sp)
    80003670:	02813483          	ld	s1,40(sp)
    80003674:	02013903          	ld	s2,32(sp)
    80003678:	01813983          	ld	s3,24(sp)
    8000367c:	01013a03          	ld	s4,16(sp)
    80003680:	00813a83          	ld	s5,8(sp)
    80003684:	00013b03          	ld	s6,0(sp)
    80003688:	04010113          	addi	sp,sp,64
    8000368c:	00008067          	ret
    80003690:	00002517          	auipc	a0,0x2
    80003694:	b9850513          	addi	a0,a0,-1128 # 80005228 <digits+0x18>
    80003698:	fffff097          	auipc	ra,0xfffff
    8000369c:	3d4080e7          	jalr	980(ra) # 80002a6c <panic>

00000000800036a0 <kfree>:
    800036a0:	fe010113          	addi	sp,sp,-32
    800036a4:	00813823          	sd	s0,16(sp)
    800036a8:	00113c23          	sd	ra,24(sp)
    800036ac:	00913423          	sd	s1,8(sp)
    800036b0:	02010413          	addi	s0,sp,32
    800036b4:	03451793          	slli	a5,a0,0x34
    800036b8:	04079c63          	bnez	a5,80003710 <kfree+0x70>
    800036bc:	00003797          	auipc	a5,0x3
    800036c0:	3f478793          	addi	a5,a5,1012 # 80006ab0 <end>
    800036c4:	00050493          	mv	s1,a0
    800036c8:	04f56463          	bltu	a0,a5,80003710 <kfree+0x70>
    800036cc:	01100793          	li	a5,17
    800036d0:	01b79793          	slli	a5,a5,0x1b
    800036d4:	02f57e63          	bgeu	a0,a5,80003710 <kfree+0x70>
    800036d8:	00001637          	lui	a2,0x1
    800036dc:	00100593          	li	a1,1
    800036e0:	00000097          	auipc	ra,0x0
    800036e4:	478080e7          	jalr	1144(ra) # 80003b58 <__memset>
    800036e8:	00002797          	auipc	a5,0x2
    800036ec:	11878793          	addi	a5,a5,280 # 80005800 <kmem>
    800036f0:	0007b703          	ld	a4,0(a5)
    800036f4:	01813083          	ld	ra,24(sp)
    800036f8:	01013403          	ld	s0,16(sp)
    800036fc:	00e4b023          	sd	a4,0(s1)
    80003700:	0097b023          	sd	s1,0(a5)
    80003704:	00813483          	ld	s1,8(sp)
    80003708:	02010113          	addi	sp,sp,32
    8000370c:	00008067          	ret
    80003710:	00002517          	auipc	a0,0x2
    80003714:	b1850513          	addi	a0,a0,-1256 # 80005228 <digits+0x18>
    80003718:	fffff097          	auipc	ra,0xfffff
    8000371c:	354080e7          	jalr	852(ra) # 80002a6c <panic>

0000000080003720 <kalloc>:
    80003720:	fe010113          	addi	sp,sp,-32
    80003724:	00813823          	sd	s0,16(sp)
    80003728:	00913423          	sd	s1,8(sp)
    8000372c:	00113c23          	sd	ra,24(sp)
    80003730:	02010413          	addi	s0,sp,32
    80003734:	00002797          	auipc	a5,0x2
    80003738:	0cc78793          	addi	a5,a5,204 # 80005800 <kmem>
    8000373c:	0007b483          	ld	s1,0(a5)
    80003740:	02048063          	beqz	s1,80003760 <kalloc+0x40>
    80003744:	0004b703          	ld	a4,0(s1)
    80003748:	00001637          	lui	a2,0x1
    8000374c:	00500593          	li	a1,5
    80003750:	00048513          	mv	a0,s1
    80003754:	00e7b023          	sd	a4,0(a5)
    80003758:	00000097          	auipc	ra,0x0
    8000375c:	400080e7          	jalr	1024(ra) # 80003b58 <__memset>
    80003760:	01813083          	ld	ra,24(sp)
    80003764:	01013403          	ld	s0,16(sp)
    80003768:	00048513          	mv	a0,s1
    8000376c:	00813483          	ld	s1,8(sp)
    80003770:	02010113          	addi	sp,sp,32
    80003774:	00008067          	ret

0000000080003778 <initlock>:
    80003778:	ff010113          	addi	sp,sp,-16
    8000377c:	00813423          	sd	s0,8(sp)
    80003780:	01010413          	addi	s0,sp,16
    80003784:	00813403          	ld	s0,8(sp)
    80003788:	00b53423          	sd	a1,8(a0)
    8000378c:	00052023          	sw	zero,0(a0)
    80003790:	00053823          	sd	zero,16(a0)
    80003794:	01010113          	addi	sp,sp,16
    80003798:	00008067          	ret

000000008000379c <acquire>:
    8000379c:	fe010113          	addi	sp,sp,-32
    800037a0:	00813823          	sd	s0,16(sp)
    800037a4:	00913423          	sd	s1,8(sp)
    800037a8:	00113c23          	sd	ra,24(sp)
    800037ac:	01213023          	sd	s2,0(sp)
    800037b0:	02010413          	addi	s0,sp,32
    800037b4:	00050493          	mv	s1,a0
    800037b8:	10002973          	csrr	s2,sstatus
    800037bc:	100027f3          	csrr	a5,sstatus
    800037c0:	ffd7f793          	andi	a5,a5,-3
    800037c4:	10079073          	csrw	sstatus,a5
    800037c8:	fffff097          	auipc	ra,0xfffff
    800037cc:	8e8080e7          	jalr	-1816(ra) # 800020b0 <mycpu>
    800037d0:	07852783          	lw	a5,120(a0)
    800037d4:	06078e63          	beqz	a5,80003850 <acquire+0xb4>
    800037d8:	fffff097          	auipc	ra,0xfffff
    800037dc:	8d8080e7          	jalr	-1832(ra) # 800020b0 <mycpu>
    800037e0:	07852783          	lw	a5,120(a0)
    800037e4:	0004a703          	lw	a4,0(s1)
    800037e8:	0017879b          	addiw	a5,a5,1
    800037ec:	06f52c23          	sw	a5,120(a0)
    800037f0:	04071063          	bnez	a4,80003830 <acquire+0x94>
    800037f4:	00100713          	li	a4,1
    800037f8:	00070793          	mv	a5,a4
    800037fc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003800:	0007879b          	sext.w	a5,a5
    80003804:	fe079ae3          	bnez	a5,800037f8 <acquire+0x5c>
    80003808:	0ff0000f          	fence
    8000380c:	fffff097          	auipc	ra,0xfffff
    80003810:	8a4080e7          	jalr	-1884(ra) # 800020b0 <mycpu>
    80003814:	01813083          	ld	ra,24(sp)
    80003818:	01013403          	ld	s0,16(sp)
    8000381c:	00a4b823          	sd	a0,16(s1)
    80003820:	00013903          	ld	s2,0(sp)
    80003824:	00813483          	ld	s1,8(sp)
    80003828:	02010113          	addi	sp,sp,32
    8000382c:	00008067          	ret
    80003830:	0104b903          	ld	s2,16(s1)
    80003834:	fffff097          	auipc	ra,0xfffff
    80003838:	87c080e7          	jalr	-1924(ra) # 800020b0 <mycpu>
    8000383c:	faa91ce3          	bne	s2,a0,800037f4 <acquire+0x58>
    80003840:	00002517          	auipc	a0,0x2
    80003844:	9f050513          	addi	a0,a0,-1552 # 80005230 <digits+0x20>
    80003848:	fffff097          	auipc	ra,0xfffff
    8000384c:	224080e7          	jalr	548(ra) # 80002a6c <panic>
    80003850:	00195913          	srli	s2,s2,0x1
    80003854:	fffff097          	auipc	ra,0xfffff
    80003858:	85c080e7          	jalr	-1956(ra) # 800020b0 <mycpu>
    8000385c:	00197913          	andi	s2,s2,1
    80003860:	07252e23          	sw	s2,124(a0)
    80003864:	f75ff06f          	j	800037d8 <acquire+0x3c>

0000000080003868 <release>:
    80003868:	fe010113          	addi	sp,sp,-32
    8000386c:	00813823          	sd	s0,16(sp)
    80003870:	00113c23          	sd	ra,24(sp)
    80003874:	00913423          	sd	s1,8(sp)
    80003878:	01213023          	sd	s2,0(sp)
    8000387c:	02010413          	addi	s0,sp,32
    80003880:	00052783          	lw	a5,0(a0)
    80003884:	00079a63          	bnez	a5,80003898 <release+0x30>
    80003888:	00002517          	auipc	a0,0x2
    8000388c:	9b050513          	addi	a0,a0,-1616 # 80005238 <digits+0x28>
    80003890:	fffff097          	auipc	ra,0xfffff
    80003894:	1dc080e7          	jalr	476(ra) # 80002a6c <panic>
    80003898:	01053903          	ld	s2,16(a0)
    8000389c:	00050493          	mv	s1,a0
    800038a0:	fffff097          	auipc	ra,0xfffff
    800038a4:	810080e7          	jalr	-2032(ra) # 800020b0 <mycpu>
    800038a8:	fea910e3          	bne	s2,a0,80003888 <release+0x20>
    800038ac:	0004b823          	sd	zero,16(s1)
    800038b0:	0ff0000f          	fence
    800038b4:	0f50000f          	fence	iorw,ow
    800038b8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800038bc:	ffffe097          	auipc	ra,0xffffe
    800038c0:	7f4080e7          	jalr	2036(ra) # 800020b0 <mycpu>
    800038c4:	100027f3          	csrr	a5,sstatus
    800038c8:	0027f793          	andi	a5,a5,2
    800038cc:	04079a63          	bnez	a5,80003920 <release+0xb8>
    800038d0:	07852783          	lw	a5,120(a0)
    800038d4:	02f05e63          	blez	a5,80003910 <release+0xa8>
    800038d8:	fff7871b          	addiw	a4,a5,-1
    800038dc:	06e52c23          	sw	a4,120(a0)
    800038e0:	00071c63          	bnez	a4,800038f8 <release+0x90>
    800038e4:	07c52783          	lw	a5,124(a0)
    800038e8:	00078863          	beqz	a5,800038f8 <release+0x90>
    800038ec:	100027f3          	csrr	a5,sstatus
    800038f0:	0027e793          	ori	a5,a5,2
    800038f4:	10079073          	csrw	sstatus,a5
    800038f8:	01813083          	ld	ra,24(sp)
    800038fc:	01013403          	ld	s0,16(sp)
    80003900:	00813483          	ld	s1,8(sp)
    80003904:	00013903          	ld	s2,0(sp)
    80003908:	02010113          	addi	sp,sp,32
    8000390c:	00008067          	ret
    80003910:	00002517          	auipc	a0,0x2
    80003914:	94850513          	addi	a0,a0,-1720 # 80005258 <digits+0x48>
    80003918:	fffff097          	auipc	ra,0xfffff
    8000391c:	154080e7          	jalr	340(ra) # 80002a6c <panic>
    80003920:	00002517          	auipc	a0,0x2
    80003924:	92050513          	addi	a0,a0,-1760 # 80005240 <digits+0x30>
    80003928:	fffff097          	auipc	ra,0xfffff
    8000392c:	144080e7          	jalr	324(ra) # 80002a6c <panic>

0000000080003930 <holding>:
    80003930:	00052783          	lw	a5,0(a0)
    80003934:	00079663          	bnez	a5,80003940 <holding+0x10>
    80003938:	00000513          	li	a0,0
    8000393c:	00008067          	ret
    80003940:	fe010113          	addi	sp,sp,-32
    80003944:	00813823          	sd	s0,16(sp)
    80003948:	00913423          	sd	s1,8(sp)
    8000394c:	00113c23          	sd	ra,24(sp)
    80003950:	02010413          	addi	s0,sp,32
    80003954:	01053483          	ld	s1,16(a0)
    80003958:	ffffe097          	auipc	ra,0xffffe
    8000395c:	758080e7          	jalr	1880(ra) # 800020b0 <mycpu>
    80003960:	01813083          	ld	ra,24(sp)
    80003964:	01013403          	ld	s0,16(sp)
    80003968:	40a48533          	sub	a0,s1,a0
    8000396c:	00153513          	seqz	a0,a0
    80003970:	00813483          	ld	s1,8(sp)
    80003974:	02010113          	addi	sp,sp,32
    80003978:	00008067          	ret

000000008000397c <push_off>:
    8000397c:	fe010113          	addi	sp,sp,-32
    80003980:	00813823          	sd	s0,16(sp)
    80003984:	00113c23          	sd	ra,24(sp)
    80003988:	00913423          	sd	s1,8(sp)
    8000398c:	02010413          	addi	s0,sp,32
    80003990:	100024f3          	csrr	s1,sstatus
    80003994:	100027f3          	csrr	a5,sstatus
    80003998:	ffd7f793          	andi	a5,a5,-3
    8000399c:	10079073          	csrw	sstatus,a5
    800039a0:	ffffe097          	auipc	ra,0xffffe
    800039a4:	710080e7          	jalr	1808(ra) # 800020b0 <mycpu>
    800039a8:	07852783          	lw	a5,120(a0)
    800039ac:	02078663          	beqz	a5,800039d8 <push_off+0x5c>
    800039b0:	ffffe097          	auipc	ra,0xffffe
    800039b4:	700080e7          	jalr	1792(ra) # 800020b0 <mycpu>
    800039b8:	07852783          	lw	a5,120(a0)
    800039bc:	01813083          	ld	ra,24(sp)
    800039c0:	01013403          	ld	s0,16(sp)
    800039c4:	0017879b          	addiw	a5,a5,1
    800039c8:	06f52c23          	sw	a5,120(a0)
    800039cc:	00813483          	ld	s1,8(sp)
    800039d0:	02010113          	addi	sp,sp,32
    800039d4:	00008067          	ret
    800039d8:	0014d493          	srli	s1,s1,0x1
    800039dc:	ffffe097          	auipc	ra,0xffffe
    800039e0:	6d4080e7          	jalr	1748(ra) # 800020b0 <mycpu>
    800039e4:	0014f493          	andi	s1,s1,1
    800039e8:	06952e23          	sw	s1,124(a0)
    800039ec:	fc5ff06f          	j	800039b0 <push_off+0x34>

00000000800039f0 <pop_off>:
    800039f0:	ff010113          	addi	sp,sp,-16
    800039f4:	00813023          	sd	s0,0(sp)
    800039f8:	00113423          	sd	ra,8(sp)
    800039fc:	01010413          	addi	s0,sp,16
    80003a00:	ffffe097          	auipc	ra,0xffffe
    80003a04:	6b0080e7          	jalr	1712(ra) # 800020b0 <mycpu>
    80003a08:	100027f3          	csrr	a5,sstatus
    80003a0c:	0027f793          	andi	a5,a5,2
    80003a10:	04079663          	bnez	a5,80003a5c <pop_off+0x6c>
    80003a14:	07852783          	lw	a5,120(a0)
    80003a18:	02f05a63          	blez	a5,80003a4c <pop_off+0x5c>
    80003a1c:	fff7871b          	addiw	a4,a5,-1
    80003a20:	06e52c23          	sw	a4,120(a0)
    80003a24:	00071c63          	bnez	a4,80003a3c <pop_off+0x4c>
    80003a28:	07c52783          	lw	a5,124(a0)
    80003a2c:	00078863          	beqz	a5,80003a3c <pop_off+0x4c>
    80003a30:	100027f3          	csrr	a5,sstatus
    80003a34:	0027e793          	ori	a5,a5,2
    80003a38:	10079073          	csrw	sstatus,a5
    80003a3c:	00813083          	ld	ra,8(sp)
    80003a40:	00013403          	ld	s0,0(sp)
    80003a44:	01010113          	addi	sp,sp,16
    80003a48:	00008067          	ret
    80003a4c:	00002517          	auipc	a0,0x2
    80003a50:	80c50513          	addi	a0,a0,-2036 # 80005258 <digits+0x48>
    80003a54:	fffff097          	auipc	ra,0xfffff
    80003a58:	018080e7          	jalr	24(ra) # 80002a6c <panic>
    80003a5c:	00001517          	auipc	a0,0x1
    80003a60:	7e450513          	addi	a0,a0,2020 # 80005240 <digits+0x30>
    80003a64:	fffff097          	auipc	ra,0xfffff
    80003a68:	008080e7          	jalr	8(ra) # 80002a6c <panic>

0000000080003a6c <push_on>:
    80003a6c:	fe010113          	addi	sp,sp,-32
    80003a70:	00813823          	sd	s0,16(sp)
    80003a74:	00113c23          	sd	ra,24(sp)
    80003a78:	00913423          	sd	s1,8(sp)
    80003a7c:	02010413          	addi	s0,sp,32
    80003a80:	100024f3          	csrr	s1,sstatus
    80003a84:	100027f3          	csrr	a5,sstatus
    80003a88:	0027e793          	ori	a5,a5,2
    80003a8c:	10079073          	csrw	sstatus,a5
    80003a90:	ffffe097          	auipc	ra,0xffffe
    80003a94:	620080e7          	jalr	1568(ra) # 800020b0 <mycpu>
    80003a98:	07852783          	lw	a5,120(a0)
    80003a9c:	02078663          	beqz	a5,80003ac8 <push_on+0x5c>
    80003aa0:	ffffe097          	auipc	ra,0xffffe
    80003aa4:	610080e7          	jalr	1552(ra) # 800020b0 <mycpu>
    80003aa8:	07852783          	lw	a5,120(a0)
    80003aac:	01813083          	ld	ra,24(sp)
    80003ab0:	01013403          	ld	s0,16(sp)
    80003ab4:	0017879b          	addiw	a5,a5,1
    80003ab8:	06f52c23          	sw	a5,120(a0)
    80003abc:	00813483          	ld	s1,8(sp)
    80003ac0:	02010113          	addi	sp,sp,32
    80003ac4:	00008067          	ret
    80003ac8:	0014d493          	srli	s1,s1,0x1
    80003acc:	ffffe097          	auipc	ra,0xffffe
    80003ad0:	5e4080e7          	jalr	1508(ra) # 800020b0 <mycpu>
    80003ad4:	0014f493          	andi	s1,s1,1
    80003ad8:	06952e23          	sw	s1,124(a0)
    80003adc:	fc5ff06f          	j	80003aa0 <push_on+0x34>

0000000080003ae0 <pop_on>:
    80003ae0:	ff010113          	addi	sp,sp,-16
    80003ae4:	00813023          	sd	s0,0(sp)
    80003ae8:	00113423          	sd	ra,8(sp)
    80003aec:	01010413          	addi	s0,sp,16
    80003af0:	ffffe097          	auipc	ra,0xffffe
    80003af4:	5c0080e7          	jalr	1472(ra) # 800020b0 <mycpu>
    80003af8:	100027f3          	csrr	a5,sstatus
    80003afc:	0027f793          	andi	a5,a5,2
    80003b00:	04078463          	beqz	a5,80003b48 <pop_on+0x68>
    80003b04:	07852783          	lw	a5,120(a0)
    80003b08:	02f05863          	blez	a5,80003b38 <pop_on+0x58>
    80003b0c:	fff7879b          	addiw	a5,a5,-1
    80003b10:	06f52c23          	sw	a5,120(a0)
    80003b14:	07853783          	ld	a5,120(a0)
    80003b18:	00079863          	bnez	a5,80003b28 <pop_on+0x48>
    80003b1c:	100027f3          	csrr	a5,sstatus
    80003b20:	ffd7f793          	andi	a5,a5,-3
    80003b24:	10079073          	csrw	sstatus,a5
    80003b28:	00813083          	ld	ra,8(sp)
    80003b2c:	00013403          	ld	s0,0(sp)
    80003b30:	01010113          	addi	sp,sp,16
    80003b34:	00008067          	ret
    80003b38:	00001517          	auipc	a0,0x1
    80003b3c:	74850513          	addi	a0,a0,1864 # 80005280 <digits+0x70>
    80003b40:	fffff097          	auipc	ra,0xfffff
    80003b44:	f2c080e7          	jalr	-212(ra) # 80002a6c <panic>
    80003b48:	00001517          	auipc	a0,0x1
    80003b4c:	71850513          	addi	a0,a0,1816 # 80005260 <digits+0x50>
    80003b50:	fffff097          	auipc	ra,0xfffff
    80003b54:	f1c080e7          	jalr	-228(ra) # 80002a6c <panic>

0000000080003b58 <__memset>:
    80003b58:	ff010113          	addi	sp,sp,-16
    80003b5c:	00813423          	sd	s0,8(sp)
    80003b60:	01010413          	addi	s0,sp,16
    80003b64:	1a060e63          	beqz	a2,80003d20 <__memset+0x1c8>
    80003b68:	40a007b3          	neg	a5,a0
    80003b6c:	0077f793          	andi	a5,a5,7
    80003b70:	00778693          	addi	a3,a5,7
    80003b74:	00b00813          	li	a6,11
    80003b78:	0ff5f593          	andi	a1,a1,255
    80003b7c:	fff6071b          	addiw	a4,a2,-1
    80003b80:	1b06e663          	bltu	a3,a6,80003d2c <__memset+0x1d4>
    80003b84:	1cd76463          	bltu	a4,a3,80003d4c <__memset+0x1f4>
    80003b88:	1a078e63          	beqz	a5,80003d44 <__memset+0x1ec>
    80003b8c:	00b50023          	sb	a1,0(a0)
    80003b90:	00100713          	li	a4,1
    80003b94:	1ae78463          	beq	a5,a4,80003d3c <__memset+0x1e4>
    80003b98:	00b500a3          	sb	a1,1(a0)
    80003b9c:	00200713          	li	a4,2
    80003ba0:	1ae78a63          	beq	a5,a4,80003d54 <__memset+0x1fc>
    80003ba4:	00b50123          	sb	a1,2(a0)
    80003ba8:	00300713          	li	a4,3
    80003bac:	18e78463          	beq	a5,a4,80003d34 <__memset+0x1dc>
    80003bb0:	00b501a3          	sb	a1,3(a0)
    80003bb4:	00400713          	li	a4,4
    80003bb8:	1ae78263          	beq	a5,a4,80003d5c <__memset+0x204>
    80003bbc:	00b50223          	sb	a1,4(a0)
    80003bc0:	00500713          	li	a4,5
    80003bc4:	1ae78063          	beq	a5,a4,80003d64 <__memset+0x20c>
    80003bc8:	00b502a3          	sb	a1,5(a0)
    80003bcc:	00700713          	li	a4,7
    80003bd0:	18e79e63          	bne	a5,a4,80003d6c <__memset+0x214>
    80003bd4:	00b50323          	sb	a1,6(a0)
    80003bd8:	00700e93          	li	t4,7
    80003bdc:	00859713          	slli	a4,a1,0x8
    80003be0:	00e5e733          	or	a4,a1,a4
    80003be4:	01059e13          	slli	t3,a1,0x10
    80003be8:	01c76e33          	or	t3,a4,t3
    80003bec:	01859313          	slli	t1,a1,0x18
    80003bf0:	006e6333          	or	t1,t3,t1
    80003bf4:	02059893          	slli	a7,a1,0x20
    80003bf8:	40f60e3b          	subw	t3,a2,a5
    80003bfc:	011368b3          	or	a7,t1,a7
    80003c00:	02859813          	slli	a6,a1,0x28
    80003c04:	0108e833          	or	a6,a7,a6
    80003c08:	03059693          	slli	a3,a1,0x30
    80003c0c:	003e589b          	srliw	a7,t3,0x3
    80003c10:	00d866b3          	or	a3,a6,a3
    80003c14:	03859713          	slli	a4,a1,0x38
    80003c18:	00389813          	slli	a6,a7,0x3
    80003c1c:	00f507b3          	add	a5,a0,a5
    80003c20:	00e6e733          	or	a4,a3,a4
    80003c24:	000e089b          	sext.w	a7,t3
    80003c28:	00f806b3          	add	a3,a6,a5
    80003c2c:	00e7b023          	sd	a4,0(a5)
    80003c30:	00878793          	addi	a5,a5,8
    80003c34:	fed79ce3          	bne	a5,a3,80003c2c <__memset+0xd4>
    80003c38:	ff8e7793          	andi	a5,t3,-8
    80003c3c:	0007871b          	sext.w	a4,a5
    80003c40:	01d787bb          	addw	a5,a5,t4
    80003c44:	0ce88e63          	beq	a7,a4,80003d20 <__memset+0x1c8>
    80003c48:	00f50733          	add	a4,a0,a5
    80003c4c:	00b70023          	sb	a1,0(a4)
    80003c50:	0017871b          	addiw	a4,a5,1
    80003c54:	0cc77663          	bgeu	a4,a2,80003d20 <__memset+0x1c8>
    80003c58:	00e50733          	add	a4,a0,a4
    80003c5c:	00b70023          	sb	a1,0(a4)
    80003c60:	0027871b          	addiw	a4,a5,2
    80003c64:	0ac77e63          	bgeu	a4,a2,80003d20 <__memset+0x1c8>
    80003c68:	00e50733          	add	a4,a0,a4
    80003c6c:	00b70023          	sb	a1,0(a4)
    80003c70:	0037871b          	addiw	a4,a5,3
    80003c74:	0ac77663          	bgeu	a4,a2,80003d20 <__memset+0x1c8>
    80003c78:	00e50733          	add	a4,a0,a4
    80003c7c:	00b70023          	sb	a1,0(a4)
    80003c80:	0047871b          	addiw	a4,a5,4
    80003c84:	08c77e63          	bgeu	a4,a2,80003d20 <__memset+0x1c8>
    80003c88:	00e50733          	add	a4,a0,a4
    80003c8c:	00b70023          	sb	a1,0(a4)
    80003c90:	0057871b          	addiw	a4,a5,5
    80003c94:	08c77663          	bgeu	a4,a2,80003d20 <__memset+0x1c8>
    80003c98:	00e50733          	add	a4,a0,a4
    80003c9c:	00b70023          	sb	a1,0(a4)
    80003ca0:	0067871b          	addiw	a4,a5,6
    80003ca4:	06c77e63          	bgeu	a4,a2,80003d20 <__memset+0x1c8>
    80003ca8:	00e50733          	add	a4,a0,a4
    80003cac:	00b70023          	sb	a1,0(a4)
    80003cb0:	0077871b          	addiw	a4,a5,7
    80003cb4:	06c77663          	bgeu	a4,a2,80003d20 <__memset+0x1c8>
    80003cb8:	00e50733          	add	a4,a0,a4
    80003cbc:	00b70023          	sb	a1,0(a4)
    80003cc0:	0087871b          	addiw	a4,a5,8
    80003cc4:	04c77e63          	bgeu	a4,a2,80003d20 <__memset+0x1c8>
    80003cc8:	00e50733          	add	a4,a0,a4
    80003ccc:	00b70023          	sb	a1,0(a4)
    80003cd0:	0097871b          	addiw	a4,a5,9
    80003cd4:	04c77663          	bgeu	a4,a2,80003d20 <__memset+0x1c8>
    80003cd8:	00e50733          	add	a4,a0,a4
    80003cdc:	00b70023          	sb	a1,0(a4)
    80003ce0:	00a7871b          	addiw	a4,a5,10
    80003ce4:	02c77e63          	bgeu	a4,a2,80003d20 <__memset+0x1c8>
    80003ce8:	00e50733          	add	a4,a0,a4
    80003cec:	00b70023          	sb	a1,0(a4)
    80003cf0:	00b7871b          	addiw	a4,a5,11
    80003cf4:	02c77663          	bgeu	a4,a2,80003d20 <__memset+0x1c8>
    80003cf8:	00e50733          	add	a4,a0,a4
    80003cfc:	00b70023          	sb	a1,0(a4)
    80003d00:	00c7871b          	addiw	a4,a5,12
    80003d04:	00c77e63          	bgeu	a4,a2,80003d20 <__memset+0x1c8>
    80003d08:	00e50733          	add	a4,a0,a4
    80003d0c:	00b70023          	sb	a1,0(a4)
    80003d10:	00d7879b          	addiw	a5,a5,13
    80003d14:	00c7f663          	bgeu	a5,a2,80003d20 <__memset+0x1c8>
    80003d18:	00f507b3          	add	a5,a0,a5
    80003d1c:	00b78023          	sb	a1,0(a5)
    80003d20:	00813403          	ld	s0,8(sp)
    80003d24:	01010113          	addi	sp,sp,16
    80003d28:	00008067          	ret
    80003d2c:	00b00693          	li	a3,11
    80003d30:	e55ff06f          	j	80003b84 <__memset+0x2c>
    80003d34:	00300e93          	li	t4,3
    80003d38:	ea5ff06f          	j	80003bdc <__memset+0x84>
    80003d3c:	00100e93          	li	t4,1
    80003d40:	e9dff06f          	j	80003bdc <__memset+0x84>
    80003d44:	00000e93          	li	t4,0
    80003d48:	e95ff06f          	j	80003bdc <__memset+0x84>
    80003d4c:	00000793          	li	a5,0
    80003d50:	ef9ff06f          	j	80003c48 <__memset+0xf0>
    80003d54:	00200e93          	li	t4,2
    80003d58:	e85ff06f          	j	80003bdc <__memset+0x84>
    80003d5c:	00400e93          	li	t4,4
    80003d60:	e7dff06f          	j	80003bdc <__memset+0x84>
    80003d64:	00500e93          	li	t4,5
    80003d68:	e75ff06f          	j	80003bdc <__memset+0x84>
    80003d6c:	00600e93          	li	t4,6
    80003d70:	e6dff06f          	j	80003bdc <__memset+0x84>

0000000080003d74 <__memmove>:
    80003d74:	ff010113          	addi	sp,sp,-16
    80003d78:	00813423          	sd	s0,8(sp)
    80003d7c:	01010413          	addi	s0,sp,16
    80003d80:	0e060863          	beqz	a2,80003e70 <__memmove+0xfc>
    80003d84:	fff6069b          	addiw	a3,a2,-1
    80003d88:	0006881b          	sext.w	a6,a3
    80003d8c:	0ea5e863          	bltu	a1,a0,80003e7c <__memmove+0x108>
    80003d90:	00758713          	addi	a4,a1,7
    80003d94:	00a5e7b3          	or	a5,a1,a0
    80003d98:	40a70733          	sub	a4,a4,a0
    80003d9c:	0077f793          	andi	a5,a5,7
    80003da0:	00f73713          	sltiu	a4,a4,15
    80003da4:	00174713          	xori	a4,a4,1
    80003da8:	0017b793          	seqz	a5,a5
    80003dac:	00e7f7b3          	and	a5,a5,a4
    80003db0:	10078863          	beqz	a5,80003ec0 <__memmove+0x14c>
    80003db4:	00900793          	li	a5,9
    80003db8:	1107f463          	bgeu	a5,a6,80003ec0 <__memmove+0x14c>
    80003dbc:	0036581b          	srliw	a6,a2,0x3
    80003dc0:	fff8081b          	addiw	a6,a6,-1
    80003dc4:	02081813          	slli	a6,a6,0x20
    80003dc8:	01d85893          	srli	a7,a6,0x1d
    80003dcc:	00858813          	addi	a6,a1,8
    80003dd0:	00058793          	mv	a5,a1
    80003dd4:	00050713          	mv	a4,a0
    80003dd8:	01088833          	add	a6,a7,a6
    80003ddc:	0007b883          	ld	a7,0(a5)
    80003de0:	00878793          	addi	a5,a5,8
    80003de4:	00870713          	addi	a4,a4,8
    80003de8:	ff173c23          	sd	a7,-8(a4)
    80003dec:	ff0798e3          	bne	a5,a6,80003ddc <__memmove+0x68>
    80003df0:	ff867713          	andi	a4,a2,-8
    80003df4:	02071793          	slli	a5,a4,0x20
    80003df8:	0207d793          	srli	a5,a5,0x20
    80003dfc:	00f585b3          	add	a1,a1,a5
    80003e00:	40e686bb          	subw	a3,a3,a4
    80003e04:	00f507b3          	add	a5,a0,a5
    80003e08:	06e60463          	beq	a2,a4,80003e70 <__memmove+0xfc>
    80003e0c:	0005c703          	lbu	a4,0(a1)
    80003e10:	00e78023          	sb	a4,0(a5)
    80003e14:	04068e63          	beqz	a3,80003e70 <__memmove+0xfc>
    80003e18:	0015c603          	lbu	a2,1(a1)
    80003e1c:	00100713          	li	a4,1
    80003e20:	00c780a3          	sb	a2,1(a5)
    80003e24:	04e68663          	beq	a3,a4,80003e70 <__memmove+0xfc>
    80003e28:	0025c603          	lbu	a2,2(a1)
    80003e2c:	00200713          	li	a4,2
    80003e30:	00c78123          	sb	a2,2(a5)
    80003e34:	02e68e63          	beq	a3,a4,80003e70 <__memmove+0xfc>
    80003e38:	0035c603          	lbu	a2,3(a1)
    80003e3c:	00300713          	li	a4,3
    80003e40:	00c781a3          	sb	a2,3(a5)
    80003e44:	02e68663          	beq	a3,a4,80003e70 <__memmove+0xfc>
    80003e48:	0045c603          	lbu	a2,4(a1)
    80003e4c:	00400713          	li	a4,4
    80003e50:	00c78223          	sb	a2,4(a5)
    80003e54:	00e68e63          	beq	a3,a4,80003e70 <__memmove+0xfc>
    80003e58:	0055c603          	lbu	a2,5(a1)
    80003e5c:	00500713          	li	a4,5
    80003e60:	00c782a3          	sb	a2,5(a5)
    80003e64:	00e68663          	beq	a3,a4,80003e70 <__memmove+0xfc>
    80003e68:	0065c703          	lbu	a4,6(a1)
    80003e6c:	00e78323          	sb	a4,6(a5)
    80003e70:	00813403          	ld	s0,8(sp)
    80003e74:	01010113          	addi	sp,sp,16
    80003e78:	00008067          	ret
    80003e7c:	02061713          	slli	a4,a2,0x20
    80003e80:	02075713          	srli	a4,a4,0x20
    80003e84:	00e587b3          	add	a5,a1,a4
    80003e88:	f0f574e3          	bgeu	a0,a5,80003d90 <__memmove+0x1c>
    80003e8c:	02069613          	slli	a2,a3,0x20
    80003e90:	02065613          	srli	a2,a2,0x20
    80003e94:	fff64613          	not	a2,a2
    80003e98:	00e50733          	add	a4,a0,a4
    80003e9c:	00c78633          	add	a2,a5,a2
    80003ea0:	fff7c683          	lbu	a3,-1(a5)
    80003ea4:	fff78793          	addi	a5,a5,-1
    80003ea8:	fff70713          	addi	a4,a4,-1
    80003eac:	00d70023          	sb	a3,0(a4)
    80003eb0:	fec798e3          	bne	a5,a2,80003ea0 <__memmove+0x12c>
    80003eb4:	00813403          	ld	s0,8(sp)
    80003eb8:	01010113          	addi	sp,sp,16
    80003ebc:	00008067          	ret
    80003ec0:	02069713          	slli	a4,a3,0x20
    80003ec4:	02075713          	srli	a4,a4,0x20
    80003ec8:	00170713          	addi	a4,a4,1
    80003ecc:	00e50733          	add	a4,a0,a4
    80003ed0:	00050793          	mv	a5,a0
    80003ed4:	0005c683          	lbu	a3,0(a1)
    80003ed8:	00178793          	addi	a5,a5,1
    80003edc:	00158593          	addi	a1,a1,1
    80003ee0:	fed78fa3          	sb	a3,-1(a5)
    80003ee4:	fee798e3          	bne	a5,a4,80003ed4 <__memmove+0x160>
    80003ee8:	f89ff06f          	j	80003e70 <__memmove+0xfc>

0000000080003eec <__mem_free>:
    80003eec:	ff010113          	addi	sp,sp,-16
    80003ef0:	00813423          	sd	s0,8(sp)
    80003ef4:	01010413          	addi	s0,sp,16
    80003ef8:	00002597          	auipc	a1,0x2
    80003efc:	91058593          	addi	a1,a1,-1776 # 80005808 <freep>
    80003f00:	0005b783          	ld	a5,0(a1)
    80003f04:	ff050693          	addi	a3,a0,-16
    80003f08:	0007b703          	ld	a4,0(a5)
    80003f0c:	00d7fc63          	bgeu	a5,a3,80003f24 <__mem_free+0x38>
    80003f10:	00e6ee63          	bltu	a3,a4,80003f2c <__mem_free+0x40>
    80003f14:	00e7fc63          	bgeu	a5,a4,80003f2c <__mem_free+0x40>
    80003f18:	00070793          	mv	a5,a4
    80003f1c:	0007b703          	ld	a4,0(a5)
    80003f20:	fed7e8e3          	bltu	a5,a3,80003f10 <__mem_free+0x24>
    80003f24:	fee7eae3          	bltu	a5,a4,80003f18 <__mem_free+0x2c>
    80003f28:	fee6f8e3          	bgeu	a3,a4,80003f18 <__mem_free+0x2c>
    80003f2c:	ff852803          	lw	a6,-8(a0)
    80003f30:	02081613          	slli	a2,a6,0x20
    80003f34:	01c65613          	srli	a2,a2,0x1c
    80003f38:	00c68633          	add	a2,a3,a2
    80003f3c:	02c70a63          	beq	a4,a2,80003f70 <__mem_free+0x84>
    80003f40:	fee53823          	sd	a4,-16(a0)
    80003f44:	0087a503          	lw	a0,8(a5)
    80003f48:	02051613          	slli	a2,a0,0x20
    80003f4c:	01c65613          	srli	a2,a2,0x1c
    80003f50:	00c78633          	add	a2,a5,a2
    80003f54:	04c68263          	beq	a3,a2,80003f98 <__mem_free+0xac>
    80003f58:	00813403          	ld	s0,8(sp)
    80003f5c:	00d7b023          	sd	a3,0(a5)
    80003f60:	00f5b023          	sd	a5,0(a1)
    80003f64:	00000513          	li	a0,0
    80003f68:	01010113          	addi	sp,sp,16
    80003f6c:	00008067          	ret
    80003f70:	00872603          	lw	a2,8(a4)
    80003f74:	00073703          	ld	a4,0(a4)
    80003f78:	0106083b          	addw	a6,a2,a6
    80003f7c:	ff052c23          	sw	a6,-8(a0)
    80003f80:	fee53823          	sd	a4,-16(a0)
    80003f84:	0087a503          	lw	a0,8(a5)
    80003f88:	02051613          	slli	a2,a0,0x20
    80003f8c:	01c65613          	srli	a2,a2,0x1c
    80003f90:	00c78633          	add	a2,a5,a2
    80003f94:	fcc692e3          	bne	a3,a2,80003f58 <__mem_free+0x6c>
    80003f98:	00813403          	ld	s0,8(sp)
    80003f9c:	0105053b          	addw	a0,a0,a6
    80003fa0:	00a7a423          	sw	a0,8(a5)
    80003fa4:	00e7b023          	sd	a4,0(a5)
    80003fa8:	00f5b023          	sd	a5,0(a1)
    80003fac:	00000513          	li	a0,0
    80003fb0:	01010113          	addi	sp,sp,16
    80003fb4:	00008067          	ret

0000000080003fb8 <__mem_alloc>:
    80003fb8:	fc010113          	addi	sp,sp,-64
    80003fbc:	02813823          	sd	s0,48(sp)
    80003fc0:	02913423          	sd	s1,40(sp)
    80003fc4:	03213023          	sd	s2,32(sp)
    80003fc8:	01513423          	sd	s5,8(sp)
    80003fcc:	02113c23          	sd	ra,56(sp)
    80003fd0:	01313c23          	sd	s3,24(sp)
    80003fd4:	01413823          	sd	s4,16(sp)
    80003fd8:	01613023          	sd	s6,0(sp)
    80003fdc:	04010413          	addi	s0,sp,64
    80003fe0:	00002a97          	auipc	s5,0x2
    80003fe4:	828a8a93          	addi	s5,s5,-2008 # 80005808 <freep>
    80003fe8:	00f50913          	addi	s2,a0,15
    80003fec:	000ab683          	ld	a3,0(s5)
    80003ff0:	00495913          	srli	s2,s2,0x4
    80003ff4:	0019049b          	addiw	s1,s2,1
    80003ff8:	00048913          	mv	s2,s1
    80003ffc:	0c068c63          	beqz	a3,800040d4 <__mem_alloc+0x11c>
    80004000:	0006b503          	ld	a0,0(a3)
    80004004:	00852703          	lw	a4,8(a0)
    80004008:	10977063          	bgeu	a4,s1,80004108 <__mem_alloc+0x150>
    8000400c:	000017b7          	lui	a5,0x1
    80004010:	0009099b          	sext.w	s3,s2
    80004014:	0af4e863          	bltu	s1,a5,800040c4 <__mem_alloc+0x10c>
    80004018:	02099a13          	slli	s4,s3,0x20
    8000401c:	01ca5a13          	srli	s4,s4,0x1c
    80004020:	fff00b13          	li	s6,-1
    80004024:	0100006f          	j	80004034 <__mem_alloc+0x7c>
    80004028:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000402c:	00852703          	lw	a4,8(a0)
    80004030:	04977463          	bgeu	a4,s1,80004078 <__mem_alloc+0xc0>
    80004034:	00050793          	mv	a5,a0
    80004038:	fea698e3          	bne	a3,a0,80004028 <__mem_alloc+0x70>
    8000403c:	000a0513          	mv	a0,s4
    80004040:	00000097          	auipc	ra,0x0
    80004044:	1f0080e7          	jalr	496(ra) # 80004230 <kvmincrease>
    80004048:	00050793          	mv	a5,a0
    8000404c:	01050513          	addi	a0,a0,16
    80004050:	07678e63          	beq	a5,s6,800040cc <__mem_alloc+0x114>
    80004054:	0137a423          	sw	s3,8(a5)
    80004058:	00000097          	auipc	ra,0x0
    8000405c:	e94080e7          	jalr	-364(ra) # 80003eec <__mem_free>
    80004060:	000ab783          	ld	a5,0(s5)
    80004064:	06078463          	beqz	a5,800040cc <__mem_alloc+0x114>
    80004068:	0007b503          	ld	a0,0(a5)
    8000406c:	00078693          	mv	a3,a5
    80004070:	00852703          	lw	a4,8(a0)
    80004074:	fc9760e3          	bltu	a4,s1,80004034 <__mem_alloc+0x7c>
    80004078:	08e48263          	beq	s1,a4,800040fc <__mem_alloc+0x144>
    8000407c:	4127073b          	subw	a4,a4,s2
    80004080:	02071693          	slli	a3,a4,0x20
    80004084:	01c6d693          	srli	a3,a3,0x1c
    80004088:	00e52423          	sw	a4,8(a0)
    8000408c:	00d50533          	add	a0,a0,a3
    80004090:	01252423          	sw	s2,8(a0)
    80004094:	00fab023          	sd	a5,0(s5)
    80004098:	01050513          	addi	a0,a0,16
    8000409c:	03813083          	ld	ra,56(sp)
    800040a0:	03013403          	ld	s0,48(sp)
    800040a4:	02813483          	ld	s1,40(sp)
    800040a8:	02013903          	ld	s2,32(sp)
    800040ac:	01813983          	ld	s3,24(sp)
    800040b0:	01013a03          	ld	s4,16(sp)
    800040b4:	00813a83          	ld	s5,8(sp)
    800040b8:	00013b03          	ld	s6,0(sp)
    800040bc:	04010113          	addi	sp,sp,64
    800040c0:	00008067          	ret
    800040c4:	000019b7          	lui	s3,0x1
    800040c8:	f51ff06f          	j	80004018 <__mem_alloc+0x60>
    800040cc:	00000513          	li	a0,0
    800040d0:	fcdff06f          	j	8000409c <__mem_alloc+0xe4>
    800040d4:	00003797          	auipc	a5,0x3
    800040d8:	9cc78793          	addi	a5,a5,-1588 # 80006aa0 <base>
    800040dc:	00078513          	mv	a0,a5
    800040e0:	00fab023          	sd	a5,0(s5)
    800040e4:	00f7b023          	sd	a5,0(a5)
    800040e8:	00000713          	li	a4,0
    800040ec:	00003797          	auipc	a5,0x3
    800040f0:	9a07ae23          	sw	zero,-1604(a5) # 80006aa8 <base+0x8>
    800040f4:	00050693          	mv	a3,a0
    800040f8:	f11ff06f          	j	80004008 <__mem_alloc+0x50>
    800040fc:	00053703          	ld	a4,0(a0)
    80004100:	00e7b023          	sd	a4,0(a5)
    80004104:	f91ff06f          	j	80004094 <__mem_alloc+0xdc>
    80004108:	00068793          	mv	a5,a3
    8000410c:	f6dff06f          	j	80004078 <__mem_alloc+0xc0>

0000000080004110 <__putc>:
    80004110:	fe010113          	addi	sp,sp,-32
    80004114:	00813823          	sd	s0,16(sp)
    80004118:	00113c23          	sd	ra,24(sp)
    8000411c:	02010413          	addi	s0,sp,32
    80004120:	00050793          	mv	a5,a0
    80004124:	fef40593          	addi	a1,s0,-17
    80004128:	00100613          	li	a2,1
    8000412c:	00000513          	li	a0,0
    80004130:	fef407a3          	sb	a5,-17(s0)
    80004134:	fffff097          	auipc	ra,0xfffff
    80004138:	918080e7          	jalr	-1768(ra) # 80002a4c <console_write>
    8000413c:	01813083          	ld	ra,24(sp)
    80004140:	01013403          	ld	s0,16(sp)
    80004144:	02010113          	addi	sp,sp,32
    80004148:	00008067          	ret

000000008000414c <__getc>:
    8000414c:	fe010113          	addi	sp,sp,-32
    80004150:	00813823          	sd	s0,16(sp)
    80004154:	00113c23          	sd	ra,24(sp)
    80004158:	02010413          	addi	s0,sp,32
    8000415c:	fe840593          	addi	a1,s0,-24
    80004160:	00100613          	li	a2,1
    80004164:	00000513          	li	a0,0
    80004168:	fffff097          	auipc	ra,0xfffff
    8000416c:	8c4080e7          	jalr	-1852(ra) # 80002a2c <console_read>
    80004170:	fe844503          	lbu	a0,-24(s0)
    80004174:	01813083          	ld	ra,24(sp)
    80004178:	01013403          	ld	s0,16(sp)
    8000417c:	02010113          	addi	sp,sp,32
    80004180:	00008067          	ret

0000000080004184 <console_handler>:
    80004184:	fe010113          	addi	sp,sp,-32
    80004188:	00813823          	sd	s0,16(sp)
    8000418c:	00113c23          	sd	ra,24(sp)
    80004190:	00913423          	sd	s1,8(sp)
    80004194:	02010413          	addi	s0,sp,32
    80004198:	14202773          	csrr	a4,scause
    8000419c:	100027f3          	csrr	a5,sstatus
    800041a0:	0027f793          	andi	a5,a5,2
    800041a4:	06079e63          	bnez	a5,80004220 <console_handler+0x9c>
    800041a8:	00074c63          	bltz	a4,800041c0 <console_handler+0x3c>
    800041ac:	01813083          	ld	ra,24(sp)
    800041b0:	01013403          	ld	s0,16(sp)
    800041b4:	00813483          	ld	s1,8(sp)
    800041b8:	02010113          	addi	sp,sp,32
    800041bc:	00008067          	ret
    800041c0:	0ff77713          	andi	a4,a4,255
    800041c4:	00900793          	li	a5,9
    800041c8:	fef712e3          	bne	a4,a5,800041ac <console_handler+0x28>
    800041cc:	ffffe097          	auipc	ra,0xffffe
    800041d0:	4b8080e7          	jalr	1208(ra) # 80002684 <plic_claim>
    800041d4:	00a00793          	li	a5,10
    800041d8:	00050493          	mv	s1,a0
    800041dc:	02f50c63          	beq	a0,a5,80004214 <console_handler+0x90>
    800041e0:	fc0506e3          	beqz	a0,800041ac <console_handler+0x28>
    800041e4:	00050593          	mv	a1,a0
    800041e8:	00001517          	auipc	a0,0x1
    800041ec:	fa050513          	addi	a0,a0,-96 # 80005188 <_ZZ12printIntegermE6digits+0x110>
    800041f0:	fffff097          	auipc	ra,0xfffff
    800041f4:	8d8080e7          	jalr	-1832(ra) # 80002ac8 <__printf>
    800041f8:	01013403          	ld	s0,16(sp)
    800041fc:	01813083          	ld	ra,24(sp)
    80004200:	00048513          	mv	a0,s1
    80004204:	00813483          	ld	s1,8(sp)
    80004208:	02010113          	addi	sp,sp,32
    8000420c:	ffffe317          	auipc	t1,0xffffe
    80004210:	4b030067          	jr	1200(t1) # 800026bc <plic_complete>
    80004214:	fffff097          	auipc	ra,0xfffff
    80004218:	1bc080e7          	jalr	444(ra) # 800033d0 <uartintr>
    8000421c:	fddff06f          	j	800041f8 <console_handler+0x74>
    80004220:	00001517          	auipc	a0,0x1
    80004224:	06850513          	addi	a0,a0,104 # 80005288 <digits+0x78>
    80004228:	fffff097          	auipc	ra,0xfffff
    8000422c:	844080e7          	jalr	-1980(ra) # 80002a6c <panic>

0000000080004230 <kvmincrease>:
    80004230:	fe010113          	addi	sp,sp,-32
    80004234:	01213023          	sd	s2,0(sp)
    80004238:	00001937          	lui	s2,0x1
    8000423c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004240:	00813823          	sd	s0,16(sp)
    80004244:	00113c23          	sd	ra,24(sp)
    80004248:	00913423          	sd	s1,8(sp)
    8000424c:	02010413          	addi	s0,sp,32
    80004250:	01250933          	add	s2,a0,s2
    80004254:	00c95913          	srli	s2,s2,0xc
    80004258:	02090863          	beqz	s2,80004288 <kvmincrease+0x58>
    8000425c:	00000493          	li	s1,0
    80004260:	00148493          	addi	s1,s1,1
    80004264:	fffff097          	auipc	ra,0xfffff
    80004268:	4bc080e7          	jalr	1212(ra) # 80003720 <kalloc>
    8000426c:	fe991ae3          	bne	s2,s1,80004260 <kvmincrease+0x30>
    80004270:	01813083          	ld	ra,24(sp)
    80004274:	01013403          	ld	s0,16(sp)
    80004278:	00813483          	ld	s1,8(sp)
    8000427c:	00013903          	ld	s2,0(sp)
    80004280:	02010113          	addi	sp,sp,32
    80004284:	00008067          	ret
    80004288:	01813083          	ld	ra,24(sp)
    8000428c:	01013403          	ld	s0,16(sp)
    80004290:	00813483          	ld	s1,8(sp)
    80004294:	00013903          	ld	s2,0(sp)
    80004298:	00000513          	li	a0,0
    8000429c:	02010113          	addi	sp,sp,32
    800042a0:	00008067          	ret
	...
