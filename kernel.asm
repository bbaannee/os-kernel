
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00005117          	auipc	sp,0x5
    80000004:	6b813103          	ld	sp,1720(sp) # 800056b8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	39d010ef          	jal	ra,80001bb8 <start>

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
    80001080:	530000ef          	jal	ra,800015b0 <_ZN5Riscv20handleSupervisorTrapEv>


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

0000000080001124 <main>:
#include  "../h/workers.h"
#include "../h/printer.h"


int main()
{
    80001124:	fc010113          	addi	sp,sp,-64
    80001128:	02113c23          	sd	ra,56(sp)
    8000112c:	02813823          	sd	s0,48(sp)
    80001130:	02913423          	sd	s1,40(sp)
    80001134:	03213023          	sd	s2,32(sp)
    80001138:	04010413          	addi	s0,sp,64
    Thread *threads[3];

    threads[0] = Thread::createThread(nullptr);
    8000113c:	00000513          	li	a0,0
    80001140:	00000097          	auipc	ra,0x0
    80001144:	70c080e7          	jalr	1804(ra) # 8000184c <_ZN6Thread12createThreadEPFvvE>
    80001148:	fca43423          	sd	a0,-56(s0)
    Thread::running = threads[0];
    8000114c:	00004797          	auipc	a5,0x4
    80001150:	5ea7b223          	sd	a0,1508(a5) # 80005730 <_ZN6Thread7runningE>

    threads[1] = Thread::createThread(workerBodyA);
    80001154:	00001517          	auipc	a0,0x1
    80001158:	93450513          	addi	a0,a0,-1740 # 80001a88 <_Z11workerBodyAv>
    8000115c:	00000097          	auipc	ra,0x0
    80001160:	6f0080e7          	jalr	1776(ra) # 8000184c <_ZN6Thread12createThreadEPFvvE>
    80001164:	00050493          	mv	s1,a0
    80001168:	fca43823          	sd	a0,-48(s0)
    printString("ThreadA created\n");
    8000116c:	00004517          	auipc	a0,0x4
    80001170:	eb450513          	addi	a0,a0,-332 # 80005020 <CONSOLE_STATUS+0x10>
    80001174:	00000097          	auipc	ra,0x0
    80001178:	30c080e7          	jalr	780(ra) # 80001480 <_Z11printStringPKc>
    threads[2] = Thread::createThread(workerBodyB);
    8000117c:	00001517          	auipc	a0,0x1
    80001180:	9a450513          	addi	a0,a0,-1628 # 80001b20 <_Z11workerBodyBv>
    80001184:	00000097          	auipc	ra,0x0
    80001188:	6c8080e7          	jalr	1736(ra) # 8000184c <_ZN6Thread12createThreadEPFvvE>
    8000118c:	00050913          	mv	s2,a0
    80001190:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadB created\n");
    80001194:	00004517          	auipc	a0,0x4
    80001198:	ea450513          	addi	a0,a0,-348 # 80005038 <CONSOLE_STATUS+0x28>
    8000119c:	00000097          	auipc	ra,0x0
    800011a0:	2e4080e7          	jalr	740(ra) # 80001480 <_Z11printStringPKc>


    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800011a4:	00000797          	auipc	a5,0x0
    800011a8:	e5c78793          	addi	a5,a5,-420 # 80001000 <_ZN5Riscv14supervisorTrapEv>
        return stvec;
    }

    inline void Riscv::w_stvec(uint64 stvec)
    {
        __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800011ac:	10579073          	csrw	stvec,a5
        __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
    }

    inline void Riscv::ms_sstatus(uint64 mask)
    {
        __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800011b0:	00200793          	li	a5,2
    800011b4:	1007a073          	csrs	sstatus,a5
    }
    800011b8:	00c0006f          	j	800011c4 <main+0xa0>
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished()))
    {
        Thread::yield();
    800011bc:	00000097          	auipc	ra,0x0
    800011c0:	78c080e7          	jalr	1932(ra) # 80001948 <_ZN6Thread5yieldEv>
    static void yield();


    static void dispatch();

    bool isFinished(){return finished;};
    800011c4:	0304c783          	lbu	a5,48(s1)
    while (!(threads[1]->isFinished() &&
    800011c8:	fe078ae3          	beqz	a5,800011bc <main+0x98>
    800011cc:	03094783          	lbu	a5,48(s2)
    800011d0:	fe0786e3          	beqz	a5,800011bc <main+0x98>
    }



    printString("Finished\n");
    800011d4:	00004517          	auipc	a0,0x4
    800011d8:	e7c50513          	addi	a0,a0,-388 # 80005050 <CONSOLE_STATUS+0x40>
    800011dc:	00000097          	auipc	ra,0x0
    800011e0:	2a4080e7          	jalr	676(ra) # 80001480 <_Z11printStringPKc>

    return 0;
}
    800011e4:	00000513          	li	a0,0
    800011e8:	03813083          	ld	ra,56(sp)
    800011ec:	03013403          	ld	s0,48(sp)
    800011f0:	02813483          	ld	s1,40(sp)
    800011f4:	02013903          	ld	s2,32(sp)
    800011f8:	04010113          	addi	sp,sp,64
    800011fc:	00008067          	ret

0000000080001200 <_ZN15MemoryAllocator4initEv>:
    }

    return address;
}

void MemoryAllocator::init() {
    80001200:	ff010113          	addi	sp,sp,-16
    80001204:	00813423          	sd	s0,8(sp)
    80001208:	01010413          	addi	s0,sp,16
    size_t start = (size_t)HEAP_START_ADDR;
    8000120c:	00004797          	auipc	a5,0x4
    80001210:	4947b783          	ld	a5,1172(a5) # 800056a0 <HEAP_START_ADDR>
    size_t end = (size_t)HEAP_END_ADDR;
    80001214:	00004717          	auipc	a4,0x4
    80001218:	48473703          	ld	a4,1156(a4) # 80005698 <HEAP_END_ADDR>

    start = start % MEM_BLOCK_SIZE == 0 ? start :   (start - start % MEM_BLOCK_SIZE) + MEM_BLOCK_SIZE;
    8000121c:	03f7f693          	andi	a3,a5,63
    80001220:	00068663          	beqz	a3,8000122c <_ZN15MemoryAllocator4initEv+0x2c>
    80001224:	fc07f793          	andi	a5,a5,-64
    80001228:	04078793          	addi	a5,a5,64
    end = end % MEM_BLOCK_SIZE == 0 ? end : (end - end % MEM_BLOCK_SIZE);
    8000122c:	03f77693          	andi	a3,a4,63
    80001230:	00068463          	beqz	a3,80001238 <_ZN15MemoryAllocator4initEv+0x38>
    80001234:	fc077713          	andi	a4,a4,-64

    head = (segmentHeader*) start;
    80001238:	00004697          	auipc	a3,0x4
    8000123c:	4cf6bc23          	sd	a5,1240(a3) # 80005710 <_ZN15MemoryAllocator4headE>
    head->size = end - start - MEM_BLOCK_SIZE;
    80001240:	40f70733          	sub	a4,a4,a5
    80001244:	fc070713          	addi	a4,a4,-64
    80001248:	00e7b423          	sd	a4,8(a5)
    head -> next = nullptr;
    8000124c:	0007b023          	sd	zero,0(a5)
}
    80001250:	00813403          	ld	s0,8(sp)
    80001254:	01010113          	addi	sp,sp,16
    80001258:	00008067          	ret

000000008000125c <_ZN15MemoryAllocator7kmallocEm>:
void *MemoryAllocator::kmalloc(size_t size) {  // argument is in bytes
    8000125c:	fe010113          	addi	sp,sp,-32
    80001260:	00113c23          	sd	ra,24(sp)
    80001264:	00813823          	sd	s0,16(sp)
    80001268:	00913423          	sd	s1,8(sp)
    8000126c:	02010413          	addi	s0,sp,32
    80001270:	00050493          	mv	s1,a0
    if(!isinit){
    80001274:	00004797          	auipc	a5,0x4
    80001278:	4a47c783          	lbu	a5,1188(a5) # 80005718 <_ZN15MemoryAllocator6isinitE>
    8000127c:	00078e63          	beqz	a5,80001298 <_ZN15MemoryAllocator7kmallocEm+0x3c>
    size_t bytes_needed = (size_t)((size + MEM_BLOCK_SIZE - 1 ) / MEM_BLOCK_SIZE)*MEM_BLOCK_SIZE;
    80001280:	03f48713          	addi	a4,s1,63
    80001284:	fc077713          	andi	a4,a4,-64
    segmentHeader* curr = head;
    80001288:	00004797          	auipc	a5,0x4
    8000128c:	4887b783          	ld	a5,1160(a5) # 80005710 <_ZN15MemoryAllocator4headE>
    segmentHeader* prev = nullptr;
    80001290:	00000613          	li	a2,0
    80001294:	0240006f          	j	800012b8 <_ZN15MemoryAllocator7kmallocEm+0x5c>
        isinit = true;
    80001298:	00100793          	li	a5,1
    8000129c:	00004717          	auipc	a4,0x4
    800012a0:	46f70e23          	sb	a5,1148(a4) # 80005718 <_ZN15MemoryAllocator6isinitE>
        init();
    800012a4:	00000097          	auipc	ra,0x0
    800012a8:	f5c080e7          	jalr	-164(ra) # 80001200 <_ZN15MemoryAllocator4initEv>
    800012ac:	fd5ff06f          	j	80001280 <_ZN15MemoryAllocator7kmallocEm+0x24>
        prev = curr;
    800012b0:	00078613          	mv	a2,a5
    for(;curr; curr = curr -> next){
    800012b4:	0007b783          	ld	a5,0(a5)
    800012b8:	00078a63          	beqz	a5,800012cc <_ZN15MemoryAllocator7kmallocEm+0x70>
        if(curr -> size >= bytes_needed) {
    800012bc:	0087b683          	ld	a3,8(a5)
    800012c0:	fee6e8e3          	bltu	a3,a4,800012b0 <_ZN15MemoryAllocator7kmallocEm+0x54>
            address = (void*) ((size_t) curr + MEM_BLOCK_SIZE);
    800012c4:	04078513          	addi	a0,a5,64
            break;
    800012c8:	0080006f          	j	800012d0 <_ZN15MemoryAllocator7kmallocEm+0x74>
    void* address = nullptr;
    800012cc:	00078513          	mv	a0,a5
    if(!curr) return nullptr;
    800012d0:	06078063          	beqz	a5,80001330 <_ZN15MemoryAllocator7kmallocEm+0xd4>
    size_t remaining_bytes = curr->size - bytes_needed;
    800012d4:	0087b683          	ld	a3,8(a5)
    800012d8:	40e686b3          	sub	a3,a3,a4
    if(remaining_bytes >= 2*MEM_BLOCK_SIZE){  //there is enough space for header and minimum one block
    800012dc:	07f00593          	li	a1,127
    800012e0:	02d5fe63          	bgeu	a1,a3,8000131c <_ZN15MemoryAllocator7kmallocEm+0xc0>
        next_free_node = (segmentHeader*)((char*)curr + bytes_needed + MEM_BLOCK_SIZE);
    800012e4:	04070593          	addi	a1,a4,64
    800012e8:	00b785b3          	add	a1,a5,a1
        next_free_node -> next = curr -> next;
    800012ec:	0007b803          	ld	a6,0(a5)
    800012f0:	0105b023          	sd	a6,0(a1)
        next_free_node -> size = remaining_bytes - MEM_BLOCK_SIZE;
    800012f4:	fc068693          	addi	a3,a3,-64
    800012f8:	00d5b423          	sd	a3,8(a1)
        curr -> size = bytes_needed;
    800012fc:	00e7b423          	sd	a4,8(a5)
    if(prev){
    80001300:	02060263          	beqz	a2,80001324 <_ZN15MemoryAllocator7kmallocEm+0xc8>
        prev -> next = next_free_node;
    80001304:	00b63023          	sd	a1,0(a2)
}
    80001308:	01813083          	ld	ra,24(sp)
    8000130c:	01013403          	ld	s0,16(sp)
    80001310:	00813483          	ld	s1,8(sp)
    80001314:	02010113          	addi	sp,sp,32
    80001318:	00008067          	ret
        next_free_node = curr -> next;
    8000131c:	0007b583          	ld	a1,0(a5)
    80001320:	fe1ff06f          	j	80001300 <_ZN15MemoryAllocator7kmallocEm+0xa4>
        head = next_free_node;
    80001324:	00004797          	auipc	a5,0x4
    80001328:	3eb7b623          	sd	a1,1004(a5) # 80005710 <_ZN15MemoryAllocator4headE>
    8000132c:	fddff06f          	j	80001308 <_ZN15MemoryAllocator7kmallocEm+0xac>
    if(!curr) return nullptr;
    80001330:	00078513          	mv	a0,a5
    80001334:	fd5ff06f          	j	80001308 <_ZN15MemoryAllocator7kmallocEm+0xac>

0000000080001338 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE>:



void MemoryAllocator::tryMerge(segmentHeader *block) {
    80001338:	ff010113          	addi	sp,sp,-16
    8000133c:	00813423          	sd	s0,8(sp)
    80001340:	01010413          	addi	s0,sp,16
    if(!block) return;
    80001344:	00050e63          	beqz	a0,80001360 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x28>

    segmentHeader* next_seg = block -> next;
    80001348:	00053783          	ld	a5,0(a0)

    if(!next_seg) return;
    8000134c:	00078a63          	beqz	a5,80001360 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x28>

    if((char*) block +  MEM_BLOCK_SIZE + block -> size == (char*) next_seg){
    80001350:	00853683          	ld	a3,8(a0)
    80001354:	04068713          	addi	a4,a3,64
    80001358:	00e50733          	add	a4,a0,a4
    8000135c:	00f70863          	beq	a4,a5,8000136c <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x34>
        block -> next = next_seg -> next;
        block -> size += next_seg -> size +  MEM_BLOCK_SIZE;
    }
}
    80001360:	00813403          	ld	s0,8(sp)
    80001364:	01010113          	addi	sp,sp,16
    80001368:	00008067          	ret
        block -> next = next_seg -> next;
    8000136c:	0007b703          	ld	a4,0(a5)
    80001370:	00e53023          	sd	a4,0(a0)
        block -> size += next_seg -> size +  MEM_BLOCK_SIZE;
    80001374:	0087b783          	ld	a5,8(a5)
    80001378:	00f686b3          	add	a3,a3,a5
    8000137c:	04068693          	addi	a3,a3,64
    80001380:	00d53423          	sd	a3,8(a0)
    80001384:	fddff06f          	j	80001360 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x28>

0000000080001388 <_ZN15MemoryAllocator5kfreeEPv>:
int MemoryAllocator::kfree(void *addr) {
    80001388:	fe010113          	addi	sp,sp,-32
    8000138c:	00113c23          	sd	ra,24(sp)
    80001390:	00813823          	sd	s0,16(sp)
    80001394:	00913423          	sd	s1,8(sp)
    80001398:	01213023          	sd	s2,0(sp)
    8000139c:	02010413          	addi	s0,sp,32
    800013a0:	00050913          	mv	s2,a0
    if(!isinit){ isinit = true; init(); }
    800013a4:	00004797          	auipc	a5,0x4
    800013a8:	3747c783          	lbu	a5,884(a5) # 80005718 <_ZN15MemoryAllocator6isinitE>
    800013ac:	04078663          	beqz	a5,800013f8 <_ZN15MemoryAllocator5kfreeEPv+0x70>
    if(!addr) return -1;
    800013b0:	0a090863          	beqz	s2,80001460 <_ZN15MemoryAllocator5kfreeEPv+0xd8>
    segmentHeader* newFree = (segmentHeader*)((char*)addr - MEM_BLOCK_SIZE);
    800013b4:	fc090513          	addi	a0,s2,-64
    if((size_t)newFree < (size_t)HEAP_START_ADDR || (size_t)newFree >= (size_t)HEAP_END_ADDR) {
    800013b8:	00004797          	auipc	a5,0x4
    800013bc:	2e87b783          	ld	a5,744(a5) # 800056a0 <HEAP_START_ADDR>
    800013c0:	0af56463          	bltu	a0,a5,80001468 <_ZN15MemoryAllocator5kfreeEPv+0xe0>
    800013c4:	00004797          	auipc	a5,0x4
    800013c8:	2d47b783          	ld	a5,724(a5) # 80005698 <HEAP_END_ADDR>
    800013cc:	0af57263          	bgeu	a0,a5,80001470 <_ZN15MemoryAllocator5kfreeEPv+0xe8>
    segmentHeader* curr = head;
    800013d0:	00004717          	auipc	a4,0x4
    800013d4:	34073703          	ld	a4,832(a4) # 80005710 <_ZN15MemoryAllocator4headE>
    800013d8:	00070793          	mv	a5,a4
    segmentHeader* prev = nullptr;
    800013dc:	00000493          	li	s1,0
    while(curr) {
    800013e0:	02078863          	beqz	a5,80001410 <_ZN15MemoryAllocator5kfreeEPv+0x88>
        if(curr == newFree) {
    800013e4:	08a78a63          	beq	a5,a0,80001478 <_ZN15MemoryAllocator5kfreeEPv+0xf0>
        if(curr > newFree) break;
    800013e8:	02f56463          	bltu	a0,a5,80001410 <_ZN15MemoryAllocator5kfreeEPv+0x88>
        prev = curr;
    800013ec:	00078493          	mv	s1,a5
        curr = curr->next;
    800013f0:	0007b783          	ld	a5,0(a5)
    while(curr) {
    800013f4:	fedff06f          	j	800013e0 <_ZN15MemoryAllocator5kfreeEPv+0x58>
    if(!isinit){ isinit = true; init(); }
    800013f8:	00100793          	li	a5,1
    800013fc:	00004717          	auipc	a4,0x4
    80001400:	30f70e23          	sb	a5,796(a4) # 80005718 <_ZN15MemoryAllocator6isinitE>
    80001404:	00000097          	auipc	ra,0x0
    80001408:	dfc080e7          	jalr	-516(ra) # 80001200 <_ZN15MemoryAllocator4initEv>
    8000140c:	fa5ff06f          	j	800013b0 <_ZN15MemoryAllocator5kfreeEPv+0x28>
    if(prev) {
    80001410:	04048063          	beqz	s1,80001450 <_ZN15MemoryAllocator5kfreeEPv+0xc8>
        newFree->next = prev->next;
    80001414:	0004b783          	ld	a5,0(s1)
    80001418:	fcf93023          	sd	a5,-64(s2)
        prev->next = newFree;
    8000141c:	00a4b023          	sd	a0,0(s1)
    tryMerge(newFree);
    80001420:	00000097          	auipc	ra,0x0
    80001424:	f18080e7          	jalr	-232(ra) # 80001338 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE>
    tryMerge(prev);
    80001428:	00048513          	mv	a0,s1
    8000142c:	00000097          	auipc	ra,0x0
    80001430:	f0c080e7          	jalr	-244(ra) # 80001338 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE>
    return 0;
    80001434:	00000513          	li	a0,0
}
    80001438:	01813083          	ld	ra,24(sp)
    8000143c:	01013403          	ld	s0,16(sp)
    80001440:	00813483          	ld	s1,8(sp)
    80001444:	00013903          	ld	s2,0(sp)
    80001448:	02010113          	addi	sp,sp,32
    8000144c:	00008067          	ret
        newFree->next = head;
    80001450:	fce93023          	sd	a4,-64(s2)
        head = newFree;
    80001454:	00004797          	auipc	a5,0x4
    80001458:	2aa7be23          	sd	a0,700(a5) # 80005710 <_ZN15MemoryAllocator4headE>
    8000145c:	fc5ff06f          	j	80001420 <_ZN15MemoryAllocator5kfreeEPv+0x98>
    if(!addr) return -1;
    80001460:	fff00513          	li	a0,-1
    80001464:	fd5ff06f          	j	80001438 <_ZN15MemoryAllocator5kfreeEPv+0xb0>
        return -1;
    80001468:	fff00513          	li	a0,-1
    8000146c:	fcdff06f          	j	80001438 <_ZN15MemoryAllocator5kfreeEPv+0xb0>
    80001470:	fff00513          	li	a0,-1
    80001474:	fc5ff06f          	j	80001438 <_ZN15MemoryAllocator5kfreeEPv+0xb0>
            return -1;
    80001478:	fff00513          	li	a0,-1
    8000147c:	fbdff06f          	j	80001438 <_ZN15MemoryAllocator5kfreeEPv+0xb0>

0000000080001480 <_Z11printStringPKc>:

#include "../h/printer.h"
#include "../lib/console.h"
#include "../h/riscv.h"
void printString(char const *string)
{
    80001480:	fd010113          	addi	sp,sp,-48
    80001484:	02113423          	sd	ra,40(sp)
    80001488:	02813023          	sd	s0,32(sp)
    8000148c:	00913c23          	sd	s1,24(sp)
    80001490:	01213823          	sd	s2,16(sp)
    80001494:	03010413          	addi	s0,sp,48
    80001498:	00050493          	mv	s1,a0
    }

    inline uint64 Riscv::r_sstatus()
    {
        uint64 volatile sstatus;
        __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000149c:	100027f3          	csrr	a5,sstatus
    800014a0:	fcf43c23          	sd	a5,-40(s0)
        return sstatus;
    800014a4:	fd843903          	ld	s2,-40(s0)
        __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800014a8:	00200793          	li	a5,2
    800014ac:	1007b073          	csrc	sstatus,a5
    }
    800014b0:	0100006f          	j	800014c0 <_Z11printStringPKc+0x40>
	uint64 sstatus = Riscv::r_sstatus();
	Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    {
        __putc(*string);
    800014b4:	00003097          	auipc	ra,0x3
    800014b8:	9ec080e7          	jalr	-1556(ra) # 80003ea0 <__putc>
        string++;
    800014bc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800014c0:	0004c503          	lbu	a0,0(s1)
    800014c4:	fe0518e3          	bnez	a0,800014b4 <_Z11printStringPKc+0x34>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800014c8:	00297913          	andi	s2,s2,2
        __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800014cc:	10092073          	csrs	sstatus,s2
}
    800014d0:	02813083          	ld	ra,40(sp)
    800014d4:	02013403          	ld	s0,32(sp)
    800014d8:	01813483          	ld	s1,24(sp)
    800014dc:	01013903          	ld	s2,16(sp)
    800014e0:	03010113          	addi	sp,sp,48
    800014e4:	00008067          	ret

00000000800014e8 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{	
    800014e8:	fc010113          	addi	sp,sp,-64
    800014ec:	02113c23          	sd	ra,56(sp)
    800014f0:	02813823          	sd	s0,48(sp)
    800014f4:	02913423          	sd	s1,40(sp)
    800014f8:	03213023          	sd	s2,32(sp)
    800014fc:	04010413          	addi	s0,sp,64
        __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001500:	100027f3          	csrr	a5,sstatus
    80001504:	fcf43423          	sd	a5,-56(s0)
        return sstatus;
    80001508:	fc843903          	ld	s2,-56(s0)
        __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000150c:	00200793          	li	a5,2
    80001510:	1007b073          	csrc	sstatus,a5
    else
    {
        x = integer;
    }

    i = 0;
    80001514:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001518:	00a00693          	li	a3,10
    8000151c:	02d57633          	remu	a2,a0,a3
    80001520:	00004717          	auipc	a4,0x4
    80001524:	b4070713          	addi	a4,a4,-1216 # 80005060 <_ZZ12printIntegermE6digits>
    80001528:	00c70733          	add	a4,a4,a2
    8000152c:	00074703          	lbu	a4,0(a4)
    80001530:	fe040613          	addi	a2,s0,-32
    80001534:	009607b3          	add	a5,a2,s1
    80001538:	0014849b          	addiw	s1,s1,1
    8000153c:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001540:	00050713          	mv	a4,a0
    80001544:	02d55533          	divu	a0,a0,a3
    80001548:	00900793          	li	a5,9
    8000154c:	fce7e6e3          	bltu	a5,a4,80001518 <_Z12printIntegerm+0x30>
    80001550:	0180006f          	j	80001568 <_Z12printIntegerm+0x80>

    if (neg)
        buf[i++] = '-';

    while (--i >= 0)        __putc(buf[i]);
    80001554:	fe040793          	addi	a5,s0,-32
    80001558:	009787b3          	add	a5,a5,s1
    8000155c:	ff07c503          	lbu	a0,-16(a5)
    80001560:	00003097          	auipc	ra,0x3
    80001564:	940080e7          	jalr	-1728(ra) # 80003ea0 <__putc>
    80001568:	fff4849b          	addiw	s1,s1,-1
    8000156c:	fe04d4e3          	bgez	s1,80001554 <_Z12printIntegerm+0x6c>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001570:	00297913          	andi	s2,s2,2
        __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001574:	10092073          	csrs	sstatus,s2
}
    80001578:	03813083          	ld	ra,56(sp)
    8000157c:	03013403          	ld	s0,48(sp)
    80001580:	02813483          	ld	s1,40(sp)
    80001584:	02013903          	ld	s2,32(sp)
    80001588:	04010113          	addi	sp,sp,64
    8000158c:	00008067          	ret

0000000080001590 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.h"
#include "../lib/console.h"
#include "../h/MemoryAllocator.h"
#include "../h/Thread.h"

void Riscv::popSppSpie(){
    80001590:	ff010113          	addi	sp,sp,-16
    80001594:	00813423          	sd	s0,8(sp)
    80001598:	01010413          	addi	s0,sp,16
	
	__asm__ volatile("csrw sepc, ra");
    8000159c:	14109073          	csrw	sepc,ra
	__asm__ volatile ("sret");
    800015a0:	10200073          	sret
}
    800015a4:	00813403          	ld	s0,8(sp)
    800015a8:	01010113          	addi	sp,sp,16
    800015ac:	00008067          	ret

00000000800015b0 <_ZN5Riscv20handleSupervisorTrapEv>:
void Riscv::handleSupervisorTrap() {
    800015b0:	fb010113          	addi	sp,sp,-80
    800015b4:	04113423          	sd	ra,72(sp)
    800015b8:	04813023          	sd	s0,64(sp)
    800015bc:	02913c23          	sd	s1,56(sp)
    800015c0:	03213823          	sd	s2,48(sp)
    800015c4:	05010413          	addi	s0,sp,80
        __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800015c8:	142027f3          	csrr	a5,scause
    800015cc:	faf43c23          	sd	a5,-72(s0)
        return scause;
    800015d0:	fb843703          	ld	a4,-72(s0)

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
    800015d4:	ff870693          	addi	a3,a4,-8
    800015d8:	00100793          	li	a5,1
    800015dc:	02d7fe63          	bgeu	a5,a3,80001618 <_ZN5Riscv20handleSupervisorTrapEv+0x68>
    	uint64 sstatus = r_sstatus();
    	Thread::timeSliceCounter = 0;
    	Thread::dispatch();
    	w_sstatus(sstatus);
    	w_sepc(sepc);
    } else if (scause == 0x8000000000000009UL) {
    800015e0:	fff00793          	li	a5,-1
    800015e4:	03f79793          	slli	a5,a5,0x3f
    800015e8:	00978793          	addi	a5,a5,9
    800015ec:	06f70263          	beq	a4,a5,80001650 <_ZN5Riscv20handleSupervisorTrapEv+0xa0>
        console_handler();
    } else if (scause == 0x8000000000000001UL) {
    800015f0:	fff00793          	li	a5,-1
    800015f4:	03f79793          	slli	a5,a5,0x3f
    800015f8:	00178793          	addi	a5,a5,1
    800015fc:	06f70063          	beq	a4,a5,8000165c <_ZN5Riscv20handleSupervisorTrapEv+0xac>
    }
        mc_sip(SIP_SSIP);
    } else {
       
    }
}
    80001600:	04813083          	ld	ra,72(sp)
    80001604:	04013403          	ld	s0,64(sp)
    80001608:	03813483          	ld	s1,56(sp)
    8000160c:	03013903          	ld	s2,48(sp)
    80001610:	05010113          	addi	sp,sp,80
    80001614:	00008067          	ret
        __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001618:	141027f3          	csrr	a5,sepc
    8000161c:	fcf43423          	sd	a5,-56(s0)
        return sepc;
    80001620:	fc843483          	ld	s1,-56(s0)
        uint64 sepc = r_sepc() + 4;
    80001624:	00448493          	addi	s1,s1,4
        __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001628:	100027f3          	csrr	a5,sstatus
    8000162c:	fcf43023          	sd	a5,-64(s0)
        return sstatus;
    80001630:	fc043903          	ld	s2,-64(s0)
    	Thread::timeSliceCounter = 0;
    80001634:	00004797          	auipc	a5,0x4
    80001638:	0e07ba23          	sd	zero,244(a5) # 80005728 <_ZN6Thread16timeSliceCounterE>
    	Thread::dispatch();
    8000163c:	00000097          	auipc	ra,0x0
    80001640:	380080e7          	jalr	896(ra) # 800019bc <_ZN6Thread8dispatchEv>
    }

    inline void Riscv::w_sstatus(uint64 sstatus)
    {
        __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001644:	10091073          	csrw	sstatus,s2
        __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001648:	14149073          	csrw	sepc,s1
    }
    8000164c:	fb5ff06f          	j	80001600 <_ZN5Riscv20handleSupervisorTrapEv+0x50>
        console_handler();
    80001650:	00003097          	auipc	ra,0x3
    80001654:	8c4080e7          	jalr	-1852(ra) # 80003f14 <console_handler>
    80001658:	fa9ff06f          	j	80001600 <_ZN5Riscv20handleSupervisorTrapEv+0x50>
    	Thread::timeSliceCounter++;
    8000165c:	00004717          	auipc	a4,0x4
    80001660:	0cc70713          	addi	a4,a4,204 # 80005728 <_ZN6Thread16timeSliceCounterE>
    80001664:	00073783          	ld	a5,0(a4)
    80001668:	00178793          	addi	a5,a5,1
    8000166c:	00f73023          	sd	a5,0(a4)
    if(Thread::timeSliceCounter >= Thread::running -> getTimeSlice())
    80001670:	00004717          	auipc	a4,0x4
    80001674:	0c073703          	ld	a4,192(a4) # 80005730 <_ZN6Thread7runningE>
	
	uint64 getTimeSlice() const {
	return timeSlice;
    80001678:	02873703          	ld	a4,40(a4)
    8000167c:	00e7f863          	bgeu	a5,a4,8000168c <_ZN5Riscv20handleSupervisorTrapEv+0xdc>
        __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001680:	00200793          	li	a5,2
    80001684:	1447b073          	csrc	sip,a5
}
    80001688:	f79ff06f          	j	80001600 <_ZN5Riscv20handleSupervisorTrapEv+0x50>
        __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000168c:	141027f3          	csrr	a5,sepc
    80001690:	fcf43c23          	sd	a5,-40(s0)
        return sepc;
    80001694:	fd843483          	ld	s1,-40(s0)
        __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001698:	100027f3          	csrr	a5,sstatus
    8000169c:	fcf43823          	sd	a5,-48(s0)
        return sstatus;
    800016a0:	fd043903          	ld	s2,-48(s0)
    	Thread::timeSliceCounter = 0;
    800016a4:	00004797          	auipc	a5,0x4
    800016a8:	0807b223          	sd	zero,132(a5) # 80005728 <_ZN6Thread16timeSliceCounterE>
    	Thread::dispatch();
    800016ac:	00000097          	auipc	ra,0x0
    800016b0:	310080e7          	jalr	784(ra) # 800019bc <_ZN6Thread8dispatchEv>
        __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800016b4:	10091073          	csrw	sstatus,s2
        __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800016b8:	14149073          	csrw	sepc,s1
    }
    800016bc:	fc5ff06f          	j	80001680 <_ZN5Riscv20handleSupervisorTrapEv+0xd0>

00000000800016c0 <_ZN9Scheduler3putEP6Thread>:
#include "../h/Scheduler.h"
#include "../h/Thread.h"
void Scheduler::put(Thread* t) {
    800016c0:	ff010113          	addi	sp,sp,-16
    800016c4:	00813423          	sd	s0,8(sp)
    800016c8:	01010413          	addi	s0,sp,16
    if (!t) return;
    800016cc:	00058e63          	beqz	a1,800016e8 <_ZN9Scheduler3putEP6Thread+0x28>
    t->next = nullptr;
    800016d0:	0005b023          	sd	zero,0(a1)

    if (!head) {
    800016d4:	00053783          	ld	a5,0(a0)
    800016d8:	00078e63          	beqz	a5,800016f4 <_ZN9Scheduler3putEP6Thread+0x34>
        head = t;
    } else {
        tail->next = t;
    800016dc:	00853783          	ld	a5,8(a0)
    800016e0:	00b7b023          	sd	a1,0(a5)
    }
    tail = t;
    800016e4:	00b53423          	sd	a1,8(a0)
}
    800016e8:	00813403          	ld	s0,8(sp)
    800016ec:	01010113          	addi	sp,sp,16
    800016f0:	00008067          	ret
        head = t;
    800016f4:	00b53023          	sd	a1,0(a0)
    800016f8:	fedff06f          	j	800016e4 <_ZN9Scheduler3putEP6Thread+0x24>

00000000800016fc <_ZN9Scheduler3getEv>:

Thread* Scheduler::get() {
    800016fc:	ff010113          	addi	sp,sp,-16
    80001700:	00813423          	sd	s0,8(sp)
    80001704:	01010413          	addi	s0,sp,16
    80001708:	00050793          	mv	a5,a0
    if (!head) {
    8000170c:	00053503          	ld	a0,0(a0)
    80001710:	00050a63          	beqz	a0,80001724 <_ZN9Scheduler3getEv+0x28>
        return nullptr;
    }

    Thread* t = head;
    head = head->next;
    80001714:	00053703          	ld	a4,0(a0)
    80001718:	00e7b023          	sd	a4,0(a5)

    if (!head) {
    8000171c:	00070a63          	beqz	a4,80001730 <_ZN9Scheduler3getEv+0x34>
        tail = nullptr;
    }

    t->next = nullptr;
    80001720:	00053023          	sd	zero,0(a0)
    return t;
    80001724:	00813403          	ld	s0,8(sp)
    80001728:	01010113          	addi	sp,sp,16
    8000172c:	00008067          	ret
        tail = nullptr;
    80001730:	0007b423          	sd	zero,8(a5)
    80001734:	fedff06f          	j	80001720 <_ZN9Scheduler3getEv+0x24>

0000000080001738 <_Z9mem_allocm>:
#include "../h/syscall_c.h"
#include  "../h/riscv.h"
#include "../lib/mem.h"
void *mem_alloc(size_t size) {
    80001738:	fe010113          	addi	sp,sp,-32
    8000173c:	00813c23          	sd	s0,24(sp)
    80001740:	02010413          	addi	s0,sp,32
    size_t blocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001744:	03f50513          	addi	a0,a0,63
    80001748:	00655513          	srli	a0,a0,0x6
        return value;
    }


inline void Riscv::writeARegister( int reg_number, uint64 value) {
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    8000174c:	00050593          	mv	a1,a0
    80001750:	00100793          	li	a5,1
    80001754:	00078513          	mv	a0,a5

    Riscv::writeARegister(1, blocks);
    Riscv::writeARegister(0, 0x01);

    __asm__ volatile("ecall");
    80001758:	00000073          	ecall
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    8000175c:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80001760:	fef43423          	sd	a5,-24(s0)
    return (void*) a0;
    80001764:	fe843503          	ld	a0,-24(s0)


}
    80001768:	01813403          	ld	s0,24(sp)
    8000176c:	02010113          	addi	sp,sp,32
    80001770:	00008067          	ret

0000000080001774 <_Z8mem_freePv>:

int mem_free (void* ptr) {
    80001774:	fe010113          	addi	sp,sp,-32
    80001778:	00813c23          	sd	s0,24(sp)
    8000177c:	02010413          	addi	s0,sp,32
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001780:	00050593          	mv	a1,a0
    80001784:	00200793          	li	a5,2
    80001788:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)ptr);
    Riscv::writeARegister(0, 0x02);

    __asm__ volatile("ecall");
    8000178c:	00000073          	ecall
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    80001790:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80001794:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    80001798:	fe843503          	ld	a0,-24(s0)
}
    8000179c:	0005051b          	sext.w	a0,a0
    800017a0:	01813403          	ld	s0,24(sp)
    800017a4:	02010113          	addi	sp,sp,32
    800017a8:	00008067          	ret

00000000800017ac <_Znwm>:

void* operator new(size_t size) {
    800017ac:	ff010113          	addi	sp,sp,-16
    800017b0:	00113423          	sd	ra,8(sp)
    800017b4:	00813023          	sd	s0,0(sp)
    800017b8:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    800017bc:	00002097          	auipc	ra,0x2
    800017c0:	58c080e7          	jalr	1420(ra) # 80003d48 <__mem_alloc>
}
    800017c4:	00813083          	ld	ra,8(sp)
    800017c8:	00013403          	ld	s0,0(sp)
    800017cc:	01010113          	addi	sp,sp,16
    800017d0:	00008067          	ret

00000000800017d4 <_Znam>:


void* operator new[](size_t size) {
    800017d4:	ff010113          	addi	sp,sp,-16
    800017d8:	00113423          	sd	ra,8(sp)
    800017dc:	00813023          	sd	s0,0(sp)
    800017e0:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    800017e4:	00002097          	auipc	ra,0x2
    800017e8:	564080e7          	jalr	1380(ra) # 80003d48 <__mem_alloc>
}
    800017ec:	00813083          	ld	ra,8(sp)
    800017f0:	00013403          	ld	s0,0(sp)
    800017f4:	01010113          	addi	sp,sp,16
    800017f8:	00008067          	ret

00000000800017fc <_ZdlPv>:


void operator delete(void* ptr) noexcept {
    800017fc:	ff010113          	addi	sp,sp,-16
    80001800:	00113423          	sd	ra,8(sp)
    80001804:	00813023          	sd	s0,0(sp)
    80001808:	01010413          	addi	s0,sp,16
    __mem_free(ptr);
    8000180c:	00002097          	auipc	ra,0x2
    80001810:	470080e7          	jalr	1136(ra) # 80003c7c <__mem_free>
}
    80001814:	00813083          	ld	ra,8(sp)
    80001818:	00013403          	ld	s0,0(sp)
    8000181c:	01010113          	addi	sp,sp,16
    80001820:	00008067          	ret

0000000080001824 <_ZdaPv>:

void operator delete[](void* ptr) noexcept {
    80001824:	ff010113          	addi	sp,sp,-16
    80001828:	00113423          	sd	ra,8(sp)
    8000182c:	00813023          	sd	s0,0(sp)
    80001830:	01010413          	addi	s0,sp,16
    __mem_free(ptr);
    80001834:	00002097          	auipc	ra,0x2
    80001838:	448080e7          	jalr	1096(ra) # 80003c7c <__mem_free>
    8000183c:	00813083          	ld	ra,8(sp)
    80001840:	00013403          	ld	s0,0(sp)
    80001844:	01010113          	addi	sp,sp,16
    80001848:	00008067          	ret

000000008000184c <_ZN6Thread12createThreadEPFvvE>:
Thread* Thread::running = nullptr;

uint64 Thread::timeSliceCounter = 0;


Thread* Thread::createThread(Body body) {
    8000184c:	fe010113          	addi	sp,sp,-32
    80001850:	00113c23          	sd	ra,24(sp)
    80001854:	00813823          	sd	s0,16(sp)
    80001858:	00913423          	sd	s1,8(sp)
    8000185c:	01213023          	sd	s2,0(sp)
    80001860:	02010413          	addi	s0,sp,32
    80001864:	00050913          	mv	s2,a0
    return new Thread(body, TIME_SLICE);
    80001868:	03800513          	li	a0,56
    8000186c:	00000097          	auipc	ra,0x0
    80001870:	f40080e7          	jalr	-192(ra) # 800017ac <_Znwm>
    80001874:	00050493          	mv	s1,a0
    friend class Scheduler;
    friend class Riscv;

    Thread(Body body, uint64 timeSlice): next(nullptr), body(body),stack(body!=nullptr ? new uint64[STACK_SIZE] : nullptr),context({
    (uint64)&threadWrapper, stack!= nullptr ? (uint64)& stack[STACK_SIZE] : 0}),
    timeSlice(timeSlice), finished(false) {
    80001878:	00053023          	sd	zero,0(a0)
    8000187c:	01253423          	sd	s2,8(a0)
    Thread(Body body, uint64 timeSlice): next(nullptr), body(body),stack(body!=nullptr ? new uint64[STACK_SIZE] : nullptr),context({
    80001880:	00090a63          	beqz	s2,80001894 <_ZN6Thread12createThreadEPFvvE+0x48>
    80001884:	00002537          	lui	a0,0x2
    80001888:	00000097          	auipc	ra,0x0
    8000188c:	f4c080e7          	jalr	-180(ra) # 800017d4 <_Znam>
    80001890:	0080006f          	j	80001898 <_ZN6Thread12createThreadEPFvvE+0x4c>
    80001894:	00000513          	li	a0,0
    timeSlice(timeSlice), finished(false) {
    80001898:	00a4b823          	sd	a0,16(s1)
    8000189c:	00000797          	auipc	a5,0x0
    800018a0:	0c878793          	addi	a5,a5,200 # 80001964 <_ZN6Thread13threadWrapperEv>
    800018a4:	00f4bc23          	sd	a5,24(s1)
    (uint64)&threadWrapper, stack!= nullptr ? (uint64)& stack[STACK_SIZE] : 0}),
    800018a8:	06050063          	beqz	a0,80001908 <_ZN6Thread12createThreadEPFvvE+0xbc>
    800018ac:	000027b7          	lui	a5,0x2
    800018b0:	00f507b3          	add	a5,a0,a5
    timeSlice(timeSlice), finished(false) {
    800018b4:	02f4b023          	sd	a5,32(s1)
    800018b8:	00200793          	li	a5,2
    800018bc:	02f4b423          	sd	a5,40(s1)
    800018c0:	02048823          	sb	zero,48(s1)
        if (body!=nullptr) Scheduler::instance().put(this);
    800018c4:	06090463          	beqz	s2,8000192c <_ZN6Thread12createThreadEPFvvE+0xe0>

class Thread;

class Scheduler {
public:
    static Scheduler& instance(){static Scheduler instance; return instance;}
    800018c8:	00004797          	auipc	a5,0x4
    800018cc:	e587c783          	lbu	a5,-424(a5) # 80005720 <_ZGVZN9Scheduler8instanceEvE8instance>
    800018d0:	02079063          	bnez	a5,800018f0 <_ZN6Thread12createThreadEPFvvE+0xa4>

    void put(Thread* t);

    Thread* get();
private:
    Scheduler():head(nullptr), tail(nullptr){};
    800018d4:	00004797          	auipc	a5,0x4
    800018d8:	e9c78793          	addi	a5,a5,-356 # 80005770 <_ZZN9Scheduler8instanceEvE8instance>
    800018dc:	0007b023          	sd	zero,0(a5)
    800018e0:	0007b423          	sd	zero,8(a5)
    static Scheduler& instance(){static Scheduler instance; return instance;}
    800018e4:	00100793          	li	a5,1
    800018e8:	00004717          	auipc	a4,0x4
    800018ec:	e2f70c23          	sb	a5,-456(a4) # 80005720 <_ZGVZN9Scheduler8instanceEvE8instance>
    800018f0:	00048593          	mv	a1,s1
    800018f4:	00004517          	auipc	a0,0x4
    800018f8:	e7c50513          	addi	a0,a0,-388 # 80005770 <_ZZN9Scheduler8instanceEvE8instance>
    800018fc:	00000097          	auipc	ra,0x0
    80001900:	dc4080e7          	jalr	-572(ra) # 800016c0 <_ZN9Scheduler3putEP6Thread>
    80001904:	0280006f          	j	8000192c <_ZN6Thread12createThreadEPFvvE+0xe0>
    (uint64)&threadWrapper, stack!= nullptr ? (uint64)& stack[STACK_SIZE] : 0}),
    80001908:	00000793          	li	a5,0
    8000190c:	fa9ff06f          	j	800018b4 <_ZN6Thread12createThreadEPFvvE+0x68>
    80001910:	00050913          	mv	s2,a0
    80001914:	00048513          	mv	a0,s1
    80001918:	00000097          	auipc	ra,0x0
    8000191c:	ee4080e7          	jalr	-284(ra) # 800017fc <_ZdlPv>
    80001920:	00090513          	mv	a0,s2
    80001924:	00005097          	auipc	ra,0x5
    80001928:	f24080e7          	jalr	-220(ra) # 80006848 <_Unwind_Resume>
}
    8000192c:	00048513          	mv	a0,s1
    80001930:	01813083          	ld	ra,24(sp)
    80001934:	01013403          	ld	s0,16(sp)
    80001938:	00813483          	ld	s1,8(sp)
    8000193c:	00013903          	ld	s2,0(sp)
    80001940:	02010113          	addi	sp,sp,32
    80001944:	00008067          	ret

0000000080001948 <_ZN6Thread5yieldEv>:

void Thread::yield() {
    80001948:	ff010113          	addi	sp,sp,-16
    8000194c:	00813423          	sd	s0,8(sp)
    80001950:	01010413          	addi	s0,sp,16
    
    __asm__ volatile ("ecall");
    80001954:	00000073          	ecall
}
    80001958:	00813403          	ld	s0,8(sp)
    8000195c:	01010113          	addi	sp,sp,16
    80001960:	00008067          	ret

0000000080001964 <_ZN6Thread13threadWrapperEv>:
        switchContext(&old->context, &running->context);
    }
}


void Thread::threadWrapper(){
    80001964:	fe010113          	addi	sp,sp,-32
    80001968:	00113c23          	sd	ra,24(sp)
    8000196c:	00813823          	sd	s0,16(sp)
    80001970:	00913423          	sd	s1,8(sp)
    80001974:	02010413          	addi	s0,sp,32

Riscv::popSppSpie();
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	c18080e7          	jalr	-1000(ra) # 80001590 <_ZN5Riscv10popSppSpieEv>
running -> body();
    80001980:	00004497          	auipc	s1,0x4
    80001984:	db048493          	addi	s1,s1,-592 # 80005730 <_ZN6Thread7runningE>
    80001988:	0004b783          	ld	a5,0(s1)
    8000198c:	0087b783          	ld	a5,8(a5)
    80001990:	000780e7          	jalr	a5

running -> setFinished(true);
    80001994:	0004b783          	ld	a5,0(s1)
    void setFinished(bool finished){Thread::finished = finished;};
    80001998:	00100713          	li	a4,1
    8000199c:	02e78823          	sb	a4,48(a5)

Thread::yield();
    800019a0:	00000097          	auipc	ra,0x0
    800019a4:	fa8080e7          	jalr	-88(ra) # 80001948 <_ZN6Thread5yieldEv>
}
    800019a8:	01813083          	ld	ra,24(sp)
    800019ac:	01013403          	ld	s0,16(sp)
    800019b0:	00813483          	ld	s1,8(sp)
    800019b4:	02010113          	addi	sp,sp,32
    800019b8:	00008067          	ret

00000000800019bc <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800019bc:	fe010113          	addi	sp,sp,-32
    800019c0:	00113c23          	sd	ra,24(sp)
    800019c4:	00813823          	sd	s0,16(sp)
    800019c8:	00913423          	sd	s1,8(sp)
    800019cc:	02010413          	addi	s0,sp,32
    Thread* old = running;
    800019d0:	00004497          	auipc	s1,0x4
    800019d4:	d604b483          	ld	s1,-672(s1) # 80005730 <_ZN6Thread7runningE>
    if (old && !old->finished) {
    800019d8:	04048463          	beqz	s1,80001a20 <_ZN6Thread8dispatchEv+0x64>
    800019dc:	0304c783          	lbu	a5,48(s1)
    800019e0:	04079063          	bnez	a5,80001a20 <_ZN6Thread8dispatchEv+0x64>
    800019e4:	00004797          	auipc	a5,0x4
    800019e8:	d3c7c783          	lbu	a5,-708(a5) # 80005720 <_ZGVZN9Scheduler8instanceEvE8instance>
    800019ec:	02079063          	bnez	a5,80001a0c <_ZN6Thread8dispatchEv+0x50>
    Scheduler():head(nullptr), tail(nullptr){};
    800019f0:	00004797          	auipc	a5,0x4
    800019f4:	d8078793          	addi	a5,a5,-640 # 80005770 <_ZZN9Scheduler8instanceEvE8instance>
    800019f8:	0007b023          	sd	zero,0(a5)
    800019fc:	0007b423          	sd	zero,8(a5)
    static Scheduler& instance(){static Scheduler instance; return instance;}
    80001a00:	00100793          	li	a5,1
    80001a04:	00004717          	auipc	a4,0x4
    80001a08:	d0f70e23          	sb	a5,-740(a4) # 80005720 <_ZGVZN9Scheduler8instanceEvE8instance>
        Scheduler::instance().put(old);
    80001a0c:	00048593          	mv	a1,s1
    80001a10:	00004517          	auipc	a0,0x4
    80001a14:	d6050513          	addi	a0,a0,-672 # 80005770 <_ZZN9Scheduler8instanceEvE8instance>
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	ca8080e7          	jalr	-856(ra) # 800016c0 <_ZN9Scheduler3putEP6Thread>
    80001a20:	00004797          	auipc	a5,0x4
    80001a24:	d007c783          	lbu	a5,-768(a5) # 80005720 <_ZGVZN9Scheduler8instanceEvE8instance>
    80001a28:	02079063          	bnez	a5,80001a48 <_ZN6Thread8dispatchEv+0x8c>
    Scheduler():head(nullptr), tail(nullptr){};
    80001a2c:	00004797          	auipc	a5,0x4
    80001a30:	d4478793          	addi	a5,a5,-700 # 80005770 <_ZZN9Scheduler8instanceEvE8instance>
    80001a34:	0007b023          	sd	zero,0(a5)
    80001a38:	0007b423          	sd	zero,8(a5)
    static Scheduler& instance(){static Scheduler instance; return instance;}
    80001a3c:	00100793          	li	a5,1
    80001a40:	00004717          	auipc	a4,0x4
    80001a44:	cef70023          	sb	a5,-800(a4) # 80005720 <_ZGVZN9Scheduler8instanceEvE8instance>
    running = Scheduler::instance().get();
    80001a48:	00004517          	auipc	a0,0x4
    80001a4c:	d2850513          	addi	a0,a0,-728 # 80005770 <_ZZN9Scheduler8instanceEvE8instance>
    80001a50:	00000097          	auipc	ra,0x0
    80001a54:	cac080e7          	jalr	-852(ra) # 800016fc <_ZN9Scheduler3getEv>
    80001a58:	00004797          	auipc	a5,0x4
    80001a5c:	cca7bc23          	sd	a0,-808(a5) # 80005730 <_ZN6Thread7runningE>
    if (old != running) {
    80001a60:	00a48a63          	beq	s1,a0,80001a74 <_ZN6Thread8dispatchEv+0xb8>
        switchContext(&old->context, &running->context);
    80001a64:	01850593          	addi	a1,a0,24
    80001a68:	01848513          	addi	a0,s1,24
    80001a6c:	fffff097          	auipc	ra,0xfffff
    80001a70:	6a4080e7          	jalr	1700(ra) # 80001110 <_ZN6Thread13switchContextEPNS_7ContextES1_>
}
    80001a74:	01813083          	ld	ra,24(sp)
    80001a78:	01013403          	ld	s0,16(sp)
    80001a7c:	00813483          	ld	s1,8(sp)
    80001a80:	02010113          	addi	sp,sp,32
    80001a84:	00008067          	ret

0000000080001a88 <_Z11workerBodyAv>:
#include "../lib/hw.h"
#include "../h/Thread.h"
#include "../h/printer.h"

void workerBodyA()
{
    80001a88:	fe010113          	addi	sp,sp,-32
    80001a8c:	00113c23          	sd	ra,24(sp)
    80001a90:	00813823          	sd	s0,16(sp)
    80001a94:	00913423          	sd	s1,8(sp)
    80001a98:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    80001a9c:	00000493          	li	s1,0
    80001aa0:	0300006f          	j	80001ad0 <_Z11workerBodyAv+0x48>
        printString("A: i=");
        printInteger(i);
        printString("\n");
        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++)
    80001aa4:	00170713          	addi	a4,a4,1
    80001aa8:	000077b7          	lui	a5,0x7
    80001aac:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001ab0:	fee7fae3          	bgeu	a5,a4,80001aa4 <_Z11workerBodyAv+0x1c>
        for (uint64 j = 0; j < 10000; j++)
    80001ab4:	00168693          	addi	a3,a3,1
    80001ab8:	000027b7          	lui	a5,0x2
    80001abc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001ac0:	00d7e663          	bltu	a5,a3,80001acc <_Z11workerBodyAv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001ac4:	00000713          	li	a4,0
    80001ac8:	fe1ff06f          	j	80001aa8 <_Z11workerBodyAv+0x20>
    for (uint64 i = 0; i < 10; i++)
    80001acc:	00148493          	addi	s1,s1,1
    80001ad0:	00900793          	li	a5,9
    80001ad4:	0297ec63          	bltu	a5,s1,80001b0c <_Z11workerBodyAv+0x84>
        printString("A: i=");
    80001ad8:	00003517          	auipc	a0,0x3
    80001adc:	59850513          	addi	a0,a0,1432 # 80005070 <_ZZ12printIntegermE6digits+0x10>
    80001ae0:	00000097          	auipc	ra,0x0
    80001ae4:	9a0080e7          	jalr	-1632(ra) # 80001480 <_Z11printStringPKc>
        printInteger(i);
    80001ae8:	00048513          	mv	a0,s1
    80001aec:	00000097          	auipc	ra,0x0
    80001af0:	9fc080e7          	jalr	-1540(ra) # 800014e8 <_Z12printIntegerm>
        printString("\n");
    80001af4:	00003517          	auipc	a0,0x3
    80001af8:	56450513          	addi	a0,a0,1380 # 80005058 <CONSOLE_STATUS+0x48>
    80001afc:	00000097          	auipc	ra,0x0
    80001b00:	984080e7          	jalr	-1660(ra) # 80001480 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001b04:	00000693          	li	a3,0
    80001b08:	fb1ff06f          	j	80001ab8 <_Z11workerBodyAv+0x30>
                // busy wait
            }
        }
     
    }
}
    80001b0c:	01813083          	ld	ra,24(sp)
    80001b10:	01013403          	ld	s0,16(sp)
    80001b14:	00813483          	ld	s1,8(sp)
    80001b18:	02010113          	addi	sp,sp,32
    80001b1c:	00008067          	ret

0000000080001b20 <_Z11workerBodyBv>:

void workerBodyB()
{
    80001b20:	fe010113          	addi	sp,sp,-32
    80001b24:	00113c23          	sd	ra,24(sp)
    80001b28:	00813823          	sd	s0,16(sp)
    80001b2c:	00913423          	sd	s1,8(sp)
    80001b30:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 61; i++)
    80001b34:	00000493          	li	s1,0
    80001b38:	0300006f          	j	80001b68 <_Z11workerBodyBv+0x48>
        printString("B: i=");
        printInteger(i);
        printString("\n");
        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++)
    80001b3c:	00170713          	addi	a4,a4,1
    80001b40:	000077b7          	lui	a5,0x7
    80001b44:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001b48:	fee7fae3          	bgeu	a5,a4,80001b3c <_Z11workerBodyBv+0x1c>
        for (uint64 j = 0; j < 10000; j++)
    80001b4c:	00168693          	addi	a3,a3,1
    80001b50:	000027b7          	lui	a5,0x2
    80001b54:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001b58:	00d7e663          	bltu	a5,a3,80001b64 <_Z11workerBodyBv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001b5c:	00000713          	li	a4,0
    80001b60:	fe1ff06f          	j	80001b40 <_Z11workerBodyBv+0x20>
    for (uint64 i = 0; i < 61; i++)
    80001b64:	00148493          	addi	s1,s1,1
    80001b68:	03c00793          	li	a5,60
    80001b6c:	0297ec63          	bltu	a5,s1,80001ba4 <_Z11workerBodyBv+0x84>
        printString("B: i=");
    80001b70:	00003517          	auipc	a0,0x3
    80001b74:	50850513          	addi	a0,a0,1288 # 80005078 <_ZZ12printIntegermE6digits+0x18>
    80001b78:	00000097          	auipc	ra,0x0
    80001b7c:	908080e7          	jalr	-1784(ra) # 80001480 <_Z11printStringPKc>
        printInteger(i);
    80001b80:	00048513          	mv	a0,s1
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	964080e7          	jalr	-1692(ra) # 800014e8 <_Z12printIntegerm>
        printString("\n");
    80001b8c:	00003517          	auipc	a0,0x3
    80001b90:	4cc50513          	addi	a0,a0,1228 # 80005058 <CONSOLE_STATUS+0x48>
    80001b94:	00000097          	auipc	ra,0x0
    80001b98:	8ec080e7          	jalr	-1812(ra) # 80001480 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001b9c:	00000693          	li	a3,0
    80001ba0:	fb1ff06f          	j	80001b50 <_Z11workerBodyBv+0x30>
                // busy wait
            }
        }
      
    }
}
    80001ba4:	01813083          	ld	ra,24(sp)
    80001ba8:	01013403          	ld	s0,16(sp)
    80001bac:	00813483          	ld	s1,8(sp)
    80001bb0:	02010113          	addi	sp,sp,32
    80001bb4:	00008067          	ret

0000000080001bb8 <start>:
    80001bb8:	ff010113          	addi	sp,sp,-16
    80001bbc:	00813423          	sd	s0,8(sp)
    80001bc0:	01010413          	addi	s0,sp,16
    80001bc4:	300027f3          	csrr	a5,mstatus
    80001bc8:	ffffe737          	lui	a4,0xffffe
    80001bcc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7e0f>
    80001bd0:	00e7f7b3          	and	a5,a5,a4
    80001bd4:	00001737          	lui	a4,0x1
    80001bd8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001bdc:	00e7e7b3          	or	a5,a5,a4
    80001be0:	30079073          	csrw	mstatus,a5
    80001be4:	00000797          	auipc	a5,0x0
    80001be8:	16078793          	addi	a5,a5,352 # 80001d44 <system_main>
    80001bec:	34179073          	csrw	mepc,a5
    80001bf0:	00000793          	li	a5,0
    80001bf4:	18079073          	csrw	satp,a5
    80001bf8:	000107b7          	lui	a5,0x10
    80001bfc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001c00:	30279073          	csrw	medeleg,a5
    80001c04:	30379073          	csrw	mideleg,a5
    80001c08:	104027f3          	csrr	a5,sie
    80001c0c:	2227e793          	ori	a5,a5,546
    80001c10:	10479073          	csrw	sie,a5
    80001c14:	fff00793          	li	a5,-1
    80001c18:	00a7d793          	srli	a5,a5,0xa
    80001c1c:	3b079073          	csrw	pmpaddr0,a5
    80001c20:	00f00793          	li	a5,15
    80001c24:	3a079073          	csrw	pmpcfg0,a5
    80001c28:	f14027f3          	csrr	a5,mhartid
    80001c2c:	0200c737          	lui	a4,0x200c
    80001c30:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001c34:	0007869b          	sext.w	a3,a5
    80001c38:	00269713          	slli	a4,a3,0x2
    80001c3c:	000f4637          	lui	a2,0xf4
    80001c40:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001c44:	00d70733          	add	a4,a4,a3
    80001c48:	0037979b          	slliw	a5,a5,0x3
    80001c4c:	020046b7          	lui	a3,0x2004
    80001c50:	00d787b3          	add	a5,a5,a3
    80001c54:	00c585b3          	add	a1,a1,a2
    80001c58:	00371693          	slli	a3,a4,0x3
    80001c5c:	00004717          	auipc	a4,0x4
    80001c60:	b2470713          	addi	a4,a4,-1244 # 80005780 <timer_scratch>
    80001c64:	00b7b023          	sd	a1,0(a5)
    80001c68:	00d70733          	add	a4,a4,a3
    80001c6c:	00f73c23          	sd	a5,24(a4)
    80001c70:	02c73023          	sd	a2,32(a4)
    80001c74:	34071073          	csrw	mscratch,a4
    80001c78:	00000797          	auipc	a5,0x0
    80001c7c:	6e878793          	addi	a5,a5,1768 # 80002360 <timervec>
    80001c80:	30579073          	csrw	mtvec,a5
    80001c84:	300027f3          	csrr	a5,mstatus
    80001c88:	0087e793          	ori	a5,a5,8
    80001c8c:	30079073          	csrw	mstatus,a5
    80001c90:	304027f3          	csrr	a5,mie
    80001c94:	0807e793          	ori	a5,a5,128
    80001c98:	30479073          	csrw	mie,a5
    80001c9c:	f14027f3          	csrr	a5,mhartid
    80001ca0:	0007879b          	sext.w	a5,a5
    80001ca4:	00078213          	mv	tp,a5
    80001ca8:	30200073          	mret
    80001cac:	00813403          	ld	s0,8(sp)
    80001cb0:	01010113          	addi	sp,sp,16
    80001cb4:	00008067          	ret

0000000080001cb8 <timerinit>:
    80001cb8:	ff010113          	addi	sp,sp,-16
    80001cbc:	00813423          	sd	s0,8(sp)
    80001cc0:	01010413          	addi	s0,sp,16
    80001cc4:	f14027f3          	csrr	a5,mhartid
    80001cc8:	0200c737          	lui	a4,0x200c
    80001ccc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001cd0:	0007869b          	sext.w	a3,a5
    80001cd4:	00269713          	slli	a4,a3,0x2
    80001cd8:	000f4637          	lui	a2,0xf4
    80001cdc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001ce0:	00d70733          	add	a4,a4,a3
    80001ce4:	0037979b          	slliw	a5,a5,0x3
    80001ce8:	020046b7          	lui	a3,0x2004
    80001cec:	00d787b3          	add	a5,a5,a3
    80001cf0:	00c585b3          	add	a1,a1,a2
    80001cf4:	00371693          	slli	a3,a4,0x3
    80001cf8:	00004717          	auipc	a4,0x4
    80001cfc:	a8870713          	addi	a4,a4,-1400 # 80005780 <timer_scratch>
    80001d00:	00b7b023          	sd	a1,0(a5)
    80001d04:	00d70733          	add	a4,a4,a3
    80001d08:	00f73c23          	sd	a5,24(a4)
    80001d0c:	02c73023          	sd	a2,32(a4)
    80001d10:	34071073          	csrw	mscratch,a4
    80001d14:	00000797          	auipc	a5,0x0
    80001d18:	64c78793          	addi	a5,a5,1612 # 80002360 <timervec>
    80001d1c:	30579073          	csrw	mtvec,a5
    80001d20:	300027f3          	csrr	a5,mstatus
    80001d24:	0087e793          	ori	a5,a5,8
    80001d28:	30079073          	csrw	mstatus,a5
    80001d2c:	304027f3          	csrr	a5,mie
    80001d30:	0807e793          	ori	a5,a5,128
    80001d34:	30479073          	csrw	mie,a5
    80001d38:	00813403          	ld	s0,8(sp)
    80001d3c:	01010113          	addi	sp,sp,16
    80001d40:	00008067          	ret

0000000080001d44 <system_main>:
    80001d44:	fe010113          	addi	sp,sp,-32
    80001d48:	00813823          	sd	s0,16(sp)
    80001d4c:	00913423          	sd	s1,8(sp)
    80001d50:	00113c23          	sd	ra,24(sp)
    80001d54:	02010413          	addi	s0,sp,32
    80001d58:	00000097          	auipc	ra,0x0
    80001d5c:	0c4080e7          	jalr	196(ra) # 80001e1c <cpuid>
    80001d60:	00004497          	auipc	s1,0x4
    80001d64:	9d848493          	addi	s1,s1,-1576 # 80005738 <started>
    80001d68:	02050263          	beqz	a0,80001d8c <system_main+0x48>
    80001d6c:	0004a783          	lw	a5,0(s1)
    80001d70:	0007879b          	sext.w	a5,a5
    80001d74:	fe078ce3          	beqz	a5,80001d6c <system_main+0x28>
    80001d78:	0ff0000f          	fence
    80001d7c:	00003517          	auipc	a0,0x3
    80001d80:	33450513          	addi	a0,a0,820 # 800050b0 <_ZZ12printIntegermE6digits+0x50>
    80001d84:	00001097          	auipc	ra,0x1
    80001d88:	a78080e7          	jalr	-1416(ra) # 800027fc <panic>
    80001d8c:	00001097          	auipc	ra,0x1
    80001d90:	9cc080e7          	jalr	-1588(ra) # 80002758 <consoleinit>
    80001d94:	00001097          	auipc	ra,0x1
    80001d98:	158080e7          	jalr	344(ra) # 80002eec <printfinit>
    80001d9c:	00003517          	auipc	a0,0x3
    80001da0:	2bc50513          	addi	a0,a0,700 # 80005058 <CONSOLE_STATUS+0x48>
    80001da4:	00001097          	auipc	ra,0x1
    80001da8:	ab4080e7          	jalr	-1356(ra) # 80002858 <__printf>
    80001dac:	00003517          	auipc	a0,0x3
    80001db0:	2d450513          	addi	a0,a0,724 # 80005080 <_ZZ12printIntegermE6digits+0x20>
    80001db4:	00001097          	auipc	ra,0x1
    80001db8:	aa4080e7          	jalr	-1372(ra) # 80002858 <__printf>
    80001dbc:	00003517          	auipc	a0,0x3
    80001dc0:	29c50513          	addi	a0,a0,668 # 80005058 <CONSOLE_STATUS+0x48>
    80001dc4:	00001097          	auipc	ra,0x1
    80001dc8:	a94080e7          	jalr	-1388(ra) # 80002858 <__printf>
    80001dcc:	00001097          	auipc	ra,0x1
    80001dd0:	4ac080e7          	jalr	1196(ra) # 80003278 <kinit>
    80001dd4:	00000097          	auipc	ra,0x0
    80001dd8:	148080e7          	jalr	328(ra) # 80001f1c <trapinit>
    80001ddc:	00000097          	auipc	ra,0x0
    80001de0:	16c080e7          	jalr	364(ra) # 80001f48 <trapinithart>
    80001de4:	00000097          	auipc	ra,0x0
    80001de8:	5bc080e7          	jalr	1468(ra) # 800023a0 <plicinit>
    80001dec:	00000097          	auipc	ra,0x0
    80001df0:	5dc080e7          	jalr	1500(ra) # 800023c8 <plicinithart>
    80001df4:	00000097          	auipc	ra,0x0
    80001df8:	078080e7          	jalr	120(ra) # 80001e6c <userinit>
    80001dfc:	0ff0000f          	fence
    80001e00:	00100793          	li	a5,1
    80001e04:	00003517          	auipc	a0,0x3
    80001e08:	29450513          	addi	a0,a0,660 # 80005098 <_ZZ12printIntegermE6digits+0x38>
    80001e0c:	00f4a023          	sw	a5,0(s1)
    80001e10:	00001097          	auipc	ra,0x1
    80001e14:	a48080e7          	jalr	-1464(ra) # 80002858 <__printf>
    80001e18:	0000006f          	j	80001e18 <system_main+0xd4>

0000000080001e1c <cpuid>:
    80001e1c:	ff010113          	addi	sp,sp,-16
    80001e20:	00813423          	sd	s0,8(sp)
    80001e24:	01010413          	addi	s0,sp,16
    80001e28:	00020513          	mv	a0,tp
    80001e2c:	00813403          	ld	s0,8(sp)
    80001e30:	0005051b          	sext.w	a0,a0
    80001e34:	01010113          	addi	sp,sp,16
    80001e38:	00008067          	ret

0000000080001e3c <mycpu>:
    80001e3c:	ff010113          	addi	sp,sp,-16
    80001e40:	00813423          	sd	s0,8(sp)
    80001e44:	01010413          	addi	s0,sp,16
    80001e48:	00020793          	mv	a5,tp
    80001e4c:	00813403          	ld	s0,8(sp)
    80001e50:	0007879b          	sext.w	a5,a5
    80001e54:	00779793          	slli	a5,a5,0x7
    80001e58:	00005517          	auipc	a0,0x5
    80001e5c:	95850513          	addi	a0,a0,-1704 # 800067b0 <cpus>
    80001e60:	00f50533          	add	a0,a0,a5
    80001e64:	01010113          	addi	sp,sp,16
    80001e68:	00008067          	ret

0000000080001e6c <userinit>:
    80001e6c:	ff010113          	addi	sp,sp,-16
    80001e70:	00813423          	sd	s0,8(sp)
    80001e74:	01010413          	addi	s0,sp,16
    80001e78:	00813403          	ld	s0,8(sp)
    80001e7c:	01010113          	addi	sp,sp,16
    80001e80:	fffff317          	auipc	t1,0xfffff
    80001e84:	2a430067          	jr	676(t1) # 80001124 <main>

0000000080001e88 <either_copyout>:
    80001e88:	ff010113          	addi	sp,sp,-16
    80001e8c:	00813023          	sd	s0,0(sp)
    80001e90:	00113423          	sd	ra,8(sp)
    80001e94:	01010413          	addi	s0,sp,16
    80001e98:	02051663          	bnez	a0,80001ec4 <either_copyout+0x3c>
    80001e9c:	00058513          	mv	a0,a1
    80001ea0:	00060593          	mv	a1,a2
    80001ea4:	0006861b          	sext.w	a2,a3
    80001ea8:	00002097          	auipc	ra,0x2
    80001eac:	c5c080e7          	jalr	-932(ra) # 80003b04 <__memmove>
    80001eb0:	00813083          	ld	ra,8(sp)
    80001eb4:	00013403          	ld	s0,0(sp)
    80001eb8:	00000513          	li	a0,0
    80001ebc:	01010113          	addi	sp,sp,16
    80001ec0:	00008067          	ret
    80001ec4:	00003517          	auipc	a0,0x3
    80001ec8:	21450513          	addi	a0,a0,532 # 800050d8 <_ZZ12printIntegermE6digits+0x78>
    80001ecc:	00001097          	auipc	ra,0x1
    80001ed0:	930080e7          	jalr	-1744(ra) # 800027fc <panic>

0000000080001ed4 <either_copyin>:
    80001ed4:	ff010113          	addi	sp,sp,-16
    80001ed8:	00813023          	sd	s0,0(sp)
    80001edc:	00113423          	sd	ra,8(sp)
    80001ee0:	01010413          	addi	s0,sp,16
    80001ee4:	02059463          	bnez	a1,80001f0c <either_copyin+0x38>
    80001ee8:	00060593          	mv	a1,a2
    80001eec:	0006861b          	sext.w	a2,a3
    80001ef0:	00002097          	auipc	ra,0x2
    80001ef4:	c14080e7          	jalr	-1004(ra) # 80003b04 <__memmove>
    80001ef8:	00813083          	ld	ra,8(sp)
    80001efc:	00013403          	ld	s0,0(sp)
    80001f00:	00000513          	li	a0,0
    80001f04:	01010113          	addi	sp,sp,16
    80001f08:	00008067          	ret
    80001f0c:	00003517          	auipc	a0,0x3
    80001f10:	1f450513          	addi	a0,a0,500 # 80005100 <_ZZ12printIntegermE6digits+0xa0>
    80001f14:	00001097          	auipc	ra,0x1
    80001f18:	8e8080e7          	jalr	-1816(ra) # 800027fc <panic>

0000000080001f1c <trapinit>:
    80001f1c:	ff010113          	addi	sp,sp,-16
    80001f20:	00813423          	sd	s0,8(sp)
    80001f24:	01010413          	addi	s0,sp,16
    80001f28:	00813403          	ld	s0,8(sp)
    80001f2c:	00003597          	auipc	a1,0x3
    80001f30:	1fc58593          	addi	a1,a1,508 # 80005128 <_ZZ12printIntegermE6digits+0xc8>
    80001f34:	00005517          	auipc	a0,0x5
    80001f38:	8fc50513          	addi	a0,a0,-1796 # 80006830 <tickslock>
    80001f3c:	01010113          	addi	sp,sp,16
    80001f40:	00001317          	auipc	t1,0x1
    80001f44:	5c830067          	jr	1480(t1) # 80003508 <initlock>

0000000080001f48 <trapinithart>:
    80001f48:	ff010113          	addi	sp,sp,-16
    80001f4c:	00813423          	sd	s0,8(sp)
    80001f50:	01010413          	addi	s0,sp,16
    80001f54:	00000797          	auipc	a5,0x0
    80001f58:	2fc78793          	addi	a5,a5,764 # 80002250 <kernelvec>
    80001f5c:	10579073          	csrw	stvec,a5
    80001f60:	00813403          	ld	s0,8(sp)
    80001f64:	01010113          	addi	sp,sp,16
    80001f68:	00008067          	ret

0000000080001f6c <usertrap>:
    80001f6c:	ff010113          	addi	sp,sp,-16
    80001f70:	00813423          	sd	s0,8(sp)
    80001f74:	01010413          	addi	s0,sp,16
    80001f78:	00813403          	ld	s0,8(sp)
    80001f7c:	01010113          	addi	sp,sp,16
    80001f80:	00008067          	ret

0000000080001f84 <usertrapret>:
    80001f84:	ff010113          	addi	sp,sp,-16
    80001f88:	00813423          	sd	s0,8(sp)
    80001f8c:	01010413          	addi	s0,sp,16
    80001f90:	00813403          	ld	s0,8(sp)
    80001f94:	01010113          	addi	sp,sp,16
    80001f98:	00008067          	ret

0000000080001f9c <kerneltrap>:
    80001f9c:	fe010113          	addi	sp,sp,-32
    80001fa0:	00813823          	sd	s0,16(sp)
    80001fa4:	00113c23          	sd	ra,24(sp)
    80001fa8:	00913423          	sd	s1,8(sp)
    80001fac:	02010413          	addi	s0,sp,32
    80001fb0:	142025f3          	csrr	a1,scause
    80001fb4:	100027f3          	csrr	a5,sstatus
    80001fb8:	0027f793          	andi	a5,a5,2
    80001fbc:	10079c63          	bnez	a5,800020d4 <kerneltrap+0x138>
    80001fc0:	142027f3          	csrr	a5,scause
    80001fc4:	0207ce63          	bltz	a5,80002000 <kerneltrap+0x64>
    80001fc8:	00003517          	auipc	a0,0x3
    80001fcc:	1a850513          	addi	a0,a0,424 # 80005170 <_ZZ12printIntegermE6digits+0x110>
    80001fd0:	00001097          	auipc	ra,0x1
    80001fd4:	888080e7          	jalr	-1912(ra) # 80002858 <__printf>
    80001fd8:	141025f3          	csrr	a1,sepc
    80001fdc:	14302673          	csrr	a2,stval
    80001fe0:	00003517          	auipc	a0,0x3
    80001fe4:	1a050513          	addi	a0,a0,416 # 80005180 <_ZZ12printIntegermE6digits+0x120>
    80001fe8:	00001097          	auipc	ra,0x1
    80001fec:	870080e7          	jalr	-1936(ra) # 80002858 <__printf>
    80001ff0:	00003517          	auipc	a0,0x3
    80001ff4:	1a850513          	addi	a0,a0,424 # 80005198 <_ZZ12printIntegermE6digits+0x138>
    80001ff8:	00001097          	auipc	ra,0x1
    80001ffc:	804080e7          	jalr	-2044(ra) # 800027fc <panic>
    80002000:	0ff7f713          	andi	a4,a5,255
    80002004:	00900693          	li	a3,9
    80002008:	04d70063          	beq	a4,a3,80002048 <kerneltrap+0xac>
    8000200c:	fff00713          	li	a4,-1
    80002010:	03f71713          	slli	a4,a4,0x3f
    80002014:	00170713          	addi	a4,a4,1
    80002018:	fae798e3          	bne	a5,a4,80001fc8 <kerneltrap+0x2c>
    8000201c:	00000097          	auipc	ra,0x0
    80002020:	e00080e7          	jalr	-512(ra) # 80001e1c <cpuid>
    80002024:	06050663          	beqz	a0,80002090 <kerneltrap+0xf4>
    80002028:	144027f3          	csrr	a5,sip
    8000202c:	ffd7f793          	andi	a5,a5,-3
    80002030:	14479073          	csrw	sip,a5
    80002034:	01813083          	ld	ra,24(sp)
    80002038:	01013403          	ld	s0,16(sp)
    8000203c:	00813483          	ld	s1,8(sp)
    80002040:	02010113          	addi	sp,sp,32
    80002044:	00008067          	ret
    80002048:	00000097          	auipc	ra,0x0
    8000204c:	3cc080e7          	jalr	972(ra) # 80002414 <plic_claim>
    80002050:	00a00793          	li	a5,10
    80002054:	00050493          	mv	s1,a0
    80002058:	06f50863          	beq	a0,a5,800020c8 <kerneltrap+0x12c>
    8000205c:	fc050ce3          	beqz	a0,80002034 <kerneltrap+0x98>
    80002060:	00050593          	mv	a1,a0
    80002064:	00003517          	auipc	a0,0x3
    80002068:	0ec50513          	addi	a0,a0,236 # 80005150 <_ZZ12printIntegermE6digits+0xf0>
    8000206c:	00000097          	auipc	ra,0x0
    80002070:	7ec080e7          	jalr	2028(ra) # 80002858 <__printf>
    80002074:	01013403          	ld	s0,16(sp)
    80002078:	01813083          	ld	ra,24(sp)
    8000207c:	00048513          	mv	a0,s1
    80002080:	00813483          	ld	s1,8(sp)
    80002084:	02010113          	addi	sp,sp,32
    80002088:	00000317          	auipc	t1,0x0
    8000208c:	3c430067          	jr	964(t1) # 8000244c <plic_complete>
    80002090:	00004517          	auipc	a0,0x4
    80002094:	7a050513          	addi	a0,a0,1952 # 80006830 <tickslock>
    80002098:	00001097          	auipc	ra,0x1
    8000209c:	494080e7          	jalr	1172(ra) # 8000352c <acquire>
    800020a0:	00003717          	auipc	a4,0x3
    800020a4:	69c70713          	addi	a4,a4,1692 # 8000573c <ticks>
    800020a8:	00072783          	lw	a5,0(a4)
    800020ac:	00004517          	auipc	a0,0x4
    800020b0:	78450513          	addi	a0,a0,1924 # 80006830 <tickslock>
    800020b4:	0017879b          	addiw	a5,a5,1
    800020b8:	00f72023          	sw	a5,0(a4)
    800020bc:	00001097          	auipc	ra,0x1
    800020c0:	53c080e7          	jalr	1340(ra) # 800035f8 <release>
    800020c4:	f65ff06f          	j	80002028 <kerneltrap+0x8c>
    800020c8:	00001097          	auipc	ra,0x1
    800020cc:	098080e7          	jalr	152(ra) # 80003160 <uartintr>
    800020d0:	fa5ff06f          	j	80002074 <kerneltrap+0xd8>
    800020d4:	00003517          	auipc	a0,0x3
    800020d8:	05c50513          	addi	a0,a0,92 # 80005130 <_ZZ12printIntegermE6digits+0xd0>
    800020dc:	00000097          	auipc	ra,0x0
    800020e0:	720080e7          	jalr	1824(ra) # 800027fc <panic>

00000000800020e4 <clockintr>:
    800020e4:	fe010113          	addi	sp,sp,-32
    800020e8:	00813823          	sd	s0,16(sp)
    800020ec:	00913423          	sd	s1,8(sp)
    800020f0:	00113c23          	sd	ra,24(sp)
    800020f4:	02010413          	addi	s0,sp,32
    800020f8:	00004497          	auipc	s1,0x4
    800020fc:	73848493          	addi	s1,s1,1848 # 80006830 <tickslock>
    80002100:	00048513          	mv	a0,s1
    80002104:	00001097          	auipc	ra,0x1
    80002108:	428080e7          	jalr	1064(ra) # 8000352c <acquire>
    8000210c:	00003717          	auipc	a4,0x3
    80002110:	63070713          	addi	a4,a4,1584 # 8000573c <ticks>
    80002114:	00072783          	lw	a5,0(a4)
    80002118:	01013403          	ld	s0,16(sp)
    8000211c:	01813083          	ld	ra,24(sp)
    80002120:	00048513          	mv	a0,s1
    80002124:	0017879b          	addiw	a5,a5,1
    80002128:	00813483          	ld	s1,8(sp)
    8000212c:	00f72023          	sw	a5,0(a4)
    80002130:	02010113          	addi	sp,sp,32
    80002134:	00001317          	auipc	t1,0x1
    80002138:	4c430067          	jr	1220(t1) # 800035f8 <release>

000000008000213c <devintr>:
    8000213c:	142027f3          	csrr	a5,scause
    80002140:	00000513          	li	a0,0
    80002144:	0007c463          	bltz	a5,8000214c <devintr+0x10>
    80002148:	00008067          	ret
    8000214c:	fe010113          	addi	sp,sp,-32
    80002150:	00813823          	sd	s0,16(sp)
    80002154:	00113c23          	sd	ra,24(sp)
    80002158:	00913423          	sd	s1,8(sp)
    8000215c:	02010413          	addi	s0,sp,32
    80002160:	0ff7f713          	andi	a4,a5,255
    80002164:	00900693          	li	a3,9
    80002168:	04d70c63          	beq	a4,a3,800021c0 <devintr+0x84>
    8000216c:	fff00713          	li	a4,-1
    80002170:	03f71713          	slli	a4,a4,0x3f
    80002174:	00170713          	addi	a4,a4,1
    80002178:	00e78c63          	beq	a5,a4,80002190 <devintr+0x54>
    8000217c:	01813083          	ld	ra,24(sp)
    80002180:	01013403          	ld	s0,16(sp)
    80002184:	00813483          	ld	s1,8(sp)
    80002188:	02010113          	addi	sp,sp,32
    8000218c:	00008067          	ret
    80002190:	00000097          	auipc	ra,0x0
    80002194:	c8c080e7          	jalr	-884(ra) # 80001e1c <cpuid>
    80002198:	06050663          	beqz	a0,80002204 <devintr+0xc8>
    8000219c:	144027f3          	csrr	a5,sip
    800021a0:	ffd7f793          	andi	a5,a5,-3
    800021a4:	14479073          	csrw	sip,a5
    800021a8:	01813083          	ld	ra,24(sp)
    800021ac:	01013403          	ld	s0,16(sp)
    800021b0:	00813483          	ld	s1,8(sp)
    800021b4:	00200513          	li	a0,2
    800021b8:	02010113          	addi	sp,sp,32
    800021bc:	00008067          	ret
    800021c0:	00000097          	auipc	ra,0x0
    800021c4:	254080e7          	jalr	596(ra) # 80002414 <plic_claim>
    800021c8:	00a00793          	li	a5,10
    800021cc:	00050493          	mv	s1,a0
    800021d0:	06f50663          	beq	a0,a5,8000223c <devintr+0x100>
    800021d4:	00100513          	li	a0,1
    800021d8:	fa0482e3          	beqz	s1,8000217c <devintr+0x40>
    800021dc:	00048593          	mv	a1,s1
    800021e0:	00003517          	auipc	a0,0x3
    800021e4:	f7050513          	addi	a0,a0,-144 # 80005150 <_ZZ12printIntegermE6digits+0xf0>
    800021e8:	00000097          	auipc	ra,0x0
    800021ec:	670080e7          	jalr	1648(ra) # 80002858 <__printf>
    800021f0:	00048513          	mv	a0,s1
    800021f4:	00000097          	auipc	ra,0x0
    800021f8:	258080e7          	jalr	600(ra) # 8000244c <plic_complete>
    800021fc:	00100513          	li	a0,1
    80002200:	f7dff06f          	j	8000217c <devintr+0x40>
    80002204:	00004517          	auipc	a0,0x4
    80002208:	62c50513          	addi	a0,a0,1580 # 80006830 <tickslock>
    8000220c:	00001097          	auipc	ra,0x1
    80002210:	320080e7          	jalr	800(ra) # 8000352c <acquire>
    80002214:	00003717          	auipc	a4,0x3
    80002218:	52870713          	addi	a4,a4,1320 # 8000573c <ticks>
    8000221c:	00072783          	lw	a5,0(a4)
    80002220:	00004517          	auipc	a0,0x4
    80002224:	61050513          	addi	a0,a0,1552 # 80006830 <tickslock>
    80002228:	0017879b          	addiw	a5,a5,1
    8000222c:	00f72023          	sw	a5,0(a4)
    80002230:	00001097          	auipc	ra,0x1
    80002234:	3c8080e7          	jalr	968(ra) # 800035f8 <release>
    80002238:	f65ff06f          	j	8000219c <devintr+0x60>
    8000223c:	00001097          	auipc	ra,0x1
    80002240:	f24080e7          	jalr	-220(ra) # 80003160 <uartintr>
    80002244:	fadff06f          	j	800021f0 <devintr+0xb4>
	...

0000000080002250 <kernelvec>:
    80002250:	f0010113          	addi	sp,sp,-256
    80002254:	00113023          	sd	ra,0(sp)
    80002258:	00213423          	sd	sp,8(sp)
    8000225c:	00313823          	sd	gp,16(sp)
    80002260:	00413c23          	sd	tp,24(sp)
    80002264:	02513023          	sd	t0,32(sp)
    80002268:	02613423          	sd	t1,40(sp)
    8000226c:	02713823          	sd	t2,48(sp)
    80002270:	02813c23          	sd	s0,56(sp)
    80002274:	04913023          	sd	s1,64(sp)
    80002278:	04a13423          	sd	a0,72(sp)
    8000227c:	04b13823          	sd	a1,80(sp)
    80002280:	04c13c23          	sd	a2,88(sp)
    80002284:	06d13023          	sd	a3,96(sp)
    80002288:	06e13423          	sd	a4,104(sp)
    8000228c:	06f13823          	sd	a5,112(sp)
    80002290:	07013c23          	sd	a6,120(sp)
    80002294:	09113023          	sd	a7,128(sp)
    80002298:	09213423          	sd	s2,136(sp)
    8000229c:	09313823          	sd	s3,144(sp)
    800022a0:	09413c23          	sd	s4,152(sp)
    800022a4:	0b513023          	sd	s5,160(sp)
    800022a8:	0b613423          	sd	s6,168(sp)
    800022ac:	0b713823          	sd	s7,176(sp)
    800022b0:	0b813c23          	sd	s8,184(sp)
    800022b4:	0d913023          	sd	s9,192(sp)
    800022b8:	0da13423          	sd	s10,200(sp)
    800022bc:	0db13823          	sd	s11,208(sp)
    800022c0:	0dc13c23          	sd	t3,216(sp)
    800022c4:	0fd13023          	sd	t4,224(sp)
    800022c8:	0fe13423          	sd	t5,232(sp)
    800022cc:	0ff13823          	sd	t6,240(sp)
    800022d0:	ccdff0ef          	jal	ra,80001f9c <kerneltrap>
    800022d4:	00013083          	ld	ra,0(sp)
    800022d8:	00813103          	ld	sp,8(sp)
    800022dc:	01013183          	ld	gp,16(sp)
    800022e0:	02013283          	ld	t0,32(sp)
    800022e4:	02813303          	ld	t1,40(sp)
    800022e8:	03013383          	ld	t2,48(sp)
    800022ec:	03813403          	ld	s0,56(sp)
    800022f0:	04013483          	ld	s1,64(sp)
    800022f4:	04813503          	ld	a0,72(sp)
    800022f8:	05013583          	ld	a1,80(sp)
    800022fc:	05813603          	ld	a2,88(sp)
    80002300:	06013683          	ld	a3,96(sp)
    80002304:	06813703          	ld	a4,104(sp)
    80002308:	07013783          	ld	a5,112(sp)
    8000230c:	07813803          	ld	a6,120(sp)
    80002310:	08013883          	ld	a7,128(sp)
    80002314:	08813903          	ld	s2,136(sp)
    80002318:	09013983          	ld	s3,144(sp)
    8000231c:	09813a03          	ld	s4,152(sp)
    80002320:	0a013a83          	ld	s5,160(sp)
    80002324:	0a813b03          	ld	s6,168(sp)
    80002328:	0b013b83          	ld	s7,176(sp)
    8000232c:	0b813c03          	ld	s8,184(sp)
    80002330:	0c013c83          	ld	s9,192(sp)
    80002334:	0c813d03          	ld	s10,200(sp)
    80002338:	0d013d83          	ld	s11,208(sp)
    8000233c:	0d813e03          	ld	t3,216(sp)
    80002340:	0e013e83          	ld	t4,224(sp)
    80002344:	0e813f03          	ld	t5,232(sp)
    80002348:	0f013f83          	ld	t6,240(sp)
    8000234c:	10010113          	addi	sp,sp,256
    80002350:	10200073          	sret
    80002354:	00000013          	nop
    80002358:	00000013          	nop
    8000235c:	00000013          	nop

0000000080002360 <timervec>:
    80002360:	34051573          	csrrw	a0,mscratch,a0
    80002364:	00b53023          	sd	a1,0(a0)
    80002368:	00c53423          	sd	a2,8(a0)
    8000236c:	00d53823          	sd	a3,16(a0)
    80002370:	01853583          	ld	a1,24(a0)
    80002374:	02053603          	ld	a2,32(a0)
    80002378:	0005b683          	ld	a3,0(a1)
    8000237c:	00c686b3          	add	a3,a3,a2
    80002380:	00d5b023          	sd	a3,0(a1)
    80002384:	00200593          	li	a1,2
    80002388:	14459073          	csrw	sip,a1
    8000238c:	01053683          	ld	a3,16(a0)
    80002390:	00853603          	ld	a2,8(a0)
    80002394:	00053583          	ld	a1,0(a0)
    80002398:	34051573          	csrrw	a0,mscratch,a0
    8000239c:	30200073          	mret

00000000800023a0 <plicinit>:
    800023a0:	ff010113          	addi	sp,sp,-16
    800023a4:	00813423          	sd	s0,8(sp)
    800023a8:	01010413          	addi	s0,sp,16
    800023ac:	00813403          	ld	s0,8(sp)
    800023b0:	0c0007b7          	lui	a5,0xc000
    800023b4:	00100713          	li	a4,1
    800023b8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800023bc:	00e7a223          	sw	a4,4(a5)
    800023c0:	01010113          	addi	sp,sp,16
    800023c4:	00008067          	ret

00000000800023c8 <plicinithart>:
    800023c8:	ff010113          	addi	sp,sp,-16
    800023cc:	00813023          	sd	s0,0(sp)
    800023d0:	00113423          	sd	ra,8(sp)
    800023d4:	01010413          	addi	s0,sp,16
    800023d8:	00000097          	auipc	ra,0x0
    800023dc:	a44080e7          	jalr	-1468(ra) # 80001e1c <cpuid>
    800023e0:	0085171b          	slliw	a4,a0,0x8
    800023e4:	0c0027b7          	lui	a5,0xc002
    800023e8:	00e787b3          	add	a5,a5,a4
    800023ec:	40200713          	li	a4,1026
    800023f0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800023f4:	00813083          	ld	ra,8(sp)
    800023f8:	00013403          	ld	s0,0(sp)
    800023fc:	00d5151b          	slliw	a0,a0,0xd
    80002400:	0c2017b7          	lui	a5,0xc201
    80002404:	00a78533          	add	a0,a5,a0
    80002408:	00052023          	sw	zero,0(a0)
    8000240c:	01010113          	addi	sp,sp,16
    80002410:	00008067          	ret

0000000080002414 <plic_claim>:
    80002414:	ff010113          	addi	sp,sp,-16
    80002418:	00813023          	sd	s0,0(sp)
    8000241c:	00113423          	sd	ra,8(sp)
    80002420:	01010413          	addi	s0,sp,16
    80002424:	00000097          	auipc	ra,0x0
    80002428:	9f8080e7          	jalr	-1544(ra) # 80001e1c <cpuid>
    8000242c:	00813083          	ld	ra,8(sp)
    80002430:	00013403          	ld	s0,0(sp)
    80002434:	00d5151b          	slliw	a0,a0,0xd
    80002438:	0c2017b7          	lui	a5,0xc201
    8000243c:	00a78533          	add	a0,a5,a0
    80002440:	00452503          	lw	a0,4(a0)
    80002444:	01010113          	addi	sp,sp,16
    80002448:	00008067          	ret

000000008000244c <plic_complete>:
    8000244c:	fe010113          	addi	sp,sp,-32
    80002450:	00813823          	sd	s0,16(sp)
    80002454:	00913423          	sd	s1,8(sp)
    80002458:	00113c23          	sd	ra,24(sp)
    8000245c:	02010413          	addi	s0,sp,32
    80002460:	00050493          	mv	s1,a0
    80002464:	00000097          	auipc	ra,0x0
    80002468:	9b8080e7          	jalr	-1608(ra) # 80001e1c <cpuid>
    8000246c:	01813083          	ld	ra,24(sp)
    80002470:	01013403          	ld	s0,16(sp)
    80002474:	00d5179b          	slliw	a5,a0,0xd
    80002478:	0c201737          	lui	a4,0xc201
    8000247c:	00f707b3          	add	a5,a4,a5
    80002480:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002484:	00813483          	ld	s1,8(sp)
    80002488:	02010113          	addi	sp,sp,32
    8000248c:	00008067          	ret

0000000080002490 <consolewrite>:
    80002490:	fb010113          	addi	sp,sp,-80
    80002494:	04813023          	sd	s0,64(sp)
    80002498:	04113423          	sd	ra,72(sp)
    8000249c:	02913c23          	sd	s1,56(sp)
    800024a0:	03213823          	sd	s2,48(sp)
    800024a4:	03313423          	sd	s3,40(sp)
    800024a8:	03413023          	sd	s4,32(sp)
    800024ac:	01513c23          	sd	s5,24(sp)
    800024b0:	05010413          	addi	s0,sp,80
    800024b4:	06c05c63          	blez	a2,8000252c <consolewrite+0x9c>
    800024b8:	00060993          	mv	s3,a2
    800024bc:	00050a13          	mv	s4,a0
    800024c0:	00058493          	mv	s1,a1
    800024c4:	00000913          	li	s2,0
    800024c8:	fff00a93          	li	s5,-1
    800024cc:	01c0006f          	j	800024e8 <consolewrite+0x58>
    800024d0:	fbf44503          	lbu	a0,-65(s0)
    800024d4:	0019091b          	addiw	s2,s2,1
    800024d8:	00148493          	addi	s1,s1,1
    800024dc:	00001097          	auipc	ra,0x1
    800024e0:	a9c080e7          	jalr	-1380(ra) # 80002f78 <uartputc>
    800024e4:	03298063          	beq	s3,s2,80002504 <consolewrite+0x74>
    800024e8:	00048613          	mv	a2,s1
    800024ec:	00100693          	li	a3,1
    800024f0:	000a0593          	mv	a1,s4
    800024f4:	fbf40513          	addi	a0,s0,-65
    800024f8:	00000097          	auipc	ra,0x0
    800024fc:	9dc080e7          	jalr	-1572(ra) # 80001ed4 <either_copyin>
    80002500:	fd5518e3          	bne	a0,s5,800024d0 <consolewrite+0x40>
    80002504:	04813083          	ld	ra,72(sp)
    80002508:	04013403          	ld	s0,64(sp)
    8000250c:	03813483          	ld	s1,56(sp)
    80002510:	02813983          	ld	s3,40(sp)
    80002514:	02013a03          	ld	s4,32(sp)
    80002518:	01813a83          	ld	s5,24(sp)
    8000251c:	00090513          	mv	a0,s2
    80002520:	03013903          	ld	s2,48(sp)
    80002524:	05010113          	addi	sp,sp,80
    80002528:	00008067          	ret
    8000252c:	00000913          	li	s2,0
    80002530:	fd5ff06f          	j	80002504 <consolewrite+0x74>

0000000080002534 <consoleread>:
    80002534:	f9010113          	addi	sp,sp,-112
    80002538:	06813023          	sd	s0,96(sp)
    8000253c:	04913c23          	sd	s1,88(sp)
    80002540:	05213823          	sd	s2,80(sp)
    80002544:	05313423          	sd	s3,72(sp)
    80002548:	05413023          	sd	s4,64(sp)
    8000254c:	03513c23          	sd	s5,56(sp)
    80002550:	03613823          	sd	s6,48(sp)
    80002554:	03713423          	sd	s7,40(sp)
    80002558:	03813023          	sd	s8,32(sp)
    8000255c:	06113423          	sd	ra,104(sp)
    80002560:	01913c23          	sd	s9,24(sp)
    80002564:	07010413          	addi	s0,sp,112
    80002568:	00060b93          	mv	s7,a2
    8000256c:	00050913          	mv	s2,a0
    80002570:	00058c13          	mv	s8,a1
    80002574:	00060b1b          	sext.w	s6,a2
    80002578:	00004497          	auipc	s1,0x4
    8000257c:	2e048493          	addi	s1,s1,736 # 80006858 <cons>
    80002580:	00400993          	li	s3,4
    80002584:	fff00a13          	li	s4,-1
    80002588:	00a00a93          	li	s5,10
    8000258c:	05705e63          	blez	s7,800025e8 <consoleread+0xb4>
    80002590:	09c4a703          	lw	a4,156(s1)
    80002594:	0984a783          	lw	a5,152(s1)
    80002598:	0007071b          	sext.w	a4,a4
    8000259c:	08e78463          	beq	a5,a4,80002624 <consoleread+0xf0>
    800025a0:	07f7f713          	andi	a4,a5,127
    800025a4:	00e48733          	add	a4,s1,a4
    800025a8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800025ac:	0017869b          	addiw	a3,a5,1
    800025b0:	08d4ac23          	sw	a3,152(s1)
    800025b4:	00070c9b          	sext.w	s9,a4
    800025b8:	0b370663          	beq	a4,s3,80002664 <consoleread+0x130>
    800025bc:	00100693          	li	a3,1
    800025c0:	f9f40613          	addi	a2,s0,-97
    800025c4:	000c0593          	mv	a1,s8
    800025c8:	00090513          	mv	a0,s2
    800025cc:	f8e40fa3          	sb	a4,-97(s0)
    800025d0:	00000097          	auipc	ra,0x0
    800025d4:	8b8080e7          	jalr	-1864(ra) # 80001e88 <either_copyout>
    800025d8:	01450863          	beq	a0,s4,800025e8 <consoleread+0xb4>
    800025dc:	001c0c13          	addi	s8,s8,1
    800025e0:	fffb8b9b          	addiw	s7,s7,-1
    800025e4:	fb5c94e3          	bne	s9,s5,8000258c <consoleread+0x58>
    800025e8:	000b851b          	sext.w	a0,s7
    800025ec:	06813083          	ld	ra,104(sp)
    800025f0:	06013403          	ld	s0,96(sp)
    800025f4:	05813483          	ld	s1,88(sp)
    800025f8:	05013903          	ld	s2,80(sp)
    800025fc:	04813983          	ld	s3,72(sp)
    80002600:	04013a03          	ld	s4,64(sp)
    80002604:	03813a83          	ld	s5,56(sp)
    80002608:	02813b83          	ld	s7,40(sp)
    8000260c:	02013c03          	ld	s8,32(sp)
    80002610:	01813c83          	ld	s9,24(sp)
    80002614:	40ab053b          	subw	a0,s6,a0
    80002618:	03013b03          	ld	s6,48(sp)
    8000261c:	07010113          	addi	sp,sp,112
    80002620:	00008067          	ret
    80002624:	00001097          	auipc	ra,0x1
    80002628:	1d8080e7          	jalr	472(ra) # 800037fc <push_on>
    8000262c:	0984a703          	lw	a4,152(s1)
    80002630:	09c4a783          	lw	a5,156(s1)
    80002634:	0007879b          	sext.w	a5,a5
    80002638:	fef70ce3          	beq	a4,a5,80002630 <consoleread+0xfc>
    8000263c:	00001097          	auipc	ra,0x1
    80002640:	234080e7          	jalr	564(ra) # 80003870 <pop_on>
    80002644:	0984a783          	lw	a5,152(s1)
    80002648:	07f7f713          	andi	a4,a5,127
    8000264c:	00e48733          	add	a4,s1,a4
    80002650:	01874703          	lbu	a4,24(a4)
    80002654:	0017869b          	addiw	a3,a5,1
    80002658:	08d4ac23          	sw	a3,152(s1)
    8000265c:	00070c9b          	sext.w	s9,a4
    80002660:	f5371ee3          	bne	a4,s3,800025bc <consoleread+0x88>
    80002664:	000b851b          	sext.w	a0,s7
    80002668:	f96bf2e3          	bgeu	s7,s6,800025ec <consoleread+0xb8>
    8000266c:	08f4ac23          	sw	a5,152(s1)
    80002670:	f7dff06f          	j	800025ec <consoleread+0xb8>

0000000080002674 <consputc>:
    80002674:	10000793          	li	a5,256
    80002678:	00f50663          	beq	a0,a5,80002684 <consputc+0x10>
    8000267c:	00001317          	auipc	t1,0x1
    80002680:	9f430067          	jr	-1548(t1) # 80003070 <uartputc_sync>
    80002684:	ff010113          	addi	sp,sp,-16
    80002688:	00113423          	sd	ra,8(sp)
    8000268c:	00813023          	sd	s0,0(sp)
    80002690:	01010413          	addi	s0,sp,16
    80002694:	00800513          	li	a0,8
    80002698:	00001097          	auipc	ra,0x1
    8000269c:	9d8080e7          	jalr	-1576(ra) # 80003070 <uartputc_sync>
    800026a0:	02000513          	li	a0,32
    800026a4:	00001097          	auipc	ra,0x1
    800026a8:	9cc080e7          	jalr	-1588(ra) # 80003070 <uartputc_sync>
    800026ac:	00013403          	ld	s0,0(sp)
    800026b0:	00813083          	ld	ra,8(sp)
    800026b4:	00800513          	li	a0,8
    800026b8:	01010113          	addi	sp,sp,16
    800026bc:	00001317          	auipc	t1,0x1
    800026c0:	9b430067          	jr	-1612(t1) # 80003070 <uartputc_sync>

00000000800026c4 <consoleintr>:
    800026c4:	fe010113          	addi	sp,sp,-32
    800026c8:	00813823          	sd	s0,16(sp)
    800026cc:	00913423          	sd	s1,8(sp)
    800026d0:	01213023          	sd	s2,0(sp)
    800026d4:	00113c23          	sd	ra,24(sp)
    800026d8:	02010413          	addi	s0,sp,32
    800026dc:	00004917          	auipc	s2,0x4
    800026e0:	17c90913          	addi	s2,s2,380 # 80006858 <cons>
    800026e4:	00050493          	mv	s1,a0
    800026e8:	00090513          	mv	a0,s2
    800026ec:	00001097          	auipc	ra,0x1
    800026f0:	e40080e7          	jalr	-448(ra) # 8000352c <acquire>
    800026f4:	02048c63          	beqz	s1,8000272c <consoleintr+0x68>
    800026f8:	0a092783          	lw	a5,160(s2)
    800026fc:	09892703          	lw	a4,152(s2)
    80002700:	07f00693          	li	a3,127
    80002704:	40e7873b          	subw	a4,a5,a4
    80002708:	02e6e263          	bltu	a3,a4,8000272c <consoleintr+0x68>
    8000270c:	00d00713          	li	a4,13
    80002710:	04e48063          	beq	s1,a4,80002750 <consoleintr+0x8c>
    80002714:	07f7f713          	andi	a4,a5,127
    80002718:	00e90733          	add	a4,s2,a4
    8000271c:	0017879b          	addiw	a5,a5,1
    80002720:	0af92023          	sw	a5,160(s2)
    80002724:	00970c23          	sb	s1,24(a4)
    80002728:	08f92e23          	sw	a5,156(s2)
    8000272c:	01013403          	ld	s0,16(sp)
    80002730:	01813083          	ld	ra,24(sp)
    80002734:	00813483          	ld	s1,8(sp)
    80002738:	00013903          	ld	s2,0(sp)
    8000273c:	00004517          	auipc	a0,0x4
    80002740:	11c50513          	addi	a0,a0,284 # 80006858 <cons>
    80002744:	02010113          	addi	sp,sp,32
    80002748:	00001317          	auipc	t1,0x1
    8000274c:	eb030067          	jr	-336(t1) # 800035f8 <release>
    80002750:	00a00493          	li	s1,10
    80002754:	fc1ff06f          	j	80002714 <consoleintr+0x50>

0000000080002758 <consoleinit>:
    80002758:	fe010113          	addi	sp,sp,-32
    8000275c:	00113c23          	sd	ra,24(sp)
    80002760:	00813823          	sd	s0,16(sp)
    80002764:	00913423          	sd	s1,8(sp)
    80002768:	02010413          	addi	s0,sp,32
    8000276c:	00004497          	auipc	s1,0x4
    80002770:	0ec48493          	addi	s1,s1,236 # 80006858 <cons>
    80002774:	00048513          	mv	a0,s1
    80002778:	00003597          	auipc	a1,0x3
    8000277c:	a3058593          	addi	a1,a1,-1488 # 800051a8 <_ZZ12printIntegermE6digits+0x148>
    80002780:	00001097          	auipc	ra,0x1
    80002784:	d88080e7          	jalr	-632(ra) # 80003508 <initlock>
    80002788:	00000097          	auipc	ra,0x0
    8000278c:	7ac080e7          	jalr	1964(ra) # 80002f34 <uartinit>
    80002790:	01813083          	ld	ra,24(sp)
    80002794:	01013403          	ld	s0,16(sp)
    80002798:	00000797          	auipc	a5,0x0
    8000279c:	d9c78793          	addi	a5,a5,-612 # 80002534 <consoleread>
    800027a0:	0af4bc23          	sd	a5,184(s1)
    800027a4:	00000797          	auipc	a5,0x0
    800027a8:	cec78793          	addi	a5,a5,-788 # 80002490 <consolewrite>
    800027ac:	0cf4b023          	sd	a5,192(s1)
    800027b0:	00813483          	ld	s1,8(sp)
    800027b4:	02010113          	addi	sp,sp,32
    800027b8:	00008067          	ret

00000000800027bc <console_read>:
    800027bc:	ff010113          	addi	sp,sp,-16
    800027c0:	00813423          	sd	s0,8(sp)
    800027c4:	01010413          	addi	s0,sp,16
    800027c8:	00813403          	ld	s0,8(sp)
    800027cc:	00004317          	auipc	t1,0x4
    800027d0:	14433303          	ld	t1,324(t1) # 80006910 <devsw+0x10>
    800027d4:	01010113          	addi	sp,sp,16
    800027d8:	00030067          	jr	t1

00000000800027dc <console_write>:
    800027dc:	ff010113          	addi	sp,sp,-16
    800027e0:	00813423          	sd	s0,8(sp)
    800027e4:	01010413          	addi	s0,sp,16
    800027e8:	00813403          	ld	s0,8(sp)
    800027ec:	00004317          	auipc	t1,0x4
    800027f0:	12c33303          	ld	t1,300(t1) # 80006918 <devsw+0x18>
    800027f4:	01010113          	addi	sp,sp,16
    800027f8:	00030067          	jr	t1

00000000800027fc <panic>:
    800027fc:	fe010113          	addi	sp,sp,-32
    80002800:	00113c23          	sd	ra,24(sp)
    80002804:	00813823          	sd	s0,16(sp)
    80002808:	00913423          	sd	s1,8(sp)
    8000280c:	02010413          	addi	s0,sp,32
    80002810:	00050493          	mv	s1,a0
    80002814:	00003517          	auipc	a0,0x3
    80002818:	99c50513          	addi	a0,a0,-1636 # 800051b0 <_ZZ12printIntegermE6digits+0x150>
    8000281c:	00004797          	auipc	a5,0x4
    80002820:	1807ae23          	sw	zero,412(a5) # 800069b8 <pr+0x18>
    80002824:	00000097          	auipc	ra,0x0
    80002828:	034080e7          	jalr	52(ra) # 80002858 <__printf>
    8000282c:	00048513          	mv	a0,s1
    80002830:	00000097          	auipc	ra,0x0
    80002834:	028080e7          	jalr	40(ra) # 80002858 <__printf>
    80002838:	00003517          	auipc	a0,0x3
    8000283c:	82050513          	addi	a0,a0,-2016 # 80005058 <CONSOLE_STATUS+0x48>
    80002840:	00000097          	auipc	ra,0x0
    80002844:	018080e7          	jalr	24(ra) # 80002858 <__printf>
    80002848:	00100793          	li	a5,1
    8000284c:	00003717          	auipc	a4,0x3
    80002850:	eef72a23          	sw	a5,-268(a4) # 80005740 <panicked>
    80002854:	0000006f          	j	80002854 <panic+0x58>

0000000080002858 <__printf>:
    80002858:	f3010113          	addi	sp,sp,-208
    8000285c:	08813023          	sd	s0,128(sp)
    80002860:	07313423          	sd	s3,104(sp)
    80002864:	09010413          	addi	s0,sp,144
    80002868:	05813023          	sd	s8,64(sp)
    8000286c:	08113423          	sd	ra,136(sp)
    80002870:	06913c23          	sd	s1,120(sp)
    80002874:	07213823          	sd	s2,112(sp)
    80002878:	07413023          	sd	s4,96(sp)
    8000287c:	05513c23          	sd	s5,88(sp)
    80002880:	05613823          	sd	s6,80(sp)
    80002884:	05713423          	sd	s7,72(sp)
    80002888:	03913c23          	sd	s9,56(sp)
    8000288c:	03a13823          	sd	s10,48(sp)
    80002890:	03b13423          	sd	s11,40(sp)
    80002894:	00004317          	auipc	t1,0x4
    80002898:	10c30313          	addi	t1,t1,268 # 800069a0 <pr>
    8000289c:	01832c03          	lw	s8,24(t1)
    800028a0:	00b43423          	sd	a1,8(s0)
    800028a4:	00c43823          	sd	a2,16(s0)
    800028a8:	00d43c23          	sd	a3,24(s0)
    800028ac:	02e43023          	sd	a4,32(s0)
    800028b0:	02f43423          	sd	a5,40(s0)
    800028b4:	03043823          	sd	a6,48(s0)
    800028b8:	03143c23          	sd	a7,56(s0)
    800028bc:	00050993          	mv	s3,a0
    800028c0:	4a0c1663          	bnez	s8,80002d6c <__printf+0x514>
    800028c4:	60098c63          	beqz	s3,80002edc <__printf+0x684>
    800028c8:	0009c503          	lbu	a0,0(s3)
    800028cc:	00840793          	addi	a5,s0,8
    800028d0:	f6f43c23          	sd	a5,-136(s0)
    800028d4:	00000493          	li	s1,0
    800028d8:	22050063          	beqz	a0,80002af8 <__printf+0x2a0>
    800028dc:	00002a37          	lui	s4,0x2
    800028e0:	00018ab7          	lui	s5,0x18
    800028e4:	000f4b37          	lui	s6,0xf4
    800028e8:	00989bb7          	lui	s7,0x989
    800028ec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800028f0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800028f4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800028f8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800028fc:	00148c9b          	addiw	s9,s1,1
    80002900:	02500793          	li	a5,37
    80002904:	01998933          	add	s2,s3,s9
    80002908:	38f51263          	bne	a0,a5,80002c8c <__printf+0x434>
    8000290c:	00094783          	lbu	a5,0(s2)
    80002910:	00078c9b          	sext.w	s9,a5
    80002914:	1e078263          	beqz	a5,80002af8 <__printf+0x2a0>
    80002918:	0024849b          	addiw	s1,s1,2
    8000291c:	07000713          	li	a4,112
    80002920:	00998933          	add	s2,s3,s1
    80002924:	38e78a63          	beq	a5,a4,80002cb8 <__printf+0x460>
    80002928:	20f76863          	bltu	a4,a5,80002b38 <__printf+0x2e0>
    8000292c:	42a78863          	beq	a5,a0,80002d5c <__printf+0x504>
    80002930:	06400713          	li	a4,100
    80002934:	40e79663          	bne	a5,a4,80002d40 <__printf+0x4e8>
    80002938:	f7843783          	ld	a5,-136(s0)
    8000293c:	0007a603          	lw	a2,0(a5)
    80002940:	00878793          	addi	a5,a5,8
    80002944:	f6f43c23          	sd	a5,-136(s0)
    80002948:	42064a63          	bltz	a2,80002d7c <__printf+0x524>
    8000294c:	00a00713          	li	a4,10
    80002950:	02e677bb          	remuw	a5,a2,a4
    80002954:	00003d97          	auipc	s11,0x3
    80002958:	884d8d93          	addi	s11,s11,-1916 # 800051d8 <digits>
    8000295c:	00900593          	li	a1,9
    80002960:	0006051b          	sext.w	a0,a2
    80002964:	00000c93          	li	s9,0
    80002968:	02079793          	slli	a5,a5,0x20
    8000296c:	0207d793          	srli	a5,a5,0x20
    80002970:	00fd87b3          	add	a5,s11,a5
    80002974:	0007c783          	lbu	a5,0(a5)
    80002978:	02e656bb          	divuw	a3,a2,a4
    8000297c:	f8f40023          	sb	a5,-128(s0)
    80002980:	14c5d863          	bge	a1,a2,80002ad0 <__printf+0x278>
    80002984:	06300593          	li	a1,99
    80002988:	00100c93          	li	s9,1
    8000298c:	02e6f7bb          	remuw	a5,a3,a4
    80002990:	02079793          	slli	a5,a5,0x20
    80002994:	0207d793          	srli	a5,a5,0x20
    80002998:	00fd87b3          	add	a5,s11,a5
    8000299c:	0007c783          	lbu	a5,0(a5)
    800029a0:	02e6d73b          	divuw	a4,a3,a4
    800029a4:	f8f400a3          	sb	a5,-127(s0)
    800029a8:	12a5f463          	bgeu	a1,a0,80002ad0 <__printf+0x278>
    800029ac:	00a00693          	li	a3,10
    800029b0:	00900593          	li	a1,9
    800029b4:	02d777bb          	remuw	a5,a4,a3
    800029b8:	02079793          	slli	a5,a5,0x20
    800029bc:	0207d793          	srli	a5,a5,0x20
    800029c0:	00fd87b3          	add	a5,s11,a5
    800029c4:	0007c503          	lbu	a0,0(a5)
    800029c8:	02d757bb          	divuw	a5,a4,a3
    800029cc:	f8a40123          	sb	a0,-126(s0)
    800029d0:	48e5f263          	bgeu	a1,a4,80002e54 <__printf+0x5fc>
    800029d4:	06300513          	li	a0,99
    800029d8:	02d7f5bb          	remuw	a1,a5,a3
    800029dc:	02059593          	slli	a1,a1,0x20
    800029e0:	0205d593          	srli	a1,a1,0x20
    800029e4:	00bd85b3          	add	a1,s11,a1
    800029e8:	0005c583          	lbu	a1,0(a1)
    800029ec:	02d7d7bb          	divuw	a5,a5,a3
    800029f0:	f8b401a3          	sb	a1,-125(s0)
    800029f4:	48e57263          	bgeu	a0,a4,80002e78 <__printf+0x620>
    800029f8:	3e700513          	li	a0,999
    800029fc:	02d7f5bb          	remuw	a1,a5,a3
    80002a00:	02059593          	slli	a1,a1,0x20
    80002a04:	0205d593          	srli	a1,a1,0x20
    80002a08:	00bd85b3          	add	a1,s11,a1
    80002a0c:	0005c583          	lbu	a1,0(a1)
    80002a10:	02d7d7bb          	divuw	a5,a5,a3
    80002a14:	f8b40223          	sb	a1,-124(s0)
    80002a18:	46e57663          	bgeu	a0,a4,80002e84 <__printf+0x62c>
    80002a1c:	02d7f5bb          	remuw	a1,a5,a3
    80002a20:	02059593          	slli	a1,a1,0x20
    80002a24:	0205d593          	srli	a1,a1,0x20
    80002a28:	00bd85b3          	add	a1,s11,a1
    80002a2c:	0005c583          	lbu	a1,0(a1)
    80002a30:	02d7d7bb          	divuw	a5,a5,a3
    80002a34:	f8b402a3          	sb	a1,-123(s0)
    80002a38:	46ea7863          	bgeu	s4,a4,80002ea8 <__printf+0x650>
    80002a3c:	02d7f5bb          	remuw	a1,a5,a3
    80002a40:	02059593          	slli	a1,a1,0x20
    80002a44:	0205d593          	srli	a1,a1,0x20
    80002a48:	00bd85b3          	add	a1,s11,a1
    80002a4c:	0005c583          	lbu	a1,0(a1)
    80002a50:	02d7d7bb          	divuw	a5,a5,a3
    80002a54:	f8b40323          	sb	a1,-122(s0)
    80002a58:	3eeaf863          	bgeu	s5,a4,80002e48 <__printf+0x5f0>
    80002a5c:	02d7f5bb          	remuw	a1,a5,a3
    80002a60:	02059593          	slli	a1,a1,0x20
    80002a64:	0205d593          	srli	a1,a1,0x20
    80002a68:	00bd85b3          	add	a1,s11,a1
    80002a6c:	0005c583          	lbu	a1,0(a1)
    80002a70:	02d7d7bb          	divuw	a5,a5,a3
    80002a74:	f8b403a3          	sb	a1,-121(s0)
    80002a78:	42eb7e63          	bgeu	s6,a4,80002eb4 <__printf+0x65c>
    80002a7c:	02d7f5bb          	remuw	a1,a5,a3
    80002a80:	02059593          	slli	a1,a1,0x20
    80002a84:	0205d593          	srli	a1,a1,0x20
    80002a88:	00bd85b3          	add	a1,s11,a1
    80002a8c:	0005c583          	lbu	a1,0(a1)
    80002a90:	02d7d7bb          	divuw	a5,a5,a3
    80002a94:	f8b40423          	sb	a1,-120(s0)
    80002a98:	42ebfc63          	bgeu	s7,a4,80002ed0 <__printf+0x678>
    80002a9c:	02079793          	slli	a5,a5,0x20
    80002aa0:	0207d793          	srli	a5,a5,0x20
    80002aa4:	00fd8db3          	add	s11,s11,a5
    80002aa8:	000dc703          	lbu	a4,0(s11)
    80002aac:	00a00793          	li	a5,10
    80002ab0:	00900c93          	li	s9,9
    80002ab4:	f8e404a3          	sb	a4,-119(s0)
    80002ab8:	00065c63          	bgez	a2,80002ad0 <__printf+0x278>
    80002abc:	f9040713          	addi	a4,s0,-112
    80002ac0:	00f70733          	add	a4,a4,a5
    80002ac4:	02d00693          	li	a3,45
    80002ac8:	fed70823          	sb	a3,-16(a4)
    80002acc:	00078c93          	mv	s9,a5
    80002ad0:	f8040793          	addi	a5,s0,-128
    80002ad4:	01978cb3          	add	s9,a5,s9
    80002ad8:	f7f40d13          	addi	s10,s0,-129
    80002adc:	000cc503          	lbu	a0,0(s9)
    80002ae0:	fffc8c93          	addi	s9,s9,-1
    80002ae4:	00000097          	auipc	ra,0x0
    80002ae8:	b90080e7          	jalr	-1136(ra) # 80002674 <consputc>
    80002aec:	ffac98e3          	bne	s9,s10,80002adc <__printf+0x284>
    80002af0:	00094503          	lbu	a0,0(s2)
    80002af4:	e00514e3          	bnez	a0,800028fc <__printf+0xa4>
    80002af8:	1a0c1663          	bnez	s8,80002ca4 <__printf+0x44c>
    80002afc:	08813083          	ld	ra,136(sp)
    80002b00:	08013403          	ld	s0,128(sp)
    80002b04:	07813483          	ld	s1,120(sp)
    80002b08:	07013903          	ld	s2,112(sp)
    80002b0c:	06813983          	ld	s3,104(sp)
    80002b10:	06013a03          	ld	s4,96(sp)
    80002b14:	05813a83          	ld	s5,88(sp)
    80002b18:	05013b03          	ld	s6,80(sp)
    80002b1c:	04813b83          	ld	s7,72(sp)
    80002b20:	04013c03          	ld	s8,64(sp)
    80002b24:	03813c83          	ld	s9,56(sp)
    80002b28:	03013d03          	ld	s10,48(sp)
    80002b2c:	02813d83          	ld	s11,40(sp)
    80002b30:	0d010113          	addi	sp,sp,208
    80002b34:	00008067          	ret
    80002b38:	07300713          	li	a4,115
    80002b3c:	1ce78a63          	beq	a5,a4,80002d10 <__printf+0x4b8>
    80002b40:	07800713          	li	a4,120
    80002b44:	1ee79e63          	bne	a5,a4,80002d40 <__printf+0x4e8>
    80002b48:	f7843783          	ld	a5,-136(s0)
    80002b4c:	0007a703          	lw	a4,0(a5)
    80002b50:	00878793          	addi	a5,a5,8
    80002b54:	f6f43c23          	sd	a5,-136(s0)
    80002b58:	28074263          	bltz	a4,80002ddc <__printf+0x584>
    80002b5c:	00002d97          	auipc	s11,0x2
    80002b60:	67cd8d93          	addi	s11,s11,1660 # 800051d8 <digits>
    80002b64:	00f77793          	andi	a5,a4,15
    80002b68:	00fd87b3          	add	a5,s11,a5
    80002b6c:	0007c683          	lbu	a3,0(a5)
    80002b70:	00f00613          	li	a2,15
    80002b74:	0007079b          	sext.w	a5,a4
    80002b78:	f8d40023          	sb	a3,-128(s0)
    80002b7c:	0047559b          	srliw	a1,a4,0x4
    80002b80:	0047569b          	srliw	a3,a4,0x4
    80002b84:	00000c93          	li	s9,0
    80002b88:	0ee65063          	bge	a2,a4,80002c68 <__printf+0x410>
    80002b8c:	00f6f693          	andi	a3,a3,15
    80002b90:	00dd86b3          	add	a3,s11,a3
    80002b94:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002b98:	0087d79b          	srliw	a5,a5,0x8
    80002b9c:	00100c93          	li	s9,1
    80002ba0:	f8d400a3          	sb	a3,-127(s0)
    80002ba4:	0cb67263          	bgeu	a2,a1,80002c68 <__printf+0x410>
    80002ba8:	00f7f693          	andi	a3,a5,15
    80002bac:	00dd86b3          	add	a3,s11,a3
    80002bb0:	0006c583          	lbu	a1,0(a3)
    80002bb4:	00f00613          	li	a2,15
    80002bb8:	0047d69b          	srliw	a3,a5,0x4
    80002bbc:	f8b40123          	sb	a1,-126(s0)
    80002bc0:	0047d593          	srli	a1,a5,0x4
    80002bc4:	28f67e63          	bgeu	a2,a5,80002e60 <__printf+0x608>
    80002bc8:	00f6f693          	andi	a3,a3,15
    80002bcc:	00dd86b3          	add	a3,s11,a3
    80002bd0:	0006c503          	lbu	a0,0(a3)
    80002bd4:	0087d813          	srli	a6,a5,0x8
    80002bd8:	0087d69b          	srliw	a3,a5,0x8
    80002bdc:	f8a401a3          	sb	a0,-125(s0)
    80002be0:	28b67663          	bgeu	a2,a1,80002e6c <__printf+0x614>
    80002be4:	00f6f693          	andi	a3,a3,15
    80002be8:	00dd86b3          	add	a3,s11,a3
    80002bec:	0006c583          	lbu	a1,0(a3)
    80002bf0:	00c7d513          	srli	a0,a5,0xc
    80002bf4:	00c7d69b          	srliw	a3,a5,0xc
    80002bf8:	f8b40223          	sb	a1,-124(s0)
    80002bfc:	29067a63          	bgeu	a2,a6,80002e90 <__printf+0x638>
    80002c00:	00f6f693          	andi	a3,a3,15
    80002c04:	00dd86b3          	add	a3,s11,a3
    80002c08:	0006c583          	lbu	a1,0(a3)
    80002c0c:	0107d813          	srli	a6,a5,0x10
    80002c10:	0107d69b          	srliw	a3,a5,0x10
    80002c14:	f8b402a3          	sb	a1,-123(s0)
    80002c18:	28a67263          	bgeu	a2,a0,80002e9c <__printf+0x644>
    80002c1c:	00f6f693          	andi	a3,a3,15
    80002c20:	00dd86b3          	add	a3,s11,a3
    80002c24:	0006c683          	lbu	a3,0(a3)
    80002c28:	0147d79b          	srliw	a5,a5,0x14
    80002c2c:	f8d40323          	sb	a3,-122(s0)
    80002c30:	21067663          	bgeu	a2,a6,80002e3c <__printf+0x5e4>
    80002c34:	02079793          	slli	a5,a5,0x20
    80002c38:	0207d793          	srli	a5,a5,0x20
    80002c3c:	00fd8db3          	add	s11,s11,a5
    80002c40:	000dc683          	lbu	a3,0(s11)
    80002c44:	00800793          	li	a5,8
    80002c48:	00700c93          	li	s9,7
    80002c4c:	f8d403a3          	sb	a3,-121(s0)
    80002c50:	00075c63          	bgez	a4,80002c68 <__printf+0x410>
    80002c54:	f9040713          	addi	a4,s0,-112
    80002c58:	00f70733          	add	a4,a4,a5
    80002c5c:	02d00693          	li	a3,45
    80002c60:	fed70823          	sb	a3,-16(a4)
    80002c64:	00078c93          	mv	s9,a5
    80002c68:	f8040793          	addi	a5,s0,-128
    80002c6c:	01978cb3          	add	s9,a5,s9
    80002c70:	f7f40d13          	addi	s10,s0,-129
    80002c74:	000cc503          	lbu	a0,0(s9)
    80002c78:	fffc8c93          	addi	s9,s9,-1
    80002c7c:	00000097          	auipc	ra,0x0
    80002c80:	9f8080e7          	jalr	-1544(ra) # 80002674 <consputc>
    80002c84:	ff9d18e3          	bne	s10,s9,80002c74 <__printf+0x41c>
    80002c88:	0100006f          	j	80002c98 <__printf+0x440>
    80002c8c:	00000097          	auipc	ra,0x0
    80002c90:	9e8080e7          	jalr	-1560(ra) # 80002674 <consputc>
    80002c94:	000c8493          	mv	s1,s9
    80002c98:	00094503          	lbu	a0,0(s2)
    80002c9c:	c60510e3          	bnez	a0,800028fc <__printf+0xa4>
    80002ca0:	e40c0ee3          	beqz	s8,80002afc <__printf+0x2a4>
    80002ca4:	00004517          	auipc	a0,0x4
    80002ca8:	cfc50513          	addi	a0,a0,-772 # 800069a0 <pr>
    80002cac:	00001097          	auipc	ra,0x1
    80002cb0:	94c080e7          	jalr	-1716(ra) # 800035f8 <release>
    80002cb4:	e49ff06f          	j	80002afc <__printf+0x2a4>
    80002cb8:	f7843783          	ld	a5,-136(s0)
    80002cbc:	03000513          	li	a0,48
    80002cc0:	01000d13          	li	s10,16
    80002cc4:	00878713          	addi	a4,a5,8
    80002cc8:	0007bc83          	ld	s9,0(a5)
    80002ccc:	f6e43c23          	sd	a4,-136(s0)
    80002cd0:	00000097          	auipc	ra,0x0
    80002cd4:	9a4080e7          	jalr	-1628(ra) # 80002674 <consputc>
    80002cd8:	07800513          	li	a0,120
    80002cdc:	00000097          	auipc	ra,0x0
    80002ce0:	998080e7          	jalr	-1640(ra) # 80002674 <consputc>
    80002ce4:	00002d97          	auipc	s11,0x2
    80002ce8:	4f4d8d93          	addi	s11,s11,1268 # 800051d8 <digits>
    80002cec:	03ccd793          	srli	a5,s9,0x3c
    80002cf0:	00fd87b3          	add	a5,s11,a5
    80002cf4:	0007c503          	lbu	a0,0(a5)
    80002cf8:	fffd0d1b          	addiw	s10,s10,-1
    80002cfc:	004c9c93          	slli	s9,s9,0x4
    80002d00:	00000097          	auipc	ra,0x0
    80002d04:	974080e7          	jalr	-1676(ra) # 80002674 <consputc>
    80002d08:	fe0d12e3          	bnez	s10,80002cec <__printf+0x494>
    80002d0c:	f8dff06f          	j	80002c98 <__printf+0x440>
    80002d10:	f7843783          	ld	a5,-136(s0)
    80002d14:	0007bc83          	ld	s9,0(a5)
    80002d18:	00878793          	addi	a5,a5,8
    80002d1c:	f6f43c23          	sd	a5,-136(s0)
    80002d20:	000c9a63          	bnez	s9,80002d34 <__printf+0x4dc>
    80002d24:	1080006f          	j	80002e2c <__printf+0x5d4>
    80002d28:	001c8c93          	addi	s9,s9,1
    80002d2c:	00000097          	auipc	ra,0x0
    80002d30:	948080e7          	jalr	-1720(ra) # 80002674 <consputc>
    80002d34:	000cc503          	lbu	a0,0(s9)
    80002d38:	fe0518e3          	bnez	a0,80002d28 <__printf+0x4d0>
    80002d3c:	f5dff06f          	j	80002c98 <__printf+0x440>
    80002d40:	02500513          	li	a0,37
    80002d44:	00000097          	auipc	ra,0x0
    80002d48:	930080e7          	jalr	-1744(ra) # 80002674 <consputc>
    80002d4c:	000c8513          	mv	a0,s9
    80002d50:	00000097          	auipc	ra,0x0
    80002d54:	924080e7          	jalr	-1756(ra) # 80002674 <consputc>
    80002d58:	f41ff06f          	j	80002c98 <__printf+0x440>
    80002d5c:	02500513          	li	a0,37
    80002d60:	00000097          	auipc	ra,0x0
    80002d64:	914080e7          	jalr	-1772(ra) # 80002674 <consputc>
    80002d68:	f31ff06f          	j	80002c98 <__printf+0x440>
    80002d6c:	00030513          	mv	a0,t1
    80002d70:	00000097          	auipc	ra,0x0
    80002d74:	7bc080e7          	jalr	1980(ra) # 8000352c <acquire>
    80002d78:	b4dff06f          	j	800028c4 <__printf+0x6c>
    80002d7c:	40c0053b          	negw	a0,a2
    80002d80:	00a00713          	li	a4,10
    80002d84:	02e576bb          	remuw	a3,a0,a4
    80002d88:	00002d97          	auipc	s11,0x2
    80002d8c:	450d8d93          	addi	s11,s11,1104 # 800051d8 <digits>
    80002d90:	ff700593          	li	a1,-9
    80002d94:	02069693          	slli	a3,a3,0x20
    80002d98:	0206d693          	srli	a3,a3,0x20
    80002d9c:	00dd86b3          	add	a3,s11,a3
    80002da0:	0006c683          	lbu	a3,0(a3)
    80002da4:	02e557bb          	divuw	a5,a0,a4
    80002da8:	f8d40023          	sb	a3,-128(s0)
    80002dac:	10b65e63          	bge	a2,a1,80002ec8 <__printf+0x670>
    80002db0:	06300593          	li	a1,99
    80002db4:	02e7f6bb          	remuw	a3,a5,a4
    80002db8:	02069693          	slli	a3,a3,0x20
    80002dbc:	0206d693          	srli	a3,a3,0x20
    80002dc0:	00dd86b3          	add	a3,s11,a3
    80002dc4:	0006c683          	lbu	a3,0(a3)
    80002dc8:	02e7d73b          	divuw	a4,a5,a4
    80002dcc:	00200793          	li	a5,2
    80002dd0:	f8d400a3          	sb	a3,-127(s0)
    80002dd4:	bca5ece3          	bltu	a1,a0,800029ac <__printf+0x154>
    80002dd8:	ce5ff06f          	j	80002abc <__printf+0x264>
    80002ddc:	40e007bb          	negw	a5,a4
    80002de0:	00002d97          	auipc	s11,0x2
    80002de4:	3f8d8d93          	addi	s11,s11,1016 # 800051d8 <digits>
    80002de8:	00f7f693          	andi	a3,a5,15
    80002dec:	00dd86b3          	add	a3,s11,a3
    80002df0:	0006c583          	lbu	a1,0(a3)
    80002df4:	ff100613          	li	a2,-15
    80002df8:	0047d69b          	srliw	a3,a5,0x4
    80002dfc:	f8b40023          	sb	a1,-128(s0)
    80002e00:	0047d59b          	srliw	a1,a5,0x4
    80002e04:	0ac75e63          	bge	a4,a2,80002ec0 <__printf+0x668>
    80002e08:	00f6f693          	andi	a3,a3,15
    80002e0c:	00dd86b3          	add	a3,s11,a3
    80002e10:	0006c603          	lbu	a2,0(a3)
    80002e14:	00f00693          	li	a3,15
    80002e18:	0087d79b          	srliw	a5,a5,0x8
    80002e1c:	f8c400a3          	sb	a2,-127(s0)
    80002e20:	d8b6e4e3          	bltu	a3,a1,80002ba8 <__printf+0x350>
    80002e24:	00200793          	li	a5,2
    80002e28:	e2dff06f          	j	80002c54 <__printf+0x3fc>
    80002e2c:	00002c97          	auipc	s9,0x2
    80002e30:	38cc8c93          	addi	s9,s9,908 # 800051b8 <_ZZ12printIntegermE6digits+0x158>
    80002e34:	02800513          	li	a0,40
    80002e38:	ef1ff06f          	j	80002d28 <__printf+0x4d0>
    80002e3c:	00700793          	li	a5,7
    80002e40:	00600c93          	li	s9,6
    80002e44:	e0dff06f          	j	80002c50 <__printf+0x3f8>
    80002e48:	00700793          	li	a5,7
    80002e4c:	00600c93          	li	s9,6
    80002e50:	c69ff06f          	j	80002ab8 <__printf+0x260>
    80002e54:	00300793          	li	a5,3
    80002e58:	00200c93          	li	s9,2
    80002e5c:	c5dff06f          	j	80002ab8 <__printf+0x260>
    80002e60:	00300793          	li	a5,3
    80002e64:	00200c93          	li	s9,2
    80002e68:	de9ff06f          	j	80002c50 <__printf+0x3f8>
    80002e6c:	00400793          	li	a5,4
    80002e70:	00300c93          	li	s9,3
    80002e74:	dddff06f          	j	80002c50 <__printf+0x3f8>
    80002e78:	00400793          	li	a5,4
    80002e7c:	00300c93          	li	s9,3
    80002e80:	c39ff06f          	j	80002ab8 <__printf+0x260>
    80002e84:	00500793          	li	a5,5
    80002e88:	00400c93          	li	s9,4
    80002e8c:	c2dff06f          	j	80002ab8 <__printf+0x260>
    80002e90:	00500793          	li	a5,5
    80002e94:	00400c93          	li	s9,4
    80002e98:	db9ff06f          	j	80002c50 <__printf+0x3f8>
    80002e9c:	00600793          	li	a5,6
    80002ea0:	00500c93          	li	s9,5
    80002ea4:	dadff06f          	j	80002c50 <__printf+0x3f8>
    80002ea8:	00600793          	li	a5,6
    80002eac:	00500c93          	li	s9,5
    80002eb0:	c09ff06f          	j	80002ab8 <__printf+0x260>
    80002eb4:	00800793          	li	a5,8
    80002eb8:	00700c93          	li	s9,7
    80002ebc:	bfdff06f          	j	80002ab8 <__printf+0x260>
    80002ec0:	00100793          	li	a5,1
    80002ec4:	d91ff06f          	j	80002c54 <__printf+0x3fc>
    80002ec8:	00100793          	li	a5,1
    80002ecc:	bf1ff06f          	j	80002abc <__printf+0x264>
    80002ed0:	00900793          	li	a5,9
    80002ed4:	00800c93          	li	s9,8
    80002ed8:	be1ff06f          	j	80002ab8 <__printf+0x260>
    80002edc:	00002517          	auipc	a0,0x2
    80002ee0:	2e450513          	addi	a0,a0,740 # 800051c0 <_ZZ12printIntegermE6digits+0x160>
    80002ee4:	00000097          	auipc	ra,0x0
    80002ee8:	918080e7          	jalr	-1768(ra) # 800027fc <panic>

0000000080002eec <printfinit>:
    80002eec:	fe010113          	addi	sp,sp,-32
    80002ef0:	00813823          	sd	s0,16(sp)
    80002ef4:	00913423          	sd	s1,8(sp)
    80002ef8:	00113c23          	sd	ra,24(sp)
    80002efc:	02010413          	addi	s0,sp,32
    80002f00:	00004497          	auipc	s1,0x4
    80002f04:	aa048493          	addi	s1,s1,-1376 # 800069a0 <pr>
    80002f08:	00048513          	mv	a0,s1
    80002f0c:	00002597          	auipc	a1,0x2
    80002f10:	2c458593          	addi	a1,a1,708 # 800051d0 <_ZZ12printIntegermE6digits+0x170>
    80002f14:	00000097          	auipc	ra,0x0
    80002f18:	5f4080e7          	jalr	1524(ra) # 80003508 <initlock>
    80002f1c:	01813083          	ld	ra,24(sp)
    80002f20:	01013403          	ld	s0,16(sp)
    80002f24:	0004ac23          	sw	zero,24(s1)
    80002f28:	00813483          	ld	s1,8(sp)
    80002f2c:	02010113          	addi	sp,sp,32
    80002f30:	00008067          	ret

0000000080002f34 <uartinit>:
    80002f34:	ff010113          	addi	sp,sp,-16
    80002f38:	00813423          	sd	s0,8(sp)
    80002f3c:	01010413          	addi	s0,sp,16
    80002f40:	100007b7          	lui	a5,0x10000
    80002f44:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002f48:	f8000713          	li	a4,-128
    80002f4c:	00e781a3          	sb	a4,3(a5)
    80002f50:	00300713          	li	a4,3
    80002f54:	00e78023          	sb	a4,0(a5)
    80002f58:	000780a3          	sb	zero,1(a5)
    80002f5c:	00e781a3          	sb	a4,3(a5)
    80002f60:	00700693          	li	a3,7
    80002f64:	00d78123          	sb	a3,2(a5)
    80002f68:	00e780a3          	sb	a4,1(a5)
    80002f6c:	00813403          	ld	s0,8(sp)
    80002f70:	01010113          	addi	sp,sp,16
    80002f74:	00008067          	ret

0000000080002f78 <uartputc>:
    80002f78:	00002797          	auipc	a5,0x2
    80002f7c:	7c87a783          	lw	a5,1992(a5) # 80005740 <panicked>
    80002f80:	00078463          	beqz	a5,80002f88 <uartputc+0x10>
    80002f84:	0000006f          	j	80002f84 <uartputc+0xc>
    80002f88:	fd010113          	addi	sp,sp,-48
    80002f8c:	02813023          	sd	s0,32(sp)
    80002f90:	00913c23          	sd	s1,24(sp)
    80002f94:	01213823          	sd	s2,16(sp)
    80002f98:	01313423          	sd	s3,8(sp)
    80002f9c:	02113423          	sd	ra,40(sp)
    80002fa0:	03010413          	addi	s0,sp,48
    80002fa4:	00002917          	auipc	s2,0x2
    80002fa8:	7a490913          	addi	s2,s2,1956 # 80005748 <uart_tx_r>
    80002fac:	00093783          	ld	a5,0(s2)
    80002fb0:	00002497          	auipc	s1,0x2
    80002fb4:	7a048493          	addi	s1,s1,1952 # 80005750 <uart_tx_w>
    80002fb8:	0004b703          	ld	a4,0(s1)
    80002fbc:	02078693          	addi	a3,a5,32
    80002fc0:	00050993          	mv	s3,a0
    80002fc4:	02e69c63          	bne	a3,a4,80002ffc <uartputc+0x84>
    80002fc8:	00001097          	auipc	ra,0x1
    80002fcc:	834080e7          	jalr	-1996(ra) # 800037fc <push_on>
    80002fd0:	00093783          	ld	a5,0(s2)
    80002fd4:	0004b703          	ld	a4,0(s1)
    80002fd8:	02078793          	addi	a5,a5,32
    80002fdc:	00e79463          	bne	a5,a4,80002fe4 <uartputc+0x6c>
    80002fe0:	0000006f          	j	80002fe0 <uartputc+0x68>
    80002fe4:	00001097          	auipc	ra,0x1
    80002fe8:	88c080e7          	jalr	-1908(ra) # 80003870 <pop_on>
    80002fec:	00093783          	ld	a5,0(s2)
    80002ff0:	0004b703          	ld	a4,0(s1)
    80002ff4:	02078693          	addi	a3,a5,32
    80002ff8:	fce688e3          	beq	a3,a4,80002fc8 <uartputc+0x50>
    80002ffc:	01f77693          	andi	a3,a4,31
    80003000:	00004597          	auipc	a1,0x4
    80003004:	9c058593          	addi	a1,a1,-1600 # 800069c0 <uart_tx_buf>
    80003008:	00d586b3          	add	a3,a1,a3
    8000300c:	00170713          	addi	a4,a4,1
    80003010:	01368023          	sb	s3,0(a3)
    80003014:	00e4b023          	sd	a4,0(s1)
    80003018:	10000637          	lui	a2,0x10000
    8000301c:	02f71063          	bne	a4,a5,8000303c <uartputc+0xc4>
    80003020:	0340006f          	j	80003054 <uartputc+0xdc>
    80003024:	00074703          	lbu	a4,0(a4)
    80003028:	00f93023          	sd	a5,0(s2)
    8000302c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003030:	00093783          	ld	a5,0(s2)
    80003034:	0004b703          	ld	a4,0(s1)
    80003038:	00f70e63          	beq	a4,a5,80003054 <uartputc+0xdc>
    8000303c:	00564683          	lbu	a3,5(a2)
    80003040:	01f7f713          	andi	a4,a5,31
    80003044:	00e58733          	add	a4,a1,a4
    80003048:	0206f693          	andi	a3,a3,32
    8000304c:	00178793          	addi	a5,a5,1
    80003050:	fc069ae3          	bnez	a3,80003024 <uartputc+0xac>
    80003054:	02813083          	ld	ra,40(sp)
    80003058:	02013403          	ld	s0,32(sp)
    8000305c:	01813483          	ld	s1,24(sp)
    80003060:	01013903          	ld	s2,16(sp)
    80003064:	00813983          	ld	s3,8(sp)
    80003068:	03010113          	addi	sp,sp,48
    8000306c:	00008067          	ret

0000000080003070 <uartputc_sync>:
    80003070:	ff010113          	addi	sp,sp,-16
    80003074:	00813423          	sd	s0,8(sp)
    80003078:	01010413          	addi	s0,sp,16
    8000307c:	00002717          	auipc	a4,0x2
    80003080:	6c472703          	lw	a4,1732(a4) # 80005740 <panicked>
    80003084:	02071663          	bnez	a4,800030b0 <uartputc_sync+0x40>
    80003088:	00050793          	mv	a5,a0
    8000308c:	100006b7          	lui	a3,0x10000
    80003090:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003094:	02077713          	andi	a4,a4,32
    80003098:	fe070ce3          	beqz	a4,80003090 <uartputc_sync+0x20>
    8000309c:	0ff7f793          	andi	a5,a5,255
    800030a0:	00f68023          	sb	a5,0(a3)
    800030a4:	00813403          	ld	s0,8(sp)
    800030a8:	01010113          	addi	sp,sp,16
    800030ac:	00008067          	ret
    800030b0:	0000006f          	j	800030b0 <uartputc_sync+0x40>

00000000800030b4 <uartstart>:
    800030b4:	ff010113          	addi	sp,sp,-16
    800030b8:	00813423          	sd	s0,8(sp)
    800030bc:	01010413          	addi	s0,sp,16
    800030c0:	00002617          	auipc	a2,0x2
    800030c4:	68860613          	addi	a2,a2,1672 # 80005748 <uart_tx_r>
    800030c8:	00002517          	auipc	a0,0x2
    800030cc:	68850513          	addi	a0,a0,1672 # 80005750 <uart_tx_w>
    800030d0:	00063783          	ld	a5,0(a2)
    800030d4:	00053703          	ld	a4,0(a0)
    800030d8:	04f70263          	beq	a4,a5,8000311c <uartstart+0x68>
    800030dc:	100005b7          	lui	a1,0x10000
    800030e0:	00004817          	auipc	a6,0x4
    800030e4:	8e080813          	addi	a6,a6,-1824 # 800069c0 <uart_tx_buf>
    800030e8:	01c0006f          	j	80003104 <uartstart+0x50>
    800030ec:	0006c703          	lbu	a4,0(a3)
    800030f0:	00f63023          	sd	a5,0(a2)
    800030f4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800030f8:	00063783          	ld	a5,0(a2)
    800030fc:	00053703          	ld	a4,0(a0)
    80003100:	00f70e63          	beq	a4,a5,8000311c <uartstart+0x68>
    80003104:	01f7f713          	andi	a4,a5,31
    80003108:	00e806b3          	add	a3,a6,a4
    8000310c:	0055c703          	lbu	a4,5(a1)
    80003110:	00178793          	addi	a5,a5,1
    80003114:	02077713          	andi	a4,a4,32
    80003118:	fc071ae3          	bnez	a4,800030ec <uartstart+0x38>
    8000311c:	00813403          	ld	s0,8(sp)
    80003120:	01010113          	addi	sp,sp,16
    80003124:	00008067          	ret

0000000080003128 <uartgetc>:
    80003128:	ff010113          	addi	sp,sp,-16
    8000312c:	00813423          	sd	s0,8(sp)
    80003130:	01010413          	addi	s0,sp,16
    80003134:	10000737          	lui	a4,0x10000
    80003138:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000313c:	0017f793          	andi	a5,a5,1
    80003140:	00078c63          	beqz	a5,80003158 <uartgetc+0x30>
    80003144:	00074503          	lbu	a0,0(a4)
    80003148:	0ff57513          	andi	a0,a0,255
    8000314c:	00813403          	ld	s0,8(sp)
    80003150:	01010113          	addi	sp,sp,16
    80003154:	00008067          	ret
    80003158:	fff00513          	li	a0,-1
    8000315c:	ff1ff06f          	j	8000314c <uartgetc+0x24>

0000000080003160 <uartintr>:
    80003160:	100007b7          	lui	a5,0x10000
    80003164:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003168:	0017f793          	andi	a5,a5,1
    8000316c:	0a078463          	beqz	a5,80003214 <uartintr+0xb4>
    80003170:	fe010113          	addi	sp,sp,-32
    80003174:	00813823          	sd	s0,16(sp)
    80003178:	00913423          	sd	s1,8(sp)
    8000317c:	00113c23          	sd	ra,24(sp)
    80003180:	02010413          	addi	s0,sp,32
    80003184:	100004b7          	lui	s1,0x10000
    80003188:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000318c:	0ff57513          	andi	a0,a0,255
    80003190:	fffff097          	auipc	ra,0xfffff
    80003194:	534080e7          	jalr	1332(ra) # 800026c4 <consoleintr>
    80003198:	0054c783          	lbu	a5,5(s1)
    8000319c:	0017f793          	andi	a5,a5,1
    800031a0:	fe0794e3          	bnez	a5,80003188 <uartintr+0x28>
    800031a4:	00002617          	auipc	a2,0x2
    800031a8:	5a460613          	addi	a2,a2,1444 # 80005748 <uart_tx_r>
    800031ac:	00002517          	auipc	a0,0x2
    800031b0:	5a450513          	addi	a0,a0,1444 # 80005750 <uart_tx_w>
    800031b4:	00063783          	ld	a5,0(a2)
    800031b8:	00053703          	ld	a4,0(a0)
    800031bc:	04f70263          	beq	a4,a5,80003200 <uartintr+0xa0>
    800031c0:	100005b7          	lui	a1,0x10000
    800031c4:	00003817          	auipc	a6,0x3
    800031c8:	7fc80813          	addi	a6,a6,2044 # 800069c0 <uart_tx_buf>
    800031cc:	01c0006f          	j	800031e8 <uartintr+0x88>
    800031d0:	0006c703          	lbu	a4,0(a3)
    800031d4:	00f63023          	sd	a5,0(a2)
    800031d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800031dc:	00063783          	ld	a5,0(a2)
    800031e0:	00053703          	ld	a4,0(a0)
    800031e4:	00f70e63          	beq	a4,a5,80003200 <uartintr+0xa0>
    800031e8:	01f7f713          	andi	a4,a5,31
    800031ec:	00e806b3          	add	a3,a6,a4
    800031f0:	0055c703          	lbu	a4,5(a1)
    800031f4:	00178793          	addi	a5,a5,1
    800031f8:	02077713          	andi	a4,a4,32
    800031fc:	fc071ae3          	bnez	a4,800031d0 <uartintr+0x70>
    80003200:	01813083          	ld	ra,24(sp)
    80003204:	01013403          	ld	s0,16(sp)
    80003208:	00813483          	ld	s1,8(sp)
    8000320c:	02010113          	addi	sp,sp,32
    80003210:	00008067          	ret
    80003214:	00002617          	auipc	a2,0x2
    80003218:	53460613          	addi	a2,a2,1332 # 80005748 <uart_tx_r>
    8000321c:	00002517          	auipc	a0,0x2
    80003220:	53450513          	addi	a0,a0,1332 # 80005750 <uart_tx_w>
    80003224:	00063783          	ld	a5,0(a2)
    80003228:	00053703          	ld	a4,0(a0)
    8000322c:	04f70263          	beq	a4,a5,80003270 <uartintr+0x110>
    80003230:	100005b7          	lui	a1,0x10000
    80003234:	00003817          	auipc	a6,0x3
    80003238:	78c80813          	addi	a6,a6,1932 # 800069c0 <uart_tx_buf>
    8000323c:	01c0006f          	j	80003258 <uartintr+0xf8>
    80003240:	0006c703          	lbu	a4,0(a3)
    80003244:	00f63023          	sd	a5,0(a2)
    80003248:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000324c:	00063783          	ld	a5,0(a2)
    80003250:	00053703          	ld	a4,0(a0)
    80003254:	02f70063          	beq	a4,a5,80003274 <uartintr+0x114>
    80003258:	01f7f713          	andi	a4,a5,31
    8000325c:	00e806b3          	add	a3,a6,a4
    80003260:	0055c703          	lbu	a4,5(a1)
    80003264:	00178793          	addi	a5,a5,1
    80003268:	02077713          	andi	a4,a4,32
    8000326c:	fc071ae3          	bnez	a4,80003240 <uartintr+0xe0>
    80003270:	00008067          	ret
    80003274:	00008067          	ret

0000000080003278 <kinit>:
    80003278:	fc010113          	addi	sp,sp,-64
    8000327c:	02913423          	sd	s1,40(sp)
    80003280:	fffff7b7          	lui	a5,0xfffff
    80003284:	00004497          	auipc	s1,0x4
    80003288:	76b48493          	addi	s1,s1,1899 # 800079ef <end+0xfff>
    8000328c:	02813823          	sd	s0,48(sp)
    80003290:	01313c23          	sd	s3,24(sp)
    80003294:	00f4f4b3          	and	s1,s1,a5
    80003298:	02113c23          	sd	ra,56(sp)
    8000329c:	03213023          	sd	s2,32(sp)
    800032a0:	01413823          	sd	s4,16(sp)
    800032a4:	01513423          	sd	s5,8(sp)
    800032a8:	04010413          	addi	s0,sp,64
    800032ac:	000017b7          	lui	a5,0x1
    800032b0:	01100993          	li	s3,17
    800032b4:	00f487b3          	add	a5,s1,a5
    800032b8:	01b99993          	slli	s3,s3,0x1b
    800032bc:	06f9e063          	bltu	s3,a5,8000331c <kinit+0xa4>
    800032c0:	00003a97          	auipc	s5,0x3
    800032c4:	730a8a93          	addi	s5,s5,1840 # 800069f0 <end>
    800032c8:	0754ec63          	bltu	s1,s5,80003340 <kinit+0xc8>
    800032cc:	0734fa63          	bgeu	s1,s3,80003340 <kinit+0xc8>
    800032d0:	00088a37          	lui	s4,0x88
    800032d4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800032d8:	00002917          	auipc	s2,0x2
    800032dc:	48090913          	addi	s2,s2,1152 # 80005758 <kmem>
    800032e0:	00ca1a13          	slli	s4,s4,0xc
    800032e4:	0140006f          	j	800032f8 <kinit+0x80>
    800032e8:	000017b7          	lui	a5,0x1
    800032ec:	00f484b3          	add	s1,s1,a5
    800032f0:	0554e863          	bltu	s1,s5,80003340 <kinit+0xc8>
    800032f4:	0534f663          	bgeu	s1,s3,80003340 <kinit+0xc8>
    800032f8:	00001637          	lui	a2,0x1
    800032fc:	00100593          	li	a1,1
    80003300:	00048513          	mv	a0,s1
    80003304:	00000097          	auipc	ra,0x0
    80003308:	5e4080e7          	jalr	1508(ra) # 800038e8 <__memset>
    8000330c:	00093783          	ld	a5,0(s2)
    80003310:	00f4b023          	sd	a5,0(s1)
    80003314:	00993023          	sd	s1,0(s2)
    80003318:	fd4498e3          	bne	s1,s4,800032e8 <kinit+0x70>
    8000331c:	03813083          	ld	ra,56(sp)
    80003320:	03013403          	ld	s0,48(sp)
    80003324:	02813483          	ld	s1,40(sp)
    80003328:	02013903          	ld	s2,32(sp)
    8000332c:	01813983          	ld	s3,24(sp)
    80003330:	01013a03          	ld	s4,16(sp)
    80003334:	00813a83          	ld	s5,8(sp)
    80003338:	04010113          	addi	sp,sp,64
    8000333c:	00008067          	ret
    80003340:	00002517          	auipc	a0,0x2
    80003344:	eb050513          	addi	a0,a0,-336 # 800051f0 <digits+0x18>
    80003348:	fffff097          	auipc	ra,0xfffff
    8000334c:	4b4080e7          	jalr	1204(ra) # 800027fc <panic>

0000000080003350 <freerange>:
    80003350:	fc010113          	addi	sp,sp,-64
    80003354:	000017b7          	lui	a5,0x1
    80003358:	02913423          	sd	s1,40(sp)
    8000335c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003360:	009504b3          	add	s1,a0,s1
    80003364:	fffff537          	lui	a0,0xfffff
    80003368:	02813823          	sd	s0,48(sp)
    8000336c:	02113c23          	sd	ra,56(sp)
    80003370:	03213023          	sd	s2,32(sp)
    80003374:	01313c23          	sd	s3,24(sp)
    80003378:	01413823          	sd	s4,16(sp)
    8000337c:	01513423          	sd	s5,8(sp)
    80003380:	01613023          	sd	s6,0(sp)
    80003384:	04010413          	addi	s0,sp,64
    80003388:	00a4f4b3          	and	s1,s1,a0
    8000338c:	00f487b3          	add	a5,s1,a5
    80003390:	06f5e463          	bltu	a1,a5,800033f8 <freerange+0xa8>
    80003394:	00003a97          	auipc	s5,0x3
    80003398:	65ca8a93          	addi	s5,s5,1628 # 800069f0 <end>
    8000339c:	0954e263          	bltu	s1,s5,80003420 <freerange+0xd0>
    800033a0:	01100993          	li	s3,17
    800033a4:	01b99993          	slli	s3,s3,0x1b
    800033a8:	0734fc63          	bgeu	s1,s3,80003420 <freerange+0xd0>
    800033ac:	00058a13          	mv	s4,a1
    800033b0:	00002917          	auipc	s2,0x2
    800033b4:	3a890913          	addi	s2,s2,936 # 80005758 <kmem>
    800033b8:	00002b37          	lui	s6,0x2
    800033bc:	0140006f          	j	800033d0 <freerange+0x80>
    800033c0:	000017b7          	lui	a5,0x1
    800033c4:	00f484b3          	add	s1,s1,a5
    800033c8:	0554ec63          	bltu	s1,s5,80003420 <freerange+0xd0>
    800033cc:	0534fa63          	bgeu	s1,s3,80003420 <freerange+0xd0>
    800033d0:	00001637          	lui	a2,0x1
    800033d4:	00100593          	li	a1,1
    800033d8:	00048513          	mv	a0,s1
    800033dc:	00000097          	auipc	ra,0x0
    800033e0:	50c080e7          	jalr	1292(ra) # 800038e8 <__memset>
    800033e4:	00093703          	ld	a4,0(s2)
    800033e8:	016487b3          	add	a5,s1,s6
    800033ec:	00e4b023          	sd	a4,0(s1)
    800033f0:	00993023          	sd	s1,0(s2)
    800033f4:	fcfa76e3          	bgeu	s4,a5,800033c0 <freerange+0x70>
    800033f8:	03813083          	ld	ra,56(sp)
    800033fc:	03013403          	ld	s0,48(sp)
    80003400:	02813483          	ld	s1,40(sp)
    80003404:	02013903          	ld	s2,32(sp)
    80003408:	01813983          	ld	s3,24(sp)
    8000340c:	01013a03          	ld	s4,16(sp)
    80003410:	00813a83          	ld	s5,8(sp)
    80003414:	00013b03          	ld	s6,0(sp)
    80003418:	04010113          	addi	sp,sp,64
    8000341c:	00008067          	ret
    80003420:	00002517          	auipc	a0,0x2
    80003424:	dd050513          	addi	a0,a0,-560 # 800051f0 <digits+0x18>
    80003428:	fffff097          	auipc	ra,0xfffff
    8000342c:	3d4080e7          	jalr	980(ra) # 800027fc <panic>

0000000080003430 <kfree>:
    80003430:	fe010113          	addi	sp,sp,-32
    80003434:	00813823          	sd	s0,16(sp)
    80003438:	00113c23          	sd	ra,24(sp)
    8000343c:	00913423          	sd	s1,8(sp)
    80003440:	02010413          	addi	s0,sp,32
    80003444:	03451793          	slli	a5,a0,0x34
    80003448:	04079c63          	bnez	a5,800034a0 <kfree+0x70>
    8000344c:	00003797          	auipc	a5,0x3
    80003450:	5a478793          	addi	a5,a5,1444 # 800069f0 <end>
    80003454:	00050493          	mv	s1,a0
    80003458:	04f56463          	bltu	a0,a5,800034a0 <kfree+0x70>
    8000345c:	01100793          	li	a5,17
    80003460:	01b79793          	slli	a5,a5,0x1b
    80003464:	02f57e63          	bgeu	a0,a5,800034a0 <kfree+0x70>
    80003468:	00001637          	lui	a2,0x1
    8000346c:	00100593          	li	a1,1
    80003470:	00000097          	auipc	ra,0x0
    80003474:	478080e7          	jalr	1144(ra) # 800038e8 <__memset>
    80003478:	00002797          	auipc	a5,0x2
    8000347c:	2e078793          	addi	a5,a5,736 # 80005758 <kmem>
    80003480:	0007b703          	ld	a4,0(a5)
    80003484:	01813083          	ld	ra,24(sp)
    80003488:	01013403          	ld	s0,16(sp)
    8000348c:	00e4b023          	sd	a4,0(s1)
    80003490:	0097b023          	sd	s1,0(a5)
    80003494:	00813483          	ld	s1,8(sp)
    80003498:	02010113          	addi	sp,sp,32
    8000349c:	00008067          	ret
    800034a0:	00002517          	auipc	a0,0x2
    800034a4:	d5050513          	addi	a0,a0,-688 # 800051f0 <digits+0x18>
    800034a8:	fffff097          	auipc	ra,0xfffff
    800034ac:	354080e7          	jalr	852(ra) # 800027fc <panic>

00000000800034b0 <kalloc>:
    800034b0:	fe010113          	addi	sp,sp,-32
    800034b4:	00813823          	sd	s0,16(sp)
    800034b8:	00913423          	sd	s1,8(sp)
    800034bc:	00113c23          	sd	ra,24(sp)
    800034c0:	02010413          	addi	s0,sp,32
    800034c4:	00002797          	auipc	a5,0x2
    800034c8:	29478793          	addi	a5,a5,660 # 80005758 <kmem>
    800034cc:	0007b483          	ld	s1,0(a5)
    800034d0:	02048063          	beqz	s1,800034f0 <kalloc+0x40>
    800034d4:	0004b703          	ld	a4,0(s1)
    800034d8:	00001637          	lui	a2,0x1
    800034dc:	00500593          	li	a1,5
    800034e0:	00048513          	mv	a0,s1
    800034e4:	00e7b023          	sd	a4,0(a5)
    800034e8:	00000097          	auipc	ra,0x0
    800034ec:	400080e7          	jalr	1024(ra) # 800038e8 <__memset>
    800034f0:	01813083          	ld	ra,24(sp)
    800034f4:	01013403          	ld	s0,16(sp)
    800034f8:	00048513          	mv	a0,s1
    800034fc:	00813483          	ld	s1,8(sp)
    80003500:	02010113          	addi	sp,sp,32
    80003504:	00008067          	ret

0000000080003508 <initlock>:
    80003508:	ff010113          	addi	sp,sp,-16
    8000350c:	00813423          	sd	s0,8(sp)
    80003510:	01010413          	addi	s0,sp,16
    80003514:	00813403          	ld	s0,8(sp)
    80003518:	00b53423          	sd	a1,8(a0)
    8000351c:	00052023          	sw	zero,0(a0)
    80003520:	00053823          	sd	zero,16(a0)
    80003524:	01010113          	addi	sp,sp,16
    80003528:	00008067          	ret

000000008000352c <acquire>:
    8000352c:	fe010113          	addi	sp,sp,-32
    80003530:	00813823          	sd	s0,16(sp)
    80003534:	00913423          	sd	s1,8(sp)
    80003538:	00113c23          	sd	ra,24(sp)
    8000353c:	01213023          	sd	s2,0(sp)
    80003540:	02010413          	addi	s0,sp,32
    80003544:	00050493          	mv	s1,a0
    80003548:	10002973          	csrr	s2,sstatus
    8000354c:	100027f3          	csrr	a5,sstatus
    80003550:	ffd7f793          	andi	a5,a5,-3
    80003554:	10079073          	csrw	sstatus,a5
    80003558:	fffff097          	auipc	ra,0xfffff
    8000355c:	8e4080e7          	jalr	-1820(ra) # 80001e3c <mycpu>
    80003560:	07852783          	lw	a5,120(a0)
    80003564:	06078e63          	beqz	a5,800035e0 <acquire+0xb4>
    80003568:	fffff097          	auipc	ra,0xfffff
    8000356c:	8d4080e7          	jalr	-1836(ra) # 80001e3c <mycpu>
    80003570:	07852783          	lw	a5,120(a0)
    80003574:	0004a703          	lw	a4,0(s1)
    80003578:	0017879b          	addiw	a5,a5,1
    8000357c:	06f52c23          	sw	a5,120(a0)
    80003580:	04071063          	bnez	a4,800035c0 <acquire+0x94>
    80003584:	00100713          	li	a4,1
    80003588:	00070793          	mv	a5,a4
    8000358c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003590:	0007879b          	sext.w	a5,a5
    80003594:	fe079ae3          	bnez	a5,80003588 <acquire+0x5c>
    80003598:	0ff0000f          	fence
    8000359c:	fffff097          	auipc	ra,0xfffff
    800035a0:	8a0080e7          	jalr	-1888(ra) # 80001e3c <mycpu>
    800035a4:	01813083          	ld	ra,24(sp)
    800035a8:	01013403          	ld	s0,16(sp)
    800035ac:	00a4b823          	sd	a0,16(s1)
    800035b0:	00013903          	ld	s2,0(sp)
    800035b4:	00813483          	ld	s1,8(sp)
    800035b8:	02010113          	addi	sp,sp,32
    800035bc:	00008067          	ret
    800035c0:	0104b903          	ld	s2,16(s1)
    800035c4:	fffff097          	auipc	ra,0xfffff
    800035c8:	878080e7          	jalr	-1928(ra) # 80001e3c <mycpu>
    800035cc:	faa91ce3          	bne	s2,a0,80003584 <acquire+0x58>
    800035d0:	00002517          	auipc	a0,0x2
    800035d4:	c2850513          	addi	a0,a0,-984 # 800051f8 <digits+0x20>
    800035d8:	fffff097          	auipc	ra,0xfffff
    800035dc:	224080e7          	jalr	548(ra) # 800027fc <panic>
    800035e0:	00195913          	srli	s2,s2,0x1
    800035e4:	fffff097          	auipc	ra,0xfffff
    800035e8:	858080e7          	jalr	-1960(ra) # 80001e3c <mycpu>
    800035ec:	00197913          	andi	s2,s2,1
    800035f0:	07252e23          	sw	s2,124(a0)
    800035f4:	f75ff06f          	j	80003568 <acquire+0x3c>

00000000800035f8 <release>:
    800035f8:	fe010113          	addi	sp,sp,-32
    800035fc:	00813823          	sd	s0,16(sp)
    80003600:	00113c23          	sd	ra,24(sp)
    80003604:	00913423          	sd	s1,8(sp)
    80003608:	01213023          	sd	s2,0(sp)
    8000360c:	02010413          	addi	s0,sp,32
    80003610:	00052783          	lw	a5,0(a0)
    80003614:	00079a63          	bnez	a5,80003628 <release+0x30>
    80003618:	00002517          	auipc	a0,0x2
    8000361c:	be850513          	addi	a0,a0,-1048 # 80005200 <digits+0x28>
    80003620:	fffff097          	auipc	ra,0xfffff
    80003624:	1dc080e7          	jalr	476(ra) # 800027fc <panic>
    80003628:	01053903          	ld	s2,16(a0)
    8000362c:	00050493          	mv	s1,a0
    80003630:	fffff097          	auipc	ra,0xfffff
    80003634:	80c080e7          	jalr	-2036(ra) # 80001e3c <mycpu>
    80003638:	fea910e3          	bne	s2,a0,80003618 <release+0x20>
    8000363c:	0004b823          	sd	zero,16(s1)
    80003640:	0ff0000f          	fence
    80003644:	0f50000f          	fence	iorw,ow
    80003648:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000364c:	ffffe097          	auipc	ra,0xffffe
    80003650:	7f0080e7          	jalr	2032(ra) # 80001e3c <mycpu>
    80003654:	100027f3          	csrr	a5,sstatus
    80003658:	0027f793          	andi	a5,a5,2
    8000365c:	04079a63          	bnez	a5,800036b0 <release+0xb8>
    80003660:	07852783          	lw	a5,120(a0)
    80003664:	02f05e63          	blez	a5,800036a0 <release+0xa8>
    80003668:	fff7871b          	addiw	a4,a5,-1
    8000366c:	06e52c23          	sw	a4,120(a0)
    80003670:	00071c63          	bnez	a4,80003688 <release+0x90>
    80003674:	07c52783          	lw	a5,124(a0)
    80003678:	00078863          	beqz	a5,80003688 <release+0x90>
    8000367c:	100027f3          	csrr	a5,sstatus
    80003680:	0027e793          	ori	a5,a5,2
    80003684:	10079073          	csrw	sstatus,a5
    80003688:	01813083          	ld	ra,24(sp)
    8000368c:	01013403          	ld	s0,16(sp)
    80003690:	00813483          	ld	s1,8(sp)
    80003694:	00013903          	ld	s2,0(sp)
    80003698:	02010113          	addi	sp,sp,32
    8000369c:	00008067          	ret
    800036a0:	00002517          	auipc	a0,0x2
    800036a4:	b8050513          	addi	a0,a0,-1152 # 80005220 <digits+0x48>
    800036a8:	fffff097          	auipc	ra,0xfffff
    800036ac:	154080e7          	jalr	340(ra) # 800027fc <panic>
    800036b0:	00002517          	auipc	a0,0x2
    800036b4:	b5850513          	addi	a0,a0,-1192 # 80005208 <digits+0x30>
    800036b8:	fffff097          	auipc	ra,0xfffff
    800036bc:	144080e7          	jalr	324(ra) # 800027fc <panic>

00000000800036c0 <holding>:
    800036c0:	00052783          	lw	a5,0(a0)
    800036c4:	00079663          	bnez	a5,800036d0 <holding+0x10>
    800036c8:	00000513          	li	a0,0
    800036cc:	00008067          	ret
    800036d0:	fe010113          	addi	sp,sp,-32
    800036d4:	00813823          	sd	s0,16(sp)
    800036d8:	00913423          	sd	s1,8(sp)
    800036dc:	00113c23          	sd	ra,24(sp)
    800036e0:	02010413          	addi	s0,sp,32
    800036e4:	01053483          	ld	s1,16(a0)
    800036e8:	ffffe097          	auipc	ra,0xffffe
    800036ec:	754080e7          	jalr	1876(ra) # 80001e3c <mycpu>
    800036f0:	01813083          	ld	ra,24(sp)
    800036f4:	01013403          	ld	s0,16(sp)
    800036f8:	40a48533          	sub	a0,s1,a0
    800036fc:	00153513          	seqz	a0,a0
    80003700:	00813483          	ld	s1,8(sp)
    80003704:	02010113          	addi	sp,sp,32
    80003708:	00008067          	ret

000000008000370c <push_off>:
    8000370c:	fe010113          	addi	sp,sp,-32
    80003710:	00813823          	sd	s0,16(sp)
    80003714:	00113c23          	sd	ra,24(sp)
    80003718:	00913423          	sd	s1,8(sp)
    8000371c:	02010413          	addi	s0,sp,32
    80003720:	100024f3          	csrr	s1,sstatus
    80003724:	100027f3          	csrr	a5,sstatus
    80003728:	ffd7f793          	andi	a5,a5,-3
    8000372c:	10079073          	csrw	sstatus,a5
    80003730:	ffffe097          	auipc	ra,0xffffe
    80003734:	70c080e7          	jalr	1804(ra) # 80001e3c <mycpu>
    80003738:	07852783          	lw	a5,120(a0)
    8000373c:	02078663          	beqz	a5,80003768 <push_off+0x5c>
    80003740:	ffffe097          	auipc	ra,0xffffe
    80003744:	6fc080e7          	jalr	1788(ra) # 80001e3c <mycpu>
    80003748:	07852783          	lw	a5,120(a0)
    8000374c:	01813083          	ld	ra,24(sp)
    80003750:	01013403          	ld	s0,16(sp)
    80003754:	0017879b          	addiw	a5,a5,1
    80003758:	06f52c23          	sw	a5,120(a0)
    8000375c:	00813483          	ld	s1,8(sp)
    80003760:	02010113          	addi	sp,sp,32
    80003764:	00008067          	ret
    80003768:	0014d493          	srli	s1,s1,0x1
    8000376c:	ffffe097          	auipc	ra,0xffffe
    80003770:	6d0080e7          	jalr	1744(ra) # 80001e3c <mycpu>
    80003774:	0014f493          	andi	s1,s1,1
    80003778:	06952e23          	sw	s1,124(a0)
    8000377c:	fc5ff06f          	j	80003740 <push_off+0x34>

0000000080003780 <pop_off>:
    80003780:	ff010113          	addi	sp,sp,-16
    80003784:	00813023          	sd	s0,0(sp)
    80003788:	00113423          	sd	ra,8(sp)
    8000378c:	01010413          	addi	s0,sp,16
    80003790:	ffffe097          	auipc	ra,0xffffe
    80003794:	6ac080e7          	jalr	1708(ra) # 80001e3c <mycpu>
    80003798:	100027f3          	csrr	a5,sstatus
    8000379c:	0027f793          	andi	a5,a5,2
    800037a0:	04079663          	bnez	a5,800037ec <pop_off+0x6c>
    800037a4:	07852783          	lw	a5,120(a0)
    800037a8:	02f05a63          	blez	a5,800037dc <pop_off+0x5c>
    800037ac:	fff7871b          	addiw	a4,a5,-1
    800037b0:	06e52c23          	sw	a4,120(a0)
    800037b4:	00071c63          	bnez	a4,800037cc <pop_off+0x4c>
    800037b8:	07c52783          	lw	a5,124(a0)
    800037bc:	00078863          	beqz	a5,800037cc <pop_off+0x4c>
    800037c0:	100027f3          	csrr	a5,sstatus
    800037c4:	0027e793          	ori	a5,a5,2
    800037c8:	10079073          	csrw	sstatus,a5
    800037cc:	00813083          	ld	ra,8(sp)
    800037d0:	00013403          	ld	s0,0(sp)
    800037d4:	01010113          	addi	sp,sp,16
    800037d8:	00008067          	ret
    800037dc:	00002517          	auipc	a0,0x2
    800037e0:	a4450513          	addi	a0,a0,-1468 # 80005220 <digits+0x48>
    800037e4:	fffff097          	auipc	ra,0xfffff
    800037e8:	018080e7          	jalr	24(ra) # 800027fc <panic>
    800037ec:	00002517          	auipc	a0,0x2
    800037f0:	a1c50513          	addi	a0,a0,-1508 # 80005208 <digits+0x30>
    800037f4:	fffff097          	auipc	ra,0xfffff
    800037f8:	008080e7          	jalr	8(ra) # 800027fc <panic>

00000000800037fc <push_on>:
    800037fc:	fe010113          	addi	sp,sp,-32
    80003800:	00813823          	sd	s0,16(sp)
    80003804:	00113c23          	sd	ra,24(sp)
    80003808:	00913423          	sd	s1,8(sp)
    8000380c:	02010413          	addi	s0,sp,32
    80003810:	100024f3          	csrr	s1,sstatus
    80003814:	100027f3          	csrr	a5,sstatus
    80003818:	0027e793          	ori	a5,a5,2
    8000381c:	10079073          	csrw	sstatus,a5
    80003820:	ffffe097          	auipc	ra,0xffffe
    80003824:	61c080e7          	jalr	1564(ra) # 80001e3c <mycpu>
    80003828:	07852783          	lw	a5,120(a0)
    8000382c:	02078663          	beqz	a5,80003858 <push_on+0x5c>
    80003830:	ffffe097          	auipc	ra,0xffffe
    80003834:	60c080e7          	jalr	1548(ra) # 80001e3c <mycpu>
    80003838:	07852783          	lw	a5,120(a0)
    8000383c:	01813083          	ld	ra,24(sp)
    80003840:	01013403          	ld	s0,16(sp)
    80003844:	0017879b          	addiw	a5,a5,1
    80003848:	06f52c23          	sw	a5,120(a0)
    8000384c:	00813483          	ld	s1,8(sp)
    80003850:	02010113          	addi	sp,sp,32
    80003854:	00008067          	ret
    80003858:	0014d493          	srli	s1,s1,0x1
    8000385c:	ffffe097          	auipc	ra,0xffffe
    80003860:	5e0080e7          	jalr	1504(ra) # 80001e3c <mycpu>
    80003864:	0014f493          	andi	s1,s1,1
    80003868:	06952e23          	sw	s1,124(a0)
    8000386c:	fc5ff06f          	j	80003830 <push_on+0x34>

0000000080003870 <pop_on>:
    80003870:	ff010113          	addi	sp,sp,-16
    80003874:	00813023          	sd	s0,0(sp)
    80003878:	00113423          	sd	ra,8(sp)
    8000387c:	01010413          	addi	s0,sp,16
    80003880:	ffffe097          	auipc	ra,0xffffe
    80003884:	5bc080e7          	jalr	1468(ra) # 80001e3c <mycpu>
    80003888:	100027f3          	csrr	a5,sstatus
    8000388c:	0027f793          	andi	a5,a5,2
    80003890:	04078463          	beqz	a5,800038d8 <pop_on+0x68>
    80003894:	07852783          	lw	a5,120(a0)
    80003898:	02f05863          	blez	a5,800038c8 <pop_on+0x58>
    8000389c:	fff7879b          	addiw	a5,a5,-1
    800038a0:	06f52c23          	sw	a5,120(a0)
    800038a4:	07853783          	ld	a5,120(a0)
    800038a8:	00079863          	bnez	a5,800038b8 <pop_on+0x48>
    800038ac:	100027f3          	csrr	a5,sstatus
    800038b0:	ffd7f793          	andi	a5,a5,-3
    800038b4:	10079073          	csrw	sstatus,a5
    800038b8:	00813083          	ld	ra,8(sp)
    800038bc:	00013403          	ld	s0,0(sp)
    800038c0:	01010113          	addi	sp,sp,16
    800038c4:	00008067          	ret
    800038c8:	00002517          	auipc	a0,0x2
    800038cc:	98050513          	addi	a0,a0,-1664 # 80005248 <digits+0x70>
    800038d0:	fffff097          	auipc	ra,0xfffff
    800038d4:	f2c080e7          	jalr	-212(ra) # 800027fc <panic>
    800038d8:	00002517          	auipc	a0,0x2
    800038dc:	95050513          	addi	a0,a0,-1712 # 80005228 <digits+0x50>
    800038e0:	fffff097          	auipc	ra,0xfffff
    800038e4:	f1c080e7          	jalr	-228(ra) # 800027fc <panic>

00000000800038e8 <__memset>:
    800038e8:	ff010113          	addi	sp,sp,-16
    800038ec:	00813423          	sd	s0,8(sp)
    800038f0:	01010413          	addi	s0,sp,16
    800038f4:	1a060e63          	beqz	a2,80003ab0 <__memset+0x1c8>
    800038f8:	40a007b3          	neg	a5,a0
    800038fc:	0077f793          	andi	a5,a5,7
    80003900:	00778693          	addi	a3,a5,7
    80003904:	00b00813          	li	a6,11
    80003908:	0ff5f593          	andi	a1,a1,255
    8000390c:	fff6071b          	addiw	a4,a2,-1
    80003910:	1b06e663          	bltu	a3,a6,80003abc <__memset+0x1d4>
    80003914:	1cd76463          	bltu	a4,a3,80003adc <__memset+0x1f4>
    80003918:	1a078e63          	beqz	a5,80003ad4 <__memset+0x1ec>
    8000391c:	00b50023          	sb	a1,0(a0)
    80003920:	00100713          	li	a4,1
    80003924:	1ae78463          	beq	a5,a4,80003acc <__memset+0x1e4>
    80003928:	00b500a3          	sb	a1,1(a0)
    8000392c:	00200713          	li	a4,2
    80003930:	1ae78a63          	beq	a5,a4,80003ae4 <__memset+0x1fc>
    80003934:	00b50123          	sb	a1,2(a0)
    80003938:	00300713          	li	a4,3
    8000393c:	18e78463          	beq	a5,a4,80003ac4 <__memset+0x1dc>
    80003940:	00b501a3          	sb	a1,3(a0)
    80003944:	00400713          	li	a4,4
    80003948:	1ae78263          	beq	a5,a4,80003aec <__memset+0x204>
    8000394c:	00b50223          	sb	a1,4(a0)
    80003950:	00500713          	li	a4,5
    80003954:	1ae78063          	beq	a5,a4,80003af4 <__memset+0x20c>
    80003958:	00b502a3          	sb	a1,5(a0)
    8000395c:	00700713          	li	a4,7
    80003960:	18e79e63          	bne	a5,a4,80003afc <__memset+0x214>
    80003964:	00b50323          	sb	a1,6(a0)
    80003968:	00700e93          	li	t4,7
    8000396c:	00859713          	slli	a4,a1,0x8
    80003970:	00e5e733          	or	a4,a1,a4
    80003974:	01059e13          	slli	t3,a1,0x10
    80003978:	01c76e33          	or	t3,a4,t3
    8000397c:	01859313          	slli	t1,a1,0x18
    80003980:	006e6333          	or	t1,t3,t1
    80003984:	02059893          	slli	a7,a1,0x20
    80003988:	40f60e3b          	subw	t3,a2,a5
    8000398c:	011368b3          	or	a7,t1,a7
    80003990:	02859813          	slli	a6,a1,0x28
    80003994:	0108e833          	or	a6,a7,a6
    80003998:	03059693          	slli	a3,a1,0x30
    8000399c:	003e589b          	srliw	a7,t3,0x3
    800039a0:	00d866b3          	or	a3,a6,a3
    800039a4:	03859713          	slli	a4,a1,0x38
    800039a8:	00389813          	slli	a6,a7,0x3
    800039ac:	00f507b3          	add	a5,a0,a5
    800039b0:	00e6e733          	or	a4,a3,a4
    800039b4:	000e089b          	sext.w	a7,t3
    800039b8:	00f806b3          	add	a3,a6,a5
    800039bc:	00e7b023          	sd	a4,0(a5)
    800039c0:	00878793          	addi	a5,a5,8
    800039c4:	fed79ce3          	bne	a5,a3,800039bc <__memset+0xd4>
    800039c8:	ff8e7793          	andi	a5,t3,-8
    800039cc:	0007871b          	sext.w	a4,a5
    800039d0:	01d787bb          	addw	a5,a5,t4
    800039d4:	0ce88e63          	beq	a7,a4,80003ab0 <__memset+0x1c8>
    800039d8:	00f50733          	add	a4,a0,a5
    800039dc:	00b70023          	sb	a1,0(a4)
    800039e0:	0017871b          	addiw	a4,a5,1
    800039e4:	0cc77663          	bgeu	a4,a2,80003ab0 <__memset+0x1c8>
    800039e8:	00e50733          	add	a4,a0,a4
    800039ec:	00b70023          	sb	a1,0(a4)
    800039f0:	0027871b          	addiw	a4,a5,2
    800039f4:	0ac77e63          	bgeu	a4,a2,80003ab0 <__memset+0x1c8>
    800039f8:	00e50733          	add	a4,a0,a4
    800039fc:	00b70023          	sb	a1,0(a4)
    80003a00:	0037871b          	addiw	a4,a5,3
    80003a04:	0ac77663          	bgeu	a4,a2,80003ab0 <__memset+0x1c8>
    80003a08:	00e50733          	add	a4,a0,a4
    80003a0c:	00b70023          	sb	a1,0(a4)
    80003a10:	0047871b          	addiw	a4,a5,4
    80003a14:	08c77e63          	bgeu	a4,a2,80003ab0 <__memset+0x1c8>
    80003a18:	00e50733          	add	a4,a0,a4
    80003a1c:	00b70023          	sb	a1,0(a4)
    80003a20:	0057871b          	addiw	a4,a5,5
    80003a24:	08c77663          	bgeu	a4,a2,80003ab0 <__memset+0x1c8>
    80003a28:	00e50733          	add	a4,a0,a4
    80003a2c:	00b70023          	sb	a1,0(a4)
    80003a30:	0067871b          	addiw	a4,a5,6
    80003a34:	06c77e63          	bgeu	a4,a2,80003ab0 <__memset+0x1c8>
    80003a38:	00e50733          	add	a4,a0,a4
    80003a3c:	00b70023          	sb	a1,0(a4)
    80003a40:	0077871b          	addiw	a4,a5,7
    80003a44:	06c77663          	bgeu	a4,a2,80003ab0 <__memset+0x1c8>
    80003a48:	00e50733          	add	a4,a0,a4
    80003a4c:	00b70023          	sb	a1,0(a4)
    80003a50:	0087871b          	addiw	a4,a5,8
    80003a54:	04c77e63          	bgeu	a4,a2,80003ab0 <__memset+0x1c8>
    80003a58:	00e50733          	add	a4,a0,a4
    80003a5c:	00b70023          	sb	a1,0(a4)
    80003a60:	0097871b          	addiw	a4,a5,9
    80003a64:	04c77663          	bgeu	a4,a2,80003ab0 <__memset+0x1c8>
    80003a68:	00e50733          	add	a4,a0,a4
    80003a6c:	00b70023          	sb	a1,0(a4)
    80003a70:	00a7871b          	addiw	a4,a5,10
    80003a74:	02c77e63          	bgeu	a4,a2,80003ab0 <__memset+0x1c8>
    80003a78:	00e50733          	add	a4,a0,a4
    80003a7c:	00b70023          	sb	a1,0(a4)
    80003a80:	00b7871b          	addiw	a4,a5,11
    80003a84:	02c77663          	bgeu	a4,a2,80003ab0 <__memset+0x1c8>
    80003a88:	00e50733          	add	a4,a0,a4
    80003a8c:	00b70023          	sb	a1,0(a4)
    80003a90:	00c7871b          	addiw	a4,a5,12
    80003a94:	00c77e63          	bgeu	a4,a2,80003ab0 <__memset+0x1c8>
    80003a98:	00e50733          	add	a4,a0,a4
    80003a9c:	00b70023          	sb	a1,0(a4)
    80003aa0:	00d7879b          	addiw	a5,a5,13
    80003aa4:	00c7f663          	bgeu	a5,a2,80003ab0 <__memset+0x1c8>
    80003aa8:	00f507b3          	add	a5,a0,a5
    80003aac:	00b78023          	sb	a1,0(a5)
    80003ab0:	00813403          	ld	s0,8(sp)
    80003ab4:	01010113          	addi	sp,sp,16
    80003ab8:	00008067          	ret
    80003abc:	00b00693          	li	a3,11
    80003ac0:	e55ff06f          	j	80003914 <__memset+0x2c>
    80003ac4:	00300e93          	li	t4,3
    80003ac8:	ea5ff06f          	j	8000396c <__memset+0x84>
    80003acc:	00100e93          	li	t4,1
    80003ad0:	e9dff06f          	j	8000396c <__memset+0x84>
    80003ad4:	00000e93          	li	t4,0
    80003ad8:	e95ff06f          	j	8000396c <__memset+0x84>
    80003adc:	00000793          	li	a5,0
    80003ae0:	ef9ff06f          	j	800039d8 <__memset+0xf0>
    80003ae4:	00200e93          	li	t4,2
    80003ae8:	e85ff06f          	j	8000396c <__memset+0x84>
    80003aec:	00400e93          	li	t4,4
    80003af0:	e7dff06f          	j	8000396c <__memset+0x84>
    80003af4:	00500e93          	li	t4,5
    80003af8:	e75ff06f          	j	8000396c <__memset+0x84>
    80003afc:	00600e93          	li	t4,6
    80003b00:	e6dff06f          	j	8000396c <__memset+0x84>

0000000080003b04 <__memmove>:
    80003b04:	ff010113          	addi	sp,sp,-16
    80003b08:	00813423          	sd	s0,8(sp)
    80003b0c:	01010413          	addi	s0,sp,16
    80003b10:	0e060863          	beqz	a2,80003c00 <__memmove+0xfc>
    80003b14:	fff6069b          	addiw	a3,a2,-1
    80003b18:	0006881b          	sext.w	a6,a3
    80003b1c:	0ea5e863          	bltu	a1,a0,80003c0c <__memmove+0x108>
    80003b20:	00758713          	addi	a4,a1,7
    80003b24:	00a5e7b3          	or	a5,a1,a0
    80003b28:	40a70733          	sub	a4,a4,a0
    80003b2c:	0077f793          	andi	a5,a5,7
    80003b30:	00f73713          	sltiu	a4,a4,15
    80003b34:	00174713          	xori	a4,a4,1
    80003b38:	0017b793          	seqz	a5,a5
    80003b3c:	00e7f7b3          	and	a5,a5,a4
    80003b40:	10078863          	beqz	a5,80003c50 <__memmove+0x14c>
    80003b44:	00900793          	li	a5,9
    80003b48:	1107f463          	bgeu	a5,a6,80003c50 <__memmove+0x14c>
    80003b4c:	0036581b          	srliw	a6,a2,0x3
    80003b50:	fff8081b          	addiw	a6,a6,-1
    80003b54:	02081813          	slli	a6,a6,0x20
    80003b58:	01d85893          	srli	a7,a6,0x1d
    80003b5c:	00858813          	addi	a6,a1,8
    80003b60:	00058793          	mv	a5,a1
    80003b64:	00050713          	mv	a4,a0
    80003b68:	01088833          	add	a6,a7,a6
    80003b6c:	0007b883          	ld	a7,0(a5)
    80003b70:	00878793          	addi	a5,a5,8
    80003b74:	00870713          	addi	a4,a4,8
    80003b78:	ff173c23          	sd	a7,-8(a4)
    80003b7c:	ff0798e3          	bne	a5,a6,80003b6c <__memmove+0x68>
    80003b80:	ff867713          	andi	a4,a2,-8
    80003b84:	02071793          	slli	a5,a4,0x20
    80003b88:	0207d793          	srli	a5,a5,0x20
    80003b8c:	00f585b3          	add	a1,a1,a5
    80003b90:	40e686bb          	subw	a3,a3,a4
    80003b94:	00f507b3          	add	a5,a0,a5
    80003b98:	06e60463          	beq	a2,a4,80003c00 <__memmove+0xfc>
    80003b9c:	0005c703          	lbu	a4,0(a1)
    80003ba0:	00e78023          	sb	a4,0(a5)
    80003ba4:	04068e63          	beqz	a3,80003c00 <__memmove+0xfc>
    80003ba8:	0015c603          	lbu	a2,1(a1)
    80003bac:	00100713          	li	a4,1
    80003bb0:	00c780a3          	sb	a2,1(a5)
    80003bb4:	04e68663          	beq	a3,a4,80003c00 <__memmove+0xfc>
    80003bb8:	0025c603          	lbu	a2,2(a1)
    80003bbc:	00200713          	li	a4,2
    80003bc0:	00c78123          	sb	a2,2(a5)
    80003bc4:	02e68e63          	beq	a3,a4,80003c00 <__memmove+0xfc>
    80003bc8:	0035c603          	lbu	a2,3(a1)
    80003bcc:	00300713          	li	a4,3
    80003bd0:	00c781a3          	sb	a2,3(a5)
    80003bd4:	02e68663          	beq	a3,a4,80003c00 <__memmove+0xfc>
    80003bd8:	0045c603          	lbu	a2,4(a1)
    80003bdc:	00400713          	li	a4,4
    80003be0:	00c78223          	sb	a2,4(a5)
    80003be4:	00e68e63          	beq	a3,a4,80003c00 <__memmove+0xfc>
    80003be8:	0055c603          	lbu	a2,5(a1)
    80003bec:	00500713          	li	a4,5
    80003bf0:	00c782a3          	sb	a2,5(a5)
    80003bf4:	00e68663          	beq	a3,a4,80003c00 <__memmove+0xfc>
    80003bf8:	0065c703          	lbu	a4,6(a1)
    80003bfc:	00e78323          	sb	a4,6(a5)
    80003c00:	00813403          	ld	s0,8(sp)
    80003c04:	01010113          	addi	sp,sp,16
    80003c08:	00008067          	ret
    80003c0c:	02061713          	slli	a4,a2,0x20
    80003c10:	02075713          	srli	a4,a4,0x20
    80003c14:	00e587b3          	add	a5,a1,a4
    80003c18:	f0f574e3          	bgeu	a0,a5,80003b20 <__memmove+0x1c>
    80003c1c:	02069613          	slli	a2,a3,0x20
    80003c20:	02065613          	srli	a2,a2,0x20
    80003c24:	fff64613          	not	a2,a2
    80003c28:	00e50733          	add	a4,a0,a4
    80003c2c:	00c78633          	add	a2,a5,a2
    80003c30:	fff7c683          	lbu	a3,-1(a5)
    80003c34:	fff78793          	addi	a5,a5,-1
    80003c38:	fff70713          	addi	a4,a4,-1
    80003c3c:	00d70023          	sb	a3,0(a4)
    80003c40:	fec798e3          	bne	a5,a2,80003c30 <__memmove+0x12c>
    80003c44:	00813403          	ld	s0,8(sp)
    80003c48:	01010113          	addi	sp,sp,16
    80003c4c:	00008067          	ret
    80003c50:	02069713          	slli	a4,a3,0x20
    80003c54:	02075713          	srli	a4,a4,0x20
    80003c58:	00170713          	addi	a4,a4,1
    80003c5c:	00e50733          	add	a4,a0,a4
    80003c60:	00050793          	mv	a5,a0
    80003c64:	0005c683          	lbu	a3,0(a1)
    80003c68:	00178793          	addi	a5,a5,1
    80003c6c:	00158593          	addi	a1,a1,1
    80003c70:	fed78fa3          	sb	a3,-1(a5)
    80003c74:	fee798e3          	bne	a5,a4,80003c64 <__memmove+0x160>
    80003c78:	f89ff06f          	j	80003c00 <__memmove+0xfc>

0000000080003c7c <__mem_free>:
    80003c7c:	ff010113          	addi	sp,sp,-16
    80003c80:	00813423          	sd	s0,8(sp)
    80003c84:	01010413          	addi	s0,sp,16
    80003c88:	00002597          	auipc	a1,0x2
    80003c8c:	ad858593          	addi	a1,a1,-1320 # 80005760 <freep>
    80003c90:	0005b783          	ld	a5,0(a1)
    80003c94:	ff050693          	addi	a3,a0,-16
    80003c98:	0007b703          	ld	a4,0(a5)
    80003c9c:	00d7fc63          	bgeu	a5,a3,80003cb4 <__mem_free+0x38>
    80003ca0:	00e6ee63          	bltu	a3,a4,80003cbc <__mem_free+0x40>
    80003ca4:	00e7fc63          	bgeu	a5,a4,80003cbc <__mem_free+0x40>
    80003ca8:	00070793          	mv	a5,a4
    80003cac:	0007b703          	ld	a4,0(a5)
    80003cb0:	fed7e8e3          	bltu	a5,a3,80003ca0 <__mem_free+0x24>
    80003cb4:	fee7eae3          	bltu	a5,a4,80003ca8 <__mem_free+0x2c>
    80003cb8:	fee6f8e3          	bgeu	a3,a4,80003ca8 <__mem_free+0x2c>
    80003cbc:	ff852803          	lw	a6,-8(a0)
    80003cc0:	02081613          	slli	a2,a6,0x20
    80003cc4:	01c65613          	srli	a2,a2,0x1c
    80003cc8:	00c68633          	add	a2,a3,a2
    80003ccc:	02c70a63          	beq	a4,a2,80003d00 <__mem_free+0x84>
    80003cd0:	fee53823          	sd	a4,-16(a0)
    80003cd4:	0087a503          	lw	a0,8(a5)
    80003cd8:	02051613          	slli	a2,a0,0x20
    80003cdc:	01c65613          	srli	a2,a2,0x1c
    80003ce0:	00c78633          	add	a2,a5,a2
    80003ce4:	04c68263          	beq	a3,a2,80003d28 <__mem_free+0xac>
    80003ce8:	00813403          	ld	s0,8(sp)
    80003cec:	00d7b023          	sd	a3,0(a5)
    80003cf0:	00f5b023          	sd	a5,0(a1)
    80003cf4:	00000513          	li	a0,0
    80003cf8:	01010113          	addi	sp,sp,16
    80003cfc:	00008067          	ret
    80003d00:	00872603          	lw	a2,8(a4)
    80003d04:	00073703          	ld	a4,0(a4)
    80003d08:	0106083b          	addw	a6,a2,a6
    80003d0c:	ff052c23          	sw	a6,-8(a0)
    80003d10:	fee53823          	sd	a4,-16(a0)
    80003d14:	0087a503          	lw	a0,8(a5)
    80003d18:	02051613          	slli	a2,a0,0x20
    80003d1c:	01c65613          	srli	a2,a2,0x1c
    80003d20:	00c78633          	add	a2,a5,a2
    80003d24:	fcc692e3          	bne	a3,a2,80003ce8 <__mem_free+0x6c>
    80003d28:	00813403          	ld	s0,8(sp)
    80003d2c:	0105053b          	addw	a0,a0,a6
    80003d30:	00a7a423          	sw	a0,8(a5)
    80003d34:	00e7b023          	sd	a4,0(a5)
    80003d38:	00f5b023          	sd	a5,0(a1)
    80003d3c:	00000513          	li	a0,0
    80003d40:	01010113          	addi	sp,sp,16
    80003d44:	00008067          	ret

0000000080003d48 <__mem_alloc>:
    80003d48:	fc010113          	addi	sp,sp,-64
    80003d4c:	02813823          	sd	s0,48(sp)
    80003d50:	02913423          	sd	s1,40(sp)
    80003d54:	03213023          	sd	s2,32(sp)
    80003d58:	01513423          	sd	s5,8(sp)
    80003d5c:	02113c23          	sd	ra,56(sp)
    80003d60:	01313c23          	sd	s3,24(sp)
    80003d64:	01413823          	sd	s4,16(sp)
    80003d68:	01613023          	sd	s6,0(sp)
    80003d6c:	04010413          	addi	s0,sp,64
    80003d70:	00002a97          	auipc	s5,0x2
    80003d74:	9f0a8a93          	addi	s5,s5,-1552 # 80005760 <freep>
    80003d78:	00f50913          	addi	s2,a0,15
    80003d7c:	000ab683          	ld	a3,0(s5)
    80003d80:	00495913          	srli	s2,s2,0x4
    80003d84:	0019049b          	addiw	s1,s2,1
    80003d88:	00048913          	mv	s2,s1
    80003d8c:	0c068c63          	beqz	a3,80003e64 <__mem_alloc+0x11c>
    80003d90:	0006b503          	ld	a0,0(a3)
    80003d94:	00852703          	lw	a4,8(a0)
    80003d98:	10977063          	bgeu	a4,s1,80003e98 <__mem_alloc+0x150>
    80003d9c:	000017b7          	lui	a5,0x1
    80003da0:	0009099b          	sext.w	s3,s2
    80003da4:	0af4e863          	bltu	s1,a5,80003e54 <__mem_alloc+0x10c>
    80003da8:	02099a13          	slli	s4,s3,0x20
    80003dac:	01ca5a13          	srli	s4,s4,0x1c
    80003db0:	fff00b13          	li	s6,-1
    80003db4:	0100006f          	j	80003dc4 <__mem_alloc+0x7c>
    80003db8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80003dbc:	00852703          	lw	a4,8(a0)
    80003dc0:	04977463          	bgeu	a4,s1,80003e08 <__mem_alloc+0xc0>
    80003dc4:	00050793          	mv	a5,a0
    80003dc8:	fea698e3          	bne	a3,a0,80003db8 <__mem_alloc+0x70>
    80003dcc:	000a0513          	mv	a0,s4
    80003dd0:	00000097          	auipc	ra,0x0
    80003dd4:	1f0080e7          	jalr	496(ra) # 80003fc0 <kvmincrease>
    80003dd8:	00050793          	mv	a5,a0
    80003ddc:	01050513          	addi	a0,a0,16
    80003de0:	07678e63          	beq	a5,s6,80003e5c <__mem_alloc+0x114>
    80003de4:	0137a423          	sw	s3,8(a5)
    80003de8:	00000097          	auipc	ra,0x0
    80003dec:	e94080e7          	jalr	-364(ra) # 80003c7c <__mem_free>
    80003df0:	000ab783          	ld	a5,0(s5)
    80003df4:	06078463          	beqz	a5,80003e5c <__mem_alloc+0x114>
    80003df8:	0007b503          	ld	a0,0(a5)
    80003dfc:	00078693          	mv	a3,a5
    80003e00:	00852703          	lw	a4,8(a0)
    80003e04:	fc9760e3          	bltu	a4,s1,80003dc4 <__mem_alloc+0x7c>
    80003e08:	08e48263          	beq	s1,a4,80003e8c <__mem_alloc+0x144>
    80003e0c:	4127073b          	subw	a4,a4,s2
    80003e10:	02071693          	slli	a3,a4,0x20
    80003e14:	01c6d693          	srli	a3,a3,0x1c
    80003e18:	00e52423          	sw	a4,8(a0)
    80003e1c:	00d50533          	add	a0,a0,a3
    80003e20:	01252423          	sw	s2,8(a0)
    80003e24:	00fab023          	sd	a5,0(s5)
    80003e28:	01050513          	addi	a0,a0,16
    80003e2c:	03813083          	ld	ra,56(sp)
    80003e30:	03013403          	ld	s0,48(sp)
    80003e34:	02813483          	ld	s1,40(sp)
    80003e38:	02013903          	ld	s2,32(sp)
    80003e3c:	01813983          	ld	s3,24(sp)
    80003e40:	01013a03          	ld	s4,16(sp)
    80003e44:	00813a83          	ld	s5,8(sp)
    80003e48:	00013b03          	ld	s6,0(sp)
    80003e4c:	04010113          	addi	sp,sp,64
    80003e50:	00008067          	ret
    80003e54:	000019b7          	lui	s3,0x1
    80003e58:	f51ff06f          	j	80003da8 <__mem_alloc+0x60>
    80003e5c:	00000513          	li	a0,0
    80003e60:	fcdff06f          	j	80003e2c <__mem_alloc+0xe4>
    80003e64:	00003797          	auipc	a5,0x3
    80003e68:	b7c78793          	addi	a5,a5,-1156 # 800069e0 <base>
    80003e6c:	00078513          	mv	a0,a5
    80003e70:	00fab023          	sd	a5,0(s5)
    80003e74:	00f7b023          	sd	a5,0(a5)
    80003e78:	00000713          	li	a4,0
    80003e7c:	00003797          	auipc	a5,0x3
    80003e80:	b607a623          	sw	zero,-1172(a5) # 800069e8 <base+0x8>
    80003e84:	00050693          	mv	a3,a0
    80003e88:	f11ff06f          	j	80003d98 <__mem_alloc+0x50>
    80003e8c:	00053703          	ld	a4,0(a0)
    80003e90:	00e7b023          	sd	a4,0(a5)
    80003e94:	f91ff06f          	j	80003e24 <__mem_alloc+0xdc>
    80003e98:	00068793          	mv	a5,a3
    80003e9c:	f6dff06f          	j	80003e08 <__mem_alloc+0xc0>

0000000080003ea0 <__putc>:
    80003ea0:	fe010113          	addi	sp,sp,-32
    80003ea4:	00813823          	sd	s0,16(sp)
    80003ea8:	00113c23          	sd	ra,24(sp)
    80003eac:	02010413          	addi	s0,sp,32
    80003eb0:	00050793          	mv	a5,a0
    80003eb4:	fef40593          	addi	a1,s0,-17
    80003eb8:	00100613          	li	a2,1
    80003ebc:	00000513          	li	a0,0
    80003ec0:	fef407a3          	sb	a5,-17(s0)
    80003ec4:	fffff097          	auipc	ra,0xfffff
    80003ec8:	918080e7          	jalr	-1768(ra) # 800027dc <console_write>
    80003ecc:	01813083          	ld	ra,24(sp)
    80003ed0:	01013403          	ld	s0,16(sp)
    80003ed4:	02010113          	addi	sp,sp,32
    80003ed8:	00008067          	ret

0000000080003edc <__getc>:
    80003edc:	fe010113          	addi	sp,sp,-32
    80003ee0:	00813823          	sd	s0,16(sp)
    80003ee4:	00113c23          	sd	ra,24(sp)
    80003ee8:	02010413          	addi	s0,sp,32
    80003eec:	fe840593          	addi	a1,s0,-24
    80003ef0:	00100613          	li	a2,1
    80003ef4:	00000513          	li	a0,0
    80003ef8:	fffff097          	auipc	ra,0xfffff
    80003efc:	8c4080e7          	jalr	-1852(ra) # 800027bc <console_read>
    80003f00:	fe844503          	lbu	a0,-24(s0)
    80003f04:	01813083          	ld	ra,24(sp)
    80003f08:	01013403          	ld	s0,16(sp)
    80003f0c:	02010113          	addi	sp,sp,32
    80003f10:	00008067          	ret

0000000080003f14 <console_handler>:
    80003f14:	fe010113          	addi	sp,sp,-32
    80003f18:	00813823          	sd	s0,16(sp)
    80003f1c:	00113c23          	sd	ra,24(sp)
    80003f20:	00913423          	sd	s1,8(sp)
    80003f24:	02010413          	addi	s0,sp,32
    80003f28:	14202773          	csrr	a4,scause
    80003f2c:	100027f3          	csrr	a5,sstatus
    80003f30:	0027f793          	andi	a5,a5,2
    80003f34:	06079e63          	bnez	a5,80003fb0 <console_handler+0x9c>
    80003f38:	00074c63          	bltz	a4,80003f50 <console_handler+0x3c>
    80003f3c:	01813083          	ld	ra,24(sp)
    80003f40:	01013403          	ld	s0,16(sp)
    80003f44:	00813483          	ld	s1,8(sp)
    80003f48:	02010113          	addi	sp,sp,32
    80003f4c:	00008067          	ret
    80003f50:	0ff77713          	andi	a4,a4,255
    80003f54:	00900793          	li	a5,9
    80003f58:	fef712e3          	bne	a4,a5,80003f3c <console_handler+0x28>
    80003f5c:	ffffe097          	auipc	ra,0xffffe
    80003f60:	4b8080e7          	jalr	1208(ra) # 80002414 <plic_claim>
    80003f64:	00a00793          	li	a5,10
    80003f68:	00050493          	mv	s1,a0
    80003f6c:	02f50c63          	beq	a0,a5,80003fa4 <console_handler+0x90>
    80003f70:	fc0506e3          	beqz	a0,80003f3c <console_handler+0x28>
    80003f74:	00050593          	mv	a1,a0
    80003f78:	00001517          	auipc	a0,0x1
    80003f7c:	1d850513          	addi	a0,a0,472 # 80005150 <_ZZ12printIntegermE6digits+0xf0>
    80003f80:	fffff097          	auipc	ra,0xfffff
    80003f84:	8d8080e7          	jalr	-1832(ra) # 80002858 <__printf>
    80003f88:	01013403          	ld	s0,16(sp)
    80003f8c:	01813083          	ld	ra,24(sp)
    80003f90:	00048513          	mv	a0,s1
    80003f94:	00813483          	ld	s1,8(sp)
    80003f98:	02010113          	addi	sp,sp,32
    80003f9c:	ffffe317          	auipc	t1,0xffffe
    80003fa0:	4b030067          	jr	1200(t1) # 8000244c <plic_complete>
    80003fa4:	fffff097          	auipc	ra,0xfffff
    80003fa8:	1bc080e7          	jalr	444(ra) # 80003160 <uartintr>
    80003fac:	fddff06f          	j	80003f88 <console_handler+0x74>
    80003fb0:	00001517          	auipc	a0,0x1
    80003fb4:	2a050513          	addi	a0,a0,672 # 80005250 <digits+0x78>
    80003fb8:	fffff097          	auipc	ra,0xfffff
    80003fbc:	844080e7          	jalr	-1980(ra) # 800027fc <panic>

0000000080003fc0 <kvmincrease>:
    80003fc0:	fe010113          	addi	sp,sp,-32
    80003fc4:	01213023          	sd	s2,0(sp)
    80003fc8:	00001937          	lui	s2,0x1
    80003fcc:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80003fd0:	00813823          	sd	s0,16(sp)
    80003fd4:	00113c23          	sd	ra,24(sp)
    80003fd8:	00913423          	sd	s1,8(sp)
    80003fdc:	02010413          	addi	s0,sp,32
    80003fe0:	01250933          	add	s2,a0,s2
    80003fe4:	00c95913          	srli	s2,s2,0xc
    80003fe8:	02090863          	beqz	s2,80004018 <kvmincrease+0x58>
    80003fec:	00000493          	li	s1,0
    80003ff0:	00148493          	addi	s1,s1,1
    80003ff4:	fffff097          	auipc	ra,0xfffff
    80003ff8:	4bc080e7          	jalr	1212(ra) # 800034b0 <kalloc>
    80003ffc:	fe991ae3          	bne	s2,s1,80003ff0 <kvmincrease+0x30>
    80004000:	01813083          	ld	ra,24(sp)
    80004004:	01013403          	ld	s0,16(sp)
    80004008:	00813483          	ld	s1,8(sp)
    8000400c:	00013903          	ld	s2,0(sp)
    80004010:	02010113          	addi	sp,sp,32
    80004014:	00008067          	ret
    80004018:	01813083          	ld	ra,24(sp)
    8000401c:	01013403          	ld	s0,16(sp)
    80004020:	00813483          	ld	s1,8(sp)
    80004024:	00013903          	ld	s2,0(sp)
    80004028:	00000513          	li	a0,0
    8000402c:	02010113          	addi	sp,sp,32
    80004030:	00008067          	ret
	...
