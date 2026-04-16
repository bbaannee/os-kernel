
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	c2813103          	ld	sp,-984(sp) # 80005c28 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	754020ef          	jal	ra,80002770 <start>

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
     .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
     sd x\index, \index * 8(sp)
     .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

     call _ZN5Riscv20handleSupervisorTrapEmmmmmmmm
    80001084:	051000ef          	jal	ra,800018d4 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm>

     # pop all registers from stack
     .irp index, 0,1,2,3,4,5,6,7,8,9/*,10*/,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
     ld x\index, \index * 8(sp)
     .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
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

0000000080001124 <_ZN6BufferC1Ev>:
#include "../h/Buffer.h"
#include "../h/Semaphore.h"

Buffer::Buffer(): count(0), head(0), tail(0){
    80001124:	ff010113          	addi	sp,sp,-16
    80001128:	00813423          	sd	s0,8(sp)
    8000112c:	01010413          	addi	s0,sp,16
    80001130:	00052023          	sw	zero,0(a0)
    80001134:	00052223          	sw	zero,4(a0)
    80001138:	00052423          	sw	zero,8(a0)

}
    8000113c:	00813403          	ld	s0,8(sp)
    80001140:	01010113          	addi	sp,sp,16
    80001144:	00008067          	ret

0000000080001148 <_ZN6Buffer3putEc>:

void Buffer::put(char c) {
    80001148:	ff010113          	addi	sp,sp,-16
    8000114c:	00813423          	sd	s0,8(sp)
    80001150:	01010413          	addi	s0,sp,16
    buffer[tail] = c;
    80001154:	00852783          	lw	a5,8(a0)
    80001158:	00f50733          	add	a4,a0,a5
    8000115c:	00b70623          	sb	a1,12(a4)
    tail = (tail + 1 ) % Buffer::capacity;
    80001160:	0017879b          	addiw	a5,a5,1
    80001164:	41f7d71b          	sraiw	a4,a5,0x1f
    80001168:	0187571b          	srliw	a4,a4,0x18
    8000116c:	00e787bb          	addw	a5,a5,a4
    80001170:	0ff7f793          	andi	a5,a5,255
    80001174:	40e787bb          	subw	a5,a5,a4
    80001178:	00f52423          	sw	a5,8(a0)
    count++;
    8000117c:	00052783          	lw	a5,0(a0)
    80001180:	0017879b          	addiw	a5,a5,1
    80001184:	00f52023          	sw	a5,0(a0)
}
    80001188:	00813403          	ld	s0,8(sp)
    8000118c:	01010113          	addi	sp,sp,16
    80001190:	00008067          	ret

0000000080001194 <_ZN6Buffer3getEv>:


char Buffer::get() {
    80001194:	ff010113          	addi	sp,sp,-16
    80001198:	00813423          	sd	s0,8(sp)
    8000119c:	01010413          	addi	s0,sp,16
    800011a0:	00050713          	mv	a4,a0
    char x = buffer[head];
    800011a4:	00452783          	lw	a5,4(a0)
    800011a8:	00f506b3          	add	a3,a0,a5
    800011ac:	00c6c503          	lbu	a0,12(a3)
    head = (head + 1 ) % Buffer::capacity;
    800011b0:	0017879b          	addiw	a5,a5,1
    800011b4:	41f7d69b          	sraiw	a3,a5,0x1f
    800011b8:	0186d69b          	srliw	a3,a3,0x18
    800011bc:	00d787bb          	addw	a5,a5,a3
    800011c0:	0ff7f793          	andi	a5,a5,255
    800011c4:	40d787bb          	subw	a5,a5,a3
    800011c8:	00f72223          	sw	a5,4(a4)
    count--;
    800011cc:	00072783          	lw	a5,0(a4)
    800011d0:	fff7879b          	addiw	a5,a5,-1
    800011d4:	00f72023          	sw	a5,0(a4)
    return x;
}
    800011d8:	00813403          	ld	s0,8(sp)
    800011dc:	01010113          	addi	sp,sp,16
    800011e0:	00008067          	ret

00000000800011e4 <_ZN6Buffer6isFullEv>:

bool Buffer::isFull() {
    800011e4:	ff010113          	addi	sp,sp,-16
    800011e8:	00813423          	sd	s0,8(sp)
    800011ec:	01010413          	addi	s0,sp,16
    return count == capacity;
    800011f0:	00052503          	lw	a0,0(a0)
    800011f4:	f0050513          	addi	a0,a0,-256
}
    800011f8:	00153513          	seqz	a0,a0
    800011fc:	00813403          	ld	s0,8(sp)
    80001200:	01010113          	addi	sp,sp,16
    80001204:	00008067          	ret

0000000080001208 <_ZN6Buffer7isEmptyEv>:

bool Buffer::isEmpty() {
    80001208:	ff010113          	addi	sp,sp,-16
    8000120c:	00813423          	sd	s0,8(sp)
    80001210:	01010413          	addi	s0,sp,16
    return count == 0;
    80001214:	00052503          	lw	a0,0(a0)
}
    80001218:	00153513          	seqz	a0,a0
    8000121c:	00813403          	ld	s0,8(sp)
    80001220:	01010113          	addi	sp,sp,16
    80001224:	00008067          	ret

0000000080001228 <_ZN7Console4initEv>:
Buffer* Console::inbuff = nullptr;
Buffer* Console::outbuff = nullptr;
Semaphore* Console::inSem = nullptr;
Semaphore* Console::outSem = nullptr;

void Console::init() {
    80001228:	fe010113          	addi	sp,sp,-32
    8000122c:	00113c23          	sd	ra,24(sp)
    80001230:	00813823          	sd	s0,16(sp)
    80001234:	00913423          	sd	s1,8(sp)
    80001238:	01213023          	sd	s2,0(sp)
    8000123c:	02010413          	addi	s0,sp,32
    inbuff = new Buffer();
    80001240:	10c00513          	li	a0,268
    80001244:	00001097          	auipc	ra,0x1
    80001248:	0e0080e7          	jalr	224(ra) # 80002324 <_Znwm>
    8000124c:	00050493          	mv	s1,a0
    80001250:	00000097          	auipc	ra,0x0
    80001254:	ed4080e7          	jalr	-300(ra) # 80001124 <_ZN6BufferC1Ev>
    80001258:	00005797          	auipc	a5,0x5
    8000125c:	aa97b823          	sd	s1,-1360(a5) # 80005d08 <_ZN7Console6inbuffE>
    outbuff = new Buffer();
    80001260:	10c00513          	li	a0,268
    80001264:	00001097          	auipc	ra,0x1
    80001268:	0c0080e7          	jalr	192(ra) # 80002324 <_Znwm>
    8000126c:	00050493          	mv	s1,a0
    80001270:	00000097          	auipc	ra,0x0
    80001274:	eb4080e7          	jalr	-332(ra) # 80001124 <_ZN6BufferC1Ev>
    80001278:	00005797          	auipc	a5,0x5
    8000127c:	a897b423          	sd	s1,-1400(a5) # 80005d00 <_ZN7Console7outbuffE>

class Semaphore {
public:

    void* operator new(size_t size){
        void* ptr = MemoryAllocator::kmalloc(size);
    80001280:	02000513          	li	a0,32
    80001284:	00000097          	auipc	ra,0x0
    80001288:	330080e7          	jalr	816(ra) # 800015b4 <_ZN15MemoryAllocator7kmallocEm>
    8000128c:	00050493          	mv	s1,a0
    inSem = new Semaphore(0);
    80001290:	00000593          	li	a1,0
    80001294:	00001097          	auipc	ra,0x1
    80001298:	b68080e7          	jalr	-1176(ra) # 80001dfc <_ZN9SemaphoreC1Ei>
    8000129c:	00005797          	auipc	a5,0x5
    800012a0:	a497be23          	sd	s1,-1444(a5) # 80005cf8 <_ZN7Console5inSemE>
    800012a4:	02000513          	li	a0,32
    800012a8:	00000097          	auipc	ra,0x0
    800012ac:	30c080e7          	jalr	780(ra) # 800015b4 <_ZN15MemoryAllocator7kmallocEm>
    800012b0:	00050493          	mv	s1,a0
    outSem = new Semaphore(256);
    800012b4:	10000593          	li	a1,256
    800012b8:	00001097          	auipc	ra,0x1
    800012bc:	b44080e7          	jalr	-1212(ra) # 80001dfc <_ZN9SemaphoreC1Ei>
    800012c0:	00005797          	auipc	a5,0x5
    800012c4:	a297b823          	sd	s1,-1488(a5) # 80005cf0 <_ZN7Console6outSemE>
}
    800012c8:	01813083          	ld	ra,24(sp)
    800012cc:	01013403          	ld	s0,16(sp)
    800012d0:	00813483          	ld	s1,8(sp)
    800012d4:	00013903          	ld	s2,0(sp)
    800012d8:	02010113          	addi	sp,sp,32
    800012dc:	00008067          	ret
    inbuff = new Buffer();
    800012e0:	00050913          	mv	s2,a0
    800012e4:	00048513          	mv	a0,s1
    800012e8:	00001097          	auipc	ra,0x1
    800012ec:	08c080e7          	jalr	140(ra) # 80002374 <_ZdlPv>
    800012f0:	00090513          	mv	a0,s2
    800012f4:	00006097          	auipc	ra,0x6
    800012f8:	b54080e7          	jalr	-1196(ra) # 80006e48 <_Unwind_Resume>
    outbuff = new Buffer();
    800012fc:	00050913          	mv	s2,a0
    80001300:	00048513          	mv	a0,s1
    80001304:	00001097          	auipc	ra,0x1
    80001308:	070080e7          	jalr	112(ra) # 80002374 <_ZdlPv>
    8000130c:	00090513          	mv	a0,s2
    80001310:	00006097          	auipc	ra,0x6
    80001314:	b38080e7          	jalr	-1224(ra) # 80006e48 <_Unwind_Resume>
    inSem = new Semaphore(0);
    80001318:	00050913          	mv	s2,a0
    8000131c:	00048513          	mv	a0,s1
    80001320:	00001097          	auipc	ra,0x1
    80001324:	054080e7          	jalr	84(ra) # 80002374 <_ZdlPv>
    80001328:	00090513          	mv	a0,s2
    8000132c:	00006097          	auipc	ra,0x6
    80001330:	b1c080e7          	jalr	-1252(ra) # 80006e48 <_Unwind_Resume>
    outSem = new Semaphore(256);
    80001334:	00050913          	mv	s2,a0
    80001338:	00048513          	mv	a0,s1
    8000133c:	00001097          	auipc	ra,0x1
    80001340:	038080e7          	jalr	56(ra) # 80002374 <_ZdlPv>
    80001344:	00090513          	mv	a0,s2
    80001348:	00006097          	auipc	ra,0x6
    8000134c:	b00080e7          	jalr	-1280(ra) # 80006e48 <_Unwind_Resume>

0000000080001350 <_ZN7Console4getcEv>:


char Console::getc() {
    80001350:	ff010113          	addi	sp,sp,-16
    80001354:	00113423          	sd	ra,8(sp)
    80001358:	00813023          	sd	s0,0(sp)
    8000135c:	01010413          	addi	s0,sp,16

    int status = inSem->wait();
    80001360:	00005517          	auipc	a0,0x5
    80001364:	99853503          	ld	a0,-1640(a0) # 80005cf8 <_ZN7Console5inSemE>
    80001368:	00001097          	auipc	ra,0x1
    8000136c:	af8080e7          	jalr	-1288(ra) # 80001e60 <_ZN9Semaphore4waitEv>

    if (status < 0) {
    80001370:	02054263          	bltz	a0,80001394 <_ZN7Console4getcEv+0x44>
        return -1;
    }

    return inbuff->get();
    80001374:	00005517          	auipc	a0,0x5
    80001378:	99453503          	ld	a0,-1644(a0) # 80005d08 <_ZN7Console6inbuffE>
    8000137c:	00000097          	auipc	ra,0x0
    80001380:	e18080e7          	jalr	-488(ra) # 80001194 <_ZN6Buffer3getEv>
}
    80001384:	00813083          	ld	ra,8(sp)
    80001388:	00013403          	ld	s0,0(sp)
    8000138c:	01010113          	addi	sp,sp,16
    80001390:	00008067          	ret
        return -1;
    80001394:	0ff00513          	li	a0,255
    80001398:	fedff06f          	j	80001384 <_ZN7Console4getcEv+0x34>

000000008000139c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    8000139c:	fe010113          	addi	sp,sp,-32
    800013a0:	00113c23          	sd	ra,24(sp)
    800013a4:	00813823          	sd	s0,16(sp)
    800013a8:	00913423          	sd	s1,8(sp)
    800013ac:	02010413          	addi	s0,sp,32
    800013b0:	00050493          	mv	s1,a0
    outSem->wait();
    800013b4:	00005517          	auipc	a0,0x5
    800013b8:	93c53503          	ld	a0,-1732(a0) # 80005cf0 <_ZN7Console6outSemE>
    800013bc:	00001097          	auipc	ra,0x1
    800013c0:	aa4080e7          	jalr	-1372(ra) # 80001e60 <_ZN9Semaphore4waitEv>
    outbuff->put(c);
    800013c4:	00048593          	mv	a1,s1
    800013c8:	00005517          	auipc	a0,0x5
    800013cc:	93853503          	ld	a0,-1736(a0) # 80005d00 <_ZN7Console7outbuffE>
    800013d0:	00000097          	auipc	ra,0x0
    800013d4:	d78080e7          	jalr	-648(ra) # 80001148 <_ZN6Buffer3putEc>

    if (*((volatile uint8*)CONSOLE_STATUS) & 0x20) {
    800013d8:	00004797          	auipc	a5,0x4
    800013dc:	c387b783          	ld	a5,-968(a5) # 80005010 <CONSOLE_STATUS>
    800013e0:	0007c783          	lbu	a5,0(a5)
    800013e4:	0207f793          	andi	a5,a5,32
    800013e8:	00079c63          	bnez	a5,80001400 <_ZN7Console4putcEc+0x64>
        char toSend = outbuff->get();
        *((volatile uint8*)CONSOLE_TX_DATA) = (uint8)toSend;
        outSem->signal();
    }
    800013ec:	01813083          	ld	ra,24(sp)
    800013f0:	01013403          	ld	s0,16(sp)
    800013f4:	00813483          	ld	s1,8(sp)
    800013f8:	02010113          	addi	sp,sp,32
    800013fc:	00008067          	ret
        char toSend = outbuff->get();
    80001400:	00005517          	auipc	a0,0x5
    80001404:	90053503          	ld	a0,-1792(a0) # 80005d00 <_ZN7Console7outbuffE>
    80001408:	00000097          	auipc	ra,0x0
    8000140c:	d8c080e7          	jalr	-628(ra) # 80001194 <_ZN6Buffer3getEv>
        *((volatile uint8*)CONSOLE_TX_DATA) = (uint8)toSend;
    80001410:	00004797          	auipc	a5,0x4
    80001414:	bf87b783          	ld	a5,-1032(a5) # 80005008 <CONSOLE_TX_DATA>
    80001418:	00a78023          	sb	a0,0(a5)
        outSem->signal();
    8000141c:	00005517          	auipc	a0,0x5
    80001420:	8d453503          	ld	a0,-1836(a0) # 80005cf0 <_ZN7Console6outSemE>
    80001424:	00001097          	auipc	ra,0x1
    80001428:	af8080e7          	jalr	-1288(ra) # 80001f1c <_ZN9Semaphore6signalEv>
    8000142c:	fc1ff06f          	j	800013ec <_ZN7Console4putcEc+0x50>

0000000080001430 <_Z5idlefPv>:
#include "../h/riscv.h"
#include "../h/Thread.h"
#include "../h/Console.h" // Obavezno uključi zaglavlje
#include "../h/workers.h"
#include "../h/printer.h"
void idlef(void*) {
    80001430:	ff010113          	addi	sp,sp,-16
    80001434:	00113423          	sd	ra,8(sp)
    80001438:	00813023          	sd	s0,0(sp)
    8000143c:	01010413          	addi	s0,sp,16
    while (1) thread_dispatch();
    80001440:	00001097          	auipc	ra,0x1
    80001444:	d0c080e7          	jalr	-756(ra) # 8000214c <_Z15thread_dispatchv>
    80001448:	ff9ff06f          	j	80001440 <_Z5idlefPv+0x10>

000000008000144c <main>:
}
int main() {
    8000144c:	fc010113          	addi	sp,sp,-64
    80001450:	02113c23          	sd	ra,56(sp)
    80001454:	02813823          	sd	s0,48(sp)
    80001458:	04010413          	addi	s0,sp,64
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    8000145c:	00000797          	auipc	a5,0x0
    80001460:	ba478793          	addi	a5,a5,-1116 # 80001000 <_ZN5Riscv14supervisorTrapEv>
        return stvec;
    }

    inline void Riscv::w_stvec(uint64 stvec)
    {
        __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001464:	10579073          	csrw	stvec,a5

    // 2. INICIJALIZACIJA KONZOLE (Pre svega ostalog!)
    // Ovo alocira bafere i semafore unutar Console klase
    Console::init();
    80001468:	00000097          	auipc	ra,0x0
    8000146c:	dc0080e7          	jalr	-576(ra) # 80001228 <_ZN7Console4initEv>

    // 3. Postavi main nit
    thread_t mainThr;
    thread_create(&mainThr, nullptr, nullptr);
    80001470:	00000613          	li	a2,0
    80001474:	00000593          	li	a1,0
    80001478:	fe840513          	addi	a0,s0,-24
    8000147c:	00001097          	auipc	ra,0x1
    80001480:	c44080e7          	jalr	-956(ra) # 800020c0 <_Z13thread_createPP7_threadPFvPvES2_>
    Thread::running = (Thread*)mainThr;
    80001484:	fe843783          	ld	a5,-24(s0)
    80001488:	00005717          	auipc	a4,0x5
    8000148c:	8af73823          	sd	a5,-1872(a4) # 80005d38 <_ZN6Thread7runningE>

    printString("System initialized. Main thread started.\n");
    80001490:	00004517          	auipc	a0,0x4
    80001494:	b9050513          	addi	a0,a0,-1136 # 80005020 <CONSOLE_STATUS+0x10>
    80001498:	00000097          	auipc	ra,0x0
    8000149c:	340080e7          	jalr	832(ra) # 800017d8 <_Z11printStringPKc>

    // 4. Kreiranje semafora za sinhronizaciju ispisa
    sem_t ispisSem;
    sem_open(&ispisSem, 1);
    800014a0:	00100593          	li	a1,1
    800014a4:	fe040513          	addi	a0,s0,-32
    800014a8:	00001097          	auipc	ra,0x1
    800014ac:	cfc080e7          	jalr	-772(ra) # 800021a4 <_Z8sem_openPP4_semj>

    // 5. Kreiranje radnih niti i idle niti
    thread_t threads[2];
    thread_t idle;
    thread_create(&threads[0], workerBodyA, ispisSem);
    800014b0:	fe043603          	ld	a2,-32(s0)
    800014b4:	00001597          	auipc	a1,0x1
    800014b8:	1b458593          	addi	a1,a1,436 # 80002668 <_Z11workerBodyAPv>
    800014bc:	fd040513          	addi	a0,s0,-48
    800014c0:	00001097          	auipc	ra,0x1
    800014c4:	c00080e7          	jalr	-1024(ra) # 800020c0 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(&threads[1], workerBodyB, ispisSem);
    800014c8:	fe043603          	ld	a2,-32(s0)
    800014cc:	00001597          	auipc	a1,0x1
    800014d0:	23458593          	addi	a1,a1,564 # 80002700 <_Z11workerBodyBPv>
    800014d4:	fd840513          	addi	a0,s0,-40
    800014d8:	00001097          	auipc	ra,0x1
    800014dc:	be8080e7          	jalr	-1048(ra) # 800020c0 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(&idle, idlef, nullptr);
    800014e0:	00000613          	li	a2,0
    800014e4:	00000597          	auipc	a1,0x0
    800014e8:	f4c58593          	addi	a1,a1,-180 # 80001430 <_Z5idlefPv>
    800014ec:	fc840513          	addi	a0,s0,-56
    800014f0:	00001097          	auipc	ra,0x1
    800014f4:	bd0080e7          	jalr	-1072(ra) # 800020c0 <_Z13thread_createPP7_threadPFvPvES2_>
        __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
    }

    inline void Riscv::ms_sstatus(uint64 mask)
    {
        __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800014f8:	00200793          	li	a5,2
    800014fc:	1007a073          	csrs	sstatus,a5
    }
    80001500:	0100006f          	j	80001510 <main+0xc4>
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!(((Thread*)threads[0])->isFinished() && ((Thread*)threads[1])->isFinished())) {
        time_sleep(10); // Spavaj malo da ne trošiš CPU dok čekaš
    80001504:	00a00513          	li	a0,10
    80001508:	00001097          	auipc	ra,0x1
    8000150c:	d88080e7          	jalr	-632(ra) # 80002290 <_Z10time_sleepm>
    while (!(((Thread*)threads[0])->isFinished() && ((Thread*)threads[1])->isFinished())) {
    80001510:	fd043783          	ld	a5,-48(s0)



    static void dispatch();

    bool isFinished(){return finished;};
    80001514:	0417c783          	lbu	a5,65(a5)
    80001518:	fe0786e3          	beqz	a5,80001504 <main+0xb8>
    8000151c:	fd843783          	ld	a5,-40(s0)
    80001520:	0417c783          	lbu	a5,65(a5)
    80001524:	fe0780e3          	beqz	a5,80001504 <main+0xb8>
    }

    sem_close(ispisSem);
    80001528:	fe043503          	ld	a0,-32(s0)
    8000152c:	00001097          	auipc	ra,0x1
    80001530:	cbc080e7          	jalr	-836(ra) # 800021e8 <_Z9sem_closeP4_sem>
    printString("Test zavrsen.\n");
    80001534:	00004517          	auipc	a0,0x4
    80001538:	b1c50513          	addi	a0,a0,-1252 # 80005050 <CONSOLE_STATUS+0x40>
    8000153c:	00000097          	auipc	ra,0x0
    80001540:	29c080e7          	jalr	668(ra) # 800017d8 <_Z11printStringPKc>
    return 0;
}
    80001544:	00000513          	li	a0,0
    80001548:	03813083          	ld	ra,56(sp)
    8000154c:	03013403          	ld	s0,48(sp)
    80001550:	04010113          	addi	sp,sp,64
    80001554:	00008067          	ret

0000000080001558 <_ZN15MemoryAllocator4initEv>:
    }

    return address;
}

void MemoryAllocator::init() {
    80001558:	ff010113          	addi	sp,sp,-16
    8000155c:	00813423          	sd	s0,8(sp)
    80001560:	01010413          	addi	s0,sp,16
    size_t start = (size_t)HEAP_START_ADDR;
    80001564:	00004797          	auipc	a5,0x4
    80001568:	6ac7b783          	ld	a5,1708(a5) # 80005c10 <HEAP_START_ADDR>
    size_t end = (size_t)HEAP_END_ADDR;
    8000156c:	00004717          	auipc	a4,0x4
    80001570:	69c73703          	ld	a4,1692(a4) # 80005c08 <HEAP_END_ADDR>

    start = start % MEM_BLOCK_SIZE == 0 ? start :   (start - start % MEM_BLOCK_SIZE) + MEM_BLOCK_SIZE;
    80001574:	03f7f693          	andi	a3,a5,63
    80001578:	00068663          	beqz	a3,80001584 <_ZN15MemoryAllocator4initEv+0x2c>
    8000157c:	fc07f793          	andi	a5,a5,-64
    80001580:	04078793          	addi	a5,a5,64
    end = end % MEM_BLOCK_SIZE == 0 ? end : (end - end % MEM_BLOCK_SIZE);
    80001584:	03f77693          	andi	a3,a4,63
    80001588:	00068463          	beqz	a3,80001590 <_ZN15MemoryAllocator4initEv+0x38>
    8000158c:	fc077713          	andi	a4,a4,-64

    head = (segmentHeader*) start;
    80001590:	00004697          	auipc	a3,0x4
    80001594:	78f6b023          	sd	a5,1920(a3) # 80005d10 <_ZN15MemoryAllocator4headE>
    head->size = end - start - MEM_BLOCK_SIZE;
    80001598:	40f70733          	sub	a4,a4,a5
    8000159c:	fc070713          	addi	a4,a4,-64
    800015a0:	00e7b423          	sd	a4,8(a5)
    head -> next = nullptr;
    800015a4:	0007b023          	sd	zero,0(a5)
}
    800015a8:	00813403          	ld	s0,8(sp)
    800015ac:	01010113          	addi	sp,sp,16
    800015b0:	00008067          	ret

00000000800015b4 <_ZN15MemoryAllocator7kmallocEm>:
void *MemoryAllocator::kmalloc(size_t size) {  // argument is in bytes
    800015b4:	fe010113          	addi	sp,sp,-32
    800015b8:	00113c23          	sd	ra,24(sp)
    800015bc:	00813823          	sd	s0,16(sp)
    800015c0:	00913423          	sd	s1,8(sp)
    800015c4:	02010413          	addi	s0,sp,32
    800015c8:	00050493          	mv	s1,a0
    if(!isinit){
    800015cc:	00004797          	auipc	a5,0x4
    800015d0:	74c7c783          	lbu	a5,1868(a5) # 80005d18 <_ZN15MemoryAllocator6isinitE>
    800015d4:	00078e63          	beqz	a5,800015f0 <_ZN15MemoryAllocator7kmallocEm+0x3c>
    size_t bytes_needed = (size_t)((size + MEM_BLOCK_SIZE - 1 ) / MEM_BLOCK_SIZE)*MEM_BLOCK_SIZE;
    800015d8:	03f48713          	addi	a4,s1,63
    800015dc:	fc077713          	andi	a4,a4,-64
    segmentHeader* curr = head;
    800015e0:	00004797          	auipc	a5,0x4
    800015e4:	7307b783          	ld	a5,1840(a5) # 80005d10 <_ZN15MemoryAllocator4headE>
    segmentHeader* prev = nullptr;
    800015e8:	00000613          	li	a2,0
    800015ec:	0240006f          	j	80001610 <_ZN15MemoryAllocator7kmallocEm+0x5c>
        isinit = true;
    800015f0:	00100793          	li	a5,1
    800015f4:	00004717          	auipc	a4,0x4
    800015f8:	72f70223          	sb	a5,1828(a4) # 80005d18 <_ZN15MemoryAllocator6isinitE>
        init();
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	f5c080e7          	jalr	-164(ra) # 80001558 <_ZN15MemoryAllocator4initEv>
    80001604:	fd5ff06f          	j	800015d8 <_ZN15MemoryAllocator7kmallocEm+0x24>
        prev = curr;
    80001608:	00078613          	mv	a2,a5
    for(;curr; curr = curr -> next){
    8000160c:	0007b783          	ld	a5,0(a5)
    80001610:	00078a63          	beqz	a5,80001624 <_ZN15MemoryAllocator7kmallocEm+0x70>
        if(curr -> size >= bytes_needed) {
    80001614:	0087b683          	ld	a3,8(a5)
    80001618:	fee6e8e3          	bltu	a3,a4,80001608 <_ZN15MemoryAllocator7kmallocEm+0x54>
            address = (void*) ((size_t) curr + MEM_BLOCK_SIZE);
    8000161c:	04078513          	addi	a0,a5,64
            break;
    80001620:	0080006f          	j	80001628 <_ZN15MemoryAllocator7kmallocEm+0x74>
    void* address = nullptr;
    80001624:	00078513          	mv	a0,a5
    if(!curr) return nullptr;
    80001628:	06078063          	beqz	a5,80001688 <_ZN15MemoryAllocator7kmallocEm+0xd4>
    size_t remaining_bytes = curr->size - bytes_needed;
    8000162c:	0087b683          	ld	a3,8(a5)
    80001630:	40e686b3          	sub	a3,a3,a4
    if(remaining_bytes >= 2*MEM_BLOCK_SIZE){  //there is enough space for header and minimum one block
    80001634:	07f00593          	li	a1,127
    80001638:	02d5fe63          	bgeu	a1,a3,80001674 <_ZN15MemoryAllocator7kmallocEm+0xc0>
        next_free_node = (segmentHeader*)((char*)curr + bytes_needed + MEM_BLOCK_SIZE);
    8000163c:	04070593          	addi	a1,a4,64
    80001640:	00b785b3          	add	a1,a5,a1
        next_free_node -> next = curr -> next;
    80001644:	0007b803          	ld	a6,0(a5)
    80001648:	0105b023          	sd	a6,0(a1)
        next_free_node -> size = remaining_bytes - MEM_BLOCK_SIZE;
    8000164c:	fc068693          	addi	a3,a3,-64
    80001650:	00d5b423          	sd	a3,8(a1)
        curr -> size = bytes_needed;
    80001654:	00e7b423          	sd	a4,8(a5)
    if(prev){
    80001658:	02060263          	beqz	a2,8000167c <_ZN15MemoryAllocator7kmallocEm+0xc8>
        prev -> next = next_free_node;
    8000165c:	00b63023          	sd	a1,0(a2)
}
    80001660:	01813083          	ld	ra,24(sp)
    80001664:	01013403          	ld	s0,16(sp)
    80001668:	00813483          	ld	s1,8(sp)
    8000166c:	02010113          	addi	sp,sp,32
    80001670:	00008067          	ret
        next_free_node = curr -> next;
    80001674:	0007b583          	ld	a1,0(a5)
    80001678:	fe1ff06f          	j	80001658 <_ZN15MemoryAllocator7kmallocEm+0xa4>
        head = next_free_node;
    8000167c:	00004797          	auipc	a5,0x4
    80001680:	68b7ba23          	sd	a1,1684(a5) # 80005d10 <_ZN15MemoryAllocator4headE>
    80001684:	fddff06f          	j	80001660 <_ZN15MemoryAllocator7kmallocEm+0xac>
    if(!curr) return nullptr;
    80001688:	00078513          	mv	a0,a5
    8000168c:	fd5ff06f          	j	80001660 <_ZN15MemoryAllocator7kmallocEm+0xac>

0000000080001690 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE>:



void MemoryAllocator::tryMerge(segmentHeader *block) {
    80001690:	ff010113          	addi	sp,sp,-16
    80001694:	00813423          	sd	s0,8(sp)
    80001698:	01010413          	addi	s0,sp,16
    if(!block) return;
    8000169c:	00050e63          	beqz	a0,800016b8 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x28>

    segmentHeader* next_seg = block -> next;
    800016a0:	00053783          	ld	a5,0(a0)

    if(!next_seg) return;
    800016a4:	00078a63          	beqz	a5,800016b8 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x28>

    if((char*) block +  MEM_BLOCK_SIZE + block -> size == (char*) next_seg){
    800016a8:	00853683          	ld	a3,8(a0)
    800016ac:	04068713          	addi	a4,a3,64
    800016b0:	00e50733          	add	a4,a0,a4
    800016b4:	00f70863          	beq	a4,a5,800016c4 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x34>
        block -> next = next_seg -> next;
        block -> size += next_seg -> size +  MEM_BLOCK_SIZE;
    }
}
    800016b8:	00813403          	ld	s0,8(sp)
    800016bc:	01010113          	addi	sp,sp,16
    800016c0:	00008067          	ret
        block -> next = next_seg -> next;
    800016c4:	0007b703          	ld	a4,0(a5)
    800016c8:	00e53023          	sd	a4,0(a0)
        block -> size += next_seg -> size +  MEM_BLOCK_SIZE;
    800016cc:	0087b783          	ld	a5,8(a5)
    800016d0:	00f686b3          	add	a3,a3,a5
    800016d4:	04068693          	addi	a3,a3,64
    800016d8:	00d53423          	sd	a3,8(a0)
    800016dc:	fddff06f          	j	800016b8 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x28>

00000000800016e0 <_ZN15MemoryAllocator5kfreeEPv>:
int MemoryAllocator::kfree(void *addr) {
    800016e0:	fe010113          	addi	sp,sp,-32
    800016e4:	00113c23          	sd	ra,24(sp)
    800016e8:	00813823          	sd	s0,16(sp)
    800016ec:	00913423          	sd	s1,8(sp)
    800016f0:	01213023          	sd	s2,0(sp)
    800016f4:	02010413          	addi	s0,sp,32
    800016f8:	00050913          	mv	s2,a0
    if(!isinit){ isinit = true; init(); }
    800016fc:	00004797          	auipc	a5,0x4
    80001700:	61c7c783          	lbu	a5,1564(a5) # 80005d18 <_ZN15MemoryAllocator6isinitE>
    80001704:	04078663          	beqz	a5,80001750 <_ZN15MemoryAllocator5kfreeEPv+0x70>
    if(!addr) return -1;
    80001708:	0a090863          	beqz	s2,800017b8 <_ZN15MemoryAllocator5kfreeEPv+0xd8>
    segmentHeader* newFree = (segmentHeader*)((char*)addr - MEM_BLOCK_SIZE);
    8000170c:	fc090513          	addi	a0,s2,-64
    if((size_t)newFree < (size_t)HEAP_START_ADDR || (size_t)newFree >= (size_t)HEAP_END_ADDR) {
    80001710:	00004797          	auipc	a5,0x4
    80001714:	5007b783          	ld	a5,1280(a5) # 80005c10 <HEAP_START_ADDR>
    80001718:	0af56463          	bltu	a0,a5,800017c0 <_ZN15MemoryAllocator5kfreeEPv+0xe0>
    8000171c:	00004797          	auipc	a5,0x4
    80001720:	4ec7b783          	ld	a5,1260(a5) # 80005c08 <HEAP_END_ADDR>
    80001724:	0af57263          	bgeu	a0,a5,800017c8 <_ZN15MemoryAllocator5kfreeEPv+0xe8>
    segmentHeader* curr = head;
    80001728:	00004717          	auipc	a4,0x4
    8000172c:	5e873703          	ld	a4,1512(a4) # 80005d10 <_ZN15MemoryAllocator4headE>
    80001730:	00070793          	mv	a5,a4
    segmentHeader* prev = nullptr;
    80001734:	00000493          	li	s1,0
    while(curr) {
    80001738:	02078863          	beqz	a5,80001768 <_ZN15MemoryAllocator5kfreeEPv+0x88>
        if(curr == newFree) {
    8000173c:	08a78a63          	beq	a5,a0,800017d0 <_ZN15MemoryAllocator5kfreeEPv+0xf0>
        if(curr > newFree) break;
    80001740:	02f56463          	bltu	a0,a5,80001768 <_ZN15MemoryAllocator5kfreeEPv+0x88>
        prev = curr;
    80001744:	00078493          	mv	s1,a5
        curr = curr->next;
    80001748:	0007b783          	ld	a5,0(a5)
    while(curr) {
    8000174c:	fedff06f          	j	80001738 <_ZN15MemoryAllocator5kfreeEPv+0x58>
    if(!isinit){ isinit = true; init(); }
    80001750:	00100793          	li	a5,1
    80001754:	00004717          	auipc	a4,0x4
    80001758:	5cf70223          	sb	a5,1476(a4) # 80005d18 <_ZN15MemoryAllocator6isinitE>
    8000175c:	00000097          	auipc	ra,0x0
    80001760:	dfc080e7          	jalr	-516(ra) # 80001558 <_ZN15MemoryAllocator4initEv>
    80001764:	fa5ff06f          	j	80001708 <_ZN15MemoryAllocator5kfreeEPv+0x28>
    if(prev) {
    80001768:	04048063          	beqz	s1,800017a8 <_ZN15MemoryAllocator5kfreeEPv+0xc8>
        newFree->next = prev->next;
    8000176c:	0004b783          	ld	a5,0(s1)
    80001770:	fcf93023          	sd	a5,-64(s2)
        prev->next = newFree;
    80001774:	00a4b023          	sd	a0,0(s1)
    tryMerge(newFree);
    80001778:	00000097          	auipc	ra,0x0
    8000177c:	f18080e7          	jalr	-232(ra) # 80001690 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE>
    tryMerge(prev);
    80001780:	00048513          	mv	a0,s1
    80001784:	00000097          	auipc	ra,0x0
    80001788:	f0c080e7          	jalr	-244(ra) # 80001690 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE>
    return 0;
    8000178c:	00000513          	li	a0,0
}
    80001790:	01813083          	ld	ra,24(sp)
    80001794:	01013403          	ld	s0,16(sp)
    80001798:	00813483          	ld	s1,8(sp)
    8000179c:	00013903          	ld	s2,0(sp)
    800017a0:	02010113          	addi	sp,sp,32
    800017a4:	00008067          	ret
        newFree->next = head;
    800017a8:	fce93023          	sd	a4,-64(s2)
        head = newFree;
    800017ac:	00004797          	auipc	a5,0x4
    800017b0:	56a7b223          	sd	a0,1380(a5) # 80005d10 <_ZN15MemoryAllocator4headE>
    800017b4:	fc5ff06f          	j	80001778 <_ZN15MemoryAllocator5kfreeEPv+0x98>
    if(!addr) return -1;
    800017b8:	fff00513          	li	a0,-1
    800017bc:	fd5ff06f          	j	80001790 <_ZN15MemoryAllocator5kfreeEPv+0xb0>
        return -1;
    800017c0:	fff00513          	li	a0,-1
    800017c4:	fcdff06f          	j	80001790 <_ZN15MemoryAllocator5kfreeEPv+0xb0>
    800017c8:	fff00513          	li	a0,-1
    800017cc:	fc5ff06f          	j	80001790 <_ZN15MemoryAllocator5kfreeEPv+0xb0>
            return -1;
    800017d0:	fff00513          	li	a0,-1
    800017d4:	fbdff06f          	j	80001790 <_ZN15MemoryAllocator5kfreeEPv+0xb0>

00000000800017d8 <_Z11printStringPKc>:
#include "../h/printer.h"
#include "../h/syscall_c.h" // Koristimo tvoj javni API
#include "../h/riscv.h"

void printString(char const *string)
{
    800017d8:	fe010113          	addi	sp,sp,-32
    800017dc:	00113c23          	sd	ra,24(sp)
    800017e0:	00813823          	sd	s0,16(sp)
    800017e4:	00913423          	sd	s1,8(sp)
    800017e8:	02010413          	addi	s0,sp,32
    800017ec:	00050493          	mv	s1,a0
    800017f0:	0100006f          	j	80001800 <_Z11printStringPKc+0x28>
    // NEMOJ gasiti prekide ovde! 
    // Tvoj novi Console::putc je thread-safe i koristi semafore.
    while (*string != '\0')
    {
        putc(*string); // Koristi sistemski poziv (0x42)
    800017f4:	00001097          	auipc	ra,0x1
    800017f8:	b08080e7          	jalr	-1272(ra) # 800022fc <_Z4putcc>
        string++;
    800017fc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001800:	0004c503          	lbu	a0,0(s1)
    80001804:	fe0518e3          	bnez	a0,800017f4 <_Z11printStringPKc+0x1c>
    }
}
    80001808:	01813083          	ld	ra,24(sp)
    8000180c:	01013403          	ld	s0,16(sp)
    80001810:	00813483          	ld	s1,8(sp)
    80001814:	02010113          	addi	sp,sp,32
    80001818:	00008067          	ret

000000008000181c <_Z12printIntegerm>:

void printInteger(uint64 integer)
{   
    8000181c:	fc010113          	addi	sp,sp,-64
    80001820:	02113c23          	sd	ra,56(sp)
    80001824:	02813823          	sd	s0,48(sp)
    80001828:	02913423          	sd	s1,40(sp)
    8000182c:	04010413          	addi	s0,sp,64
    char buf[20]; // Povećaj malo za svaki slučaj (uint64 može biti dug)
    int i;
    uint64 x = integer;

    // Obrada nule
    if (x == 0) {
    80001830:	04050263          	beqz	a0,80001874 <_Z12printIntegerm+0x58>
        putc('0');
        return;
    }

    i = 0;
    80001834:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001838:	00a00693          	li	a3,10
    8000183c:	02d57633          	remu	a2,a0,a3
    80001840:	00004717          	auipc	a4,0x4
    80001844:	82070713          	addi	a4,a4,-2016 # 80005060 <_ZZ12printIntegermE6digits>
    80001848:	00c70733          	add	a4,a4,a2
    8000184c:	00074703          	lbu	a4,0(a4)
    80001850:	fe040613          	addi	a2,s0,-32
    80001854:	009607b3          	add	a5,a2,s1
    80001858:	0014849b          	addiw	s1,s1,1
    8000185c:	fee78423          	sb	a4,-24(a5)
    } while ((x /= 10) != 0);
    80001860:	00050713          	mv	a4,a0
    80001864:	02d55533          	divu	a0,a0,a3
    80001868:	00900793          	li	a5,9
    8000186c:	fce7e6e3          	bltu	a5,a4,80001838 <_Z12printIntegerm+0x1c>
    80001870:	0280006f          	j	80001898 <_Z12printIntegerm+0x7c>
        putc('0');
    80001874:	03000513          	li	a0,48
    80001878:	00001097          	auipc	ra,0x1
    8000187c:	a84080e7          	jalr	-1404(ra) # 800022fc <_Z4putcc>
        return;
    80001880:	0200006f          	j	800018a0 <_Z12printIntegerm+0x84>

    // Ispis unazad
    while (--i >= 0) {
        putc(buf[i]);
    80001884:	fe040793          	addi	a5,s0,-32
    80001888:	009787b3          	add	a5,a5,s1
    8000188c:	fe87c503          	lbu	a0,-24(a5)
    80001890:	00001097          	auipc	ra,0x1
    80001894:	a6c080e7          	jalr	-1428(ra) # 800022fc <_Z4putcc>
    while (--i >= 0) {
    80001898:	fff4849b          	addiw	s1,s1,-1
    8000189c:	fe04d4e3          	bgez	s1,80001884 <_Z12printIntegerm+0x68>
    }
    800018a0:	03813083          	ld	ra,56(sp)
    800018a4:	03013403          	ld	s0,48(sp)
    800018a8:	02813483          	ld	s1,40(sp)
    800018ac:	04010113          	addi	sp,sp,64
    800018b0:	00008067          	ret

00000000800018b4 <_ZN5Riscv10popSppSpieEv>:
#include "../h/MemoryAllocator.h"
#include "../h/Thread.h"
#include  "../h/Semaphore.h"
#include "../h/Console.h"
void Riscv::popSppSpie()
{
    800018b4:	ff010113          	addi	sp,sp,-16
    800018b8:	00813423          	sd	s0,8(sp)
    800018bc:	01010413          	addi	s0,sp,16
	__asm__ volatile("csrw sepc, ra");
    800018c0:	14109073          	csrw	sepc,ra
	__asm__ volatile("sret");
    800018c4:	10200073          	sret
}
    800018c8:	00813403          	ld	s0,8(sp)
    800018cc:	01010113          	addi	sp,sp,16
    800018d0:	00008067          	ret

00000000800018d4 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm>:
void Riscv::handleSupervisorTrap(uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5, uint64 a6, uint64 a7){
    800018d4:	f7010113          	addi	sp,sp,-144
    800018d8:	08113423          	sd	ra,136(sp)
    800018dc:	08813023          	sd	s0,128(sp)
    800018e0:	06913c23          	sd	s1,120(sp)
    800018e4:	07213823          	sd	s2,112(sp)
    800018e8:	07313423          	sd	s3,104(sp)
    800018ec:	09010413          	addi	s0,sp,144
    800018f0:	00058493          	mv	s1,a1
    800018f4:	00060913          	mv	s2,a2
        __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800018f8:	142027f3          	csrr	a5,scause
    800018fc:	faf43423          	sd	a5,-88(s0)
        return scause;
    80001900:	fa843603          	ld	a2,-88(s0)

	uint64 scause = r_scause();

	if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
    80001904:	ff860593          	addi	a1,a2,-8
    80001908:	00100793          	li	a5,1
    8000190c:	04b7fc63          	bgeu	a5,a1,80001964 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x90>
		}

		w_sstatus(sstatus);
		w_sepc(sepc);

    } else if (scause == 0x8000000000000009UL) {
    80001910:	fff00793          	li	a5,-1
    80001914:	03f79793          	slli	a5,a5,0x3f
    80001918:	00978793          	addi	a5,a5,9
    8000191c:	2af60863          	beq	a2,a5,80001bcc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x2f8>
    		Console::getOutSem()->signal();
    	}
    	}

    	plic_complete(irq); // Obaveštavamo PLIC da je obrada završena
    } else if (scause == 0x8000000000000001UL) {
    80001920:	fff00793          	li	a5,-1
    80001924:	03f79793          	slli	a5,a5,0x3f
    80001928:	00178793          	addi	a5,a5,1
    8000192c:	0af61063          	bne	a2,a5,800019cc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xf8>
    	Thread::timeSliceCounter++;
    80001930:	00004717          	auipc	a4,0x4
    80001934:	40070713          	addi	a4,a4,1024 # 80005d30 <_ZN6Thread16timeSliceCounterE>
    80001938:	00073783          	ld	a5,0(a4)
    8000193c:	00178793          	addi	a5,a5,1
    80001940:	00f73023          	sd	a5,0(a4)
    	if (Thread::sleepingHead) {
    80001944:	00004797          	auipc	a5,0x4
    80001948:	3e47b783          	ld	a5,996(a5) # 80005d28 <_ZN6Thread12sleepingHeadE>
    8000194c:	3a078a63          	beqz	a5,80001d00 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x42c>
    		if (Thread::sleepingHead->timeSleeping > 0) {
    80001950:	0487b703          	ld	a4,72(a5)
    80001954:	34070a63          	beqz	a4,80001ca8 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x3d4>
    			Thread::sleepingHead->timeSleeping--;
    80001958:	fff70713          	addi	a4,a4,-1
    8000195c:	04e7b423          	sd	a4,72(a5)
    80001960:	3480006f          	j	80001ca8 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x3d4>
        __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001964:	141027f3          	csrr	a5,sepc
    80001968:	faf43c23          	sd	a5,-72(s0)
        return sepc;
    8000196c:	fb843783          	ld	a5,-72(s0)
		uint64 volatile sepc = r_sepc() + 4;
    80001970:	00478793          	addi	a5,a5,4
    80001974:	f6f43c23          	sd	a5,-136(s0)
    }

    inline uint64 Riscv::r_sstatus()
    {
        uint64 volatile sstatus;
        __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001978:	100027f3          	csrr	a5,sstatus
    8000197c:	faf43823          	sd	a5,-80(s0)
        return sstatus;
    80001980:	fb043783          	ld	a5,-80(s0)
		uint64 volatile sstatus = r_sstatus();
    80001984:	f8f43023          	sd	a5,-128(s0)
		switch(call) {
    80001988:	04200793          	li	a5,66
    8000198c:	02a7e863          	bltu	a5,a0,800019bc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
    80001990:	00251513          	slli	a0,a0,0x2
    80001994:	00003617          	auipc	a2,0x3
    80001998:	6d860613          	addi	a2,a2,1752 # 8000506c <_ZZ12printIntegermE6digits+0xc>
    8000199c:	00c50533          	add	a0,a0,a2
    800019a0:	00052783          	lw	a5,0(a0)
    800019a4:	00c787b3          	add	a5,a5,a2
    800019a8:	00078067          	jr	a5
				writeARegister(0, (uint64)MemoryAllocator::kmalloc(bytes));
    800019ac:	00649513          	slli	a0,s1,0x6
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	c04080e7          	jalr	-1020(ra) # 800015b4 <_ZN15MemoryAllocator7kmallocEm>
        return value;
    }


inline void Riscv::writeARegister( int reg_number, uint64 value) {
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    800019b8:	00050513          	mv	a0,a0
		w_sstatus(sstatus);
    800019bc:	f8043783          	ld	a5,-128(s0)
        __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800019c0:	10079073          	csrw	sstatus,a5
		w_sepc(sepc);
    800019c4:	f7843783          	ld	a5,-136(s0)
        __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800019c8:	14179073          	csrw	sepc,a5
    	w_sepc(sepc);
    	
    }
        mc_sip(SIP_SSIP);
    }
}
    800019cc:	08813083          	ld	ra,136(sp)
    800019d0:	08013403          	ld	s0,128(sp)
    800019d4:	07813483          	ld	s1,120(sp)
    800019d8:	07013903          	ld	s2,112(sp)
    800019dc:	06813983          	ld	s3,104(sp)
    800019e0:	09010113          	addi	sp,sp,144
    800019e4:	00008067          	ret
				writeARegister(0, (uint64)MemoryAllocator::kfree((void*)a1));
    800019e8:	00048513          	mv	a0,s1
    800019ec:	00000097          	auipc	ra,0x0
    800019f0:	cf4080e7          	jalr	-780(ra) # 800016e0 <_ZN15MemoryAllocator5kfreeEPv>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    800019f4:	00050513          	mv	a0,a0
    }
    800019f8:	fc5ff06f          	j	800019bc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
				void* volatile arg = (void*) a3;
    800019fc:	f8d43423          	sd	a3,-120(s0)
				void* volatile stack_space = (void*) a4;
    80001a00:	f8e43823          	sd	a4,-112(s0)
				*handle =  Thread::createThread(body, arg, stack_space);
    80001a04:	f8843583          	ld	a1,-120(s0)
    80001a08:	f9043603          	ld	a2,-112(s0)
    80001a0c:	00090513          	mv	a0,s2
    80001a10:	00001097          	auipc	ra,0x1
    80001a14:	be0080e7          	jalr	-1056(ra) # 800025f0 <_ZN6Thread12createThreadEPFvPvES0_S0_>
    80001a18:	00a4b023          	sd	a0,0(s1)
				if(*handle) {
    80001a1c:	04050863          	beqz	a0,80001a6c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x198>
					if (body!=nullptr) Scheduler::instance().put(*handle);
    80001a20:	04090063          	beqz	s2,80001a60 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x18c>

class Thread;

class Scheduler {
public:
    static Scheduler& instance(){static Scheduler instance; return instance;}
    80001a24:	00004797          	auipc	a5,0x4
    80001a28:	2fc7c783          	lbu	a5,764(a5) # 80005d20 <_ZGVZN9Scheduler8instanceEvE8instance>
    80001a2c:	02079063          	bnez	a5,80001a4c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x178>

    void put(Thread* t);

    Thread* get();
private:
    Scheduler():head(nullptr), tail(nullptr){};
    80001a30:	00004797          	auipc	a5,0x4
    80001a34:	34078793          	addi	a5,a5,832 # 80005d70 <_ZZN9Scheduler8instanceEvE8instance>
    80001a38:	0007b023          	sd	zero,0(a5)
    80001a3c:	0007b423          	sd	zero,8(a5)
    static Scheduler& instance(){static Scheduler instance; return instance;}
    80001a40:	00100793          	li	a5,1
    80001a44:	00004717          	auipc	a4,0x4
    80001a48:	2cf70e23          	sb	a5,732(a4) # 80005d20 <_ZGVZN9Scheduler8instanceEvE8instance>
    80001a4c:	0004b583          	ld	a1,0(s1)
    80001a50:	00004517          	auipc	a0,0x4
    80001a54:	32050513          	addi	a0,a0,800 # 80005d70 <_ZZN9Scheduler8instanceEvE8instance>
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	32c080e7          	jalr	812(ra) # 80001d84 <_ZN9Scheduler3putEP6Thread>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001a60:	00000793          	li	a5,0
    80001a64:	00078513          	mv	a0,a5
    }
    80001a68:	f55ff06f          	j	800019bc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001a6c:	fff00793          	li	a5,-1
    80001a70:	00078513          	mv	a0,a5
    }
    80001a74:	f49ff06f          	j	800019bc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
				Thread::timeSliceCounter = 0;
    80001a78:	00004797          	auipc	a5,0x4
    80001a7c:	2a07bc23          	sd	zero,696(a5) # 80005d30 <_ZN6Thread16timeSliceCounterE>
				if (Thread::running) {
    80001a80:	00004797          	auipc	a5,0x4
    80001a84:	2b87b783          	ld	a5,696(a5) # 80005d38 <_ZN6Thread7runningE>
    80001a88:	02078063          	beqz	a5,80001aa8 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x1d4>
	
	uint64 getTimeSlice() const {
		return timeSlice;
	}
    void setFinished(bool finished){Thread::finished = finished;};
    80001a8c:	00100713          	li	a4,1
    80001a90:	04e780a3          	sb	a4,65(a5)
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001a94:	00000793          	li	a5,0
    80001a98:	00078513          	mv	a0,a5
				Thread::dispatch();
    80001a9c:	00001097          	auipc	ra,0x1
    80001aa0:	980080e7          	jalr	-1664(ra) # 8000241c <_ZN6Thread8dispatchEv>
				break;
    80001aa4:	f19ff06f          	j	800019bc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
    80001aa8:	fff00793          	li	a5,-1
    80001aac:	00078513          	mv	a0,a5
    }
    80001ab0:	fedff06f          	j	80001a9c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x1c8>
				Thread::timeSliceCounter = 0;
    80001ab4:	00004797          	auipc	a5,0x4
    80001ab8:	2607be23          	sd	zero,636(a5) # 80005d30 <_ZN6Thread16timeSliceCounterE>
				Thread::dispatch();
    80001abc:	00001097          	auipc	ra,0x1
    80001ac0:	960080e7          	jalr	-1696(ra) # 8000241c <_ZN6Thread8dispatchEv>
				break;
    80001ac4:	ef9ff06f          	j	800019bc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>

class Semaphore {
public:

    void* operator new(size_t size){
        void* ptr = MemoryAllocator::kmalloc(size);
    80001ac8:	02000513          	li	a0,32
    80001acc:	00000097          	auipc	ra,0x0
    80001ad0:	ae8080e7          	jalr	-1304(ra) # 800015b4 <_ZN15MemoryAllocator7kmallocEm>
    80001ad4:	00050993          	mv	s3,a0
				*handle = new Semaphore(a2);
    80001ad8:	0009059b          	sext.w	a1,s2
    80001adc:	00000097          	auipc	ra,0x0
    80001ae0:	320080e7          	jalr	800(ra) # 80001dfc <_ZN9SemaphoreC1Ei>
    80001ae4:	0134b023          	sd	s3,0(s1)
				if(*handle) {
    80001ae8:	00098863          	beqz	s3,80001af8 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x224>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001aec:	00000793          	li	a5,0
    80001af0:	00078513          	mv	a0,a5
    }
    80001af4:	ec9ff06f          	j	800019bc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001af8:	fff00793          	li	a5,-1
    80001afc:	00078513          	mv	a0,a5
    }
    80001b00:	ebdff06f          	j	800019bc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
				if (s == nullptr) {
    80001b04:	00049863          	bnez	s1,80001b14 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x240>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001b08:	fff00793          	li	a5,-1
    80001b0c:	00078513          	mv	a0,a5
    }
    80001b10:	eadff06f          	j	800019bc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
					writeARegister(0, s->close());
    80001b14:	00048513          	mv	a0,s1
    80001b18:	00000097          	auipc	ra,0x0
    80001b1c:	494080e7          	jalr	1172(ra) # 80001fac <_ZN9Semaphore5closeEv>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001b20:	00050513          	mv	a0,a0
					delete s;
    80001b24:	00048513          	mv	a0,s1
    80001b28:	00001097          	auipc	ra,0x1
    80001b2c:	84c080e7          	jalr	-1972(ra) # 80002374 <_ZdlPv>
    80001b30:	e8dff06f          	j	800019bc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
				if (s == nullptr) {
    80001b34:	00049863          	bnez	s1,80001b44 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x270>
    80001b38:	fff00793          	li	a5,-1
    80001b3c:	00078513          	mv	a0,a5
    }
    80001b40:	e7dff06f          	j	800019bc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
					writeARegister(0, s->wait());
    80001b44:	00048513          	mv	a0,s1
    80001b48:	00000097          	auipc	ra,0x0
    80001b4c:	318080e7          	jalr	792(ra) # 80001e60 <_ZN9Semaphore4waitEv>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001b50:	00050513          	mv	a0,a0
    }
    80001b54:	e69ff06f          	j	800019bc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
				if (s == nullptr) {
    80001b58:	00049863          	bnez	s1,80001b68 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x294>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001b5c:	fff00793          	li	a5,-1
    80001b60:	00078513          	mv	a0,a5
    }
    80001b64:	e59ff06f          	j	800019bc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
					writeARegister(0, s->signal());
    80001b68:	00048513          	mv	a0,s1
    80001b6c:	00000097          	auipc	ra,0x0
    80001b70:	3b0080e7          	jalr	944(ra) # 80001f1c <_ZN9Semaphore6signalEv>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001b74:	00050513          	mv	a0,a0
    }
    80001b78:	e45ff06f          	j	800019bc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
				if (Thread::running == nullptr) {
    80001b7c:	00004517          	auipc	a0,0x4
    80001b80:	1bc53503          	ld	a0,444(a0) # 80005d38 <_ZN6Thread7runningE>
    80001b84:	00050e63          	beqz	a0,80001ba0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x2cc>
					Thread::running -> time_sleep(a1);
    80001b88:	00048593          	mv	a1,s1
    80001b8c:	00001097          	auipc	ra,0x1
    80001b90:	964080e7          	jalr	-1692(ra) # 800024f0 <_ZN6Thread10time_sleepEm>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001b94:	00000793          	li	a5,0
    80001b98:	00078513          	mv	a0,a5
    }
    80001b9c:	e21ff06f          	j	800019bc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001ba0:	fff00793          	li	a5,-1
    80001ba4:	00078513          	mv	a0,a5
    }
    80001ba8:	e15ff06f          	j	800019bc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
				char c = Console::getc();
    80001bac:	fffff097          	auipc	ra,0xfffff
    80001bb0:	7a4080e7          	jalr	1956(ra) # 80001350 <_ZN7Console4getcEv>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001bb4:	00050513          	mv	a0,a0
    }
    80001bb8:	e05ff06f          	j	800019bc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
				Console::putc(c);
    80001bbc:	0ff4f513          	andi	a0,s1,255
    80001bc0:	fffff097          	auipc	ra,0xfffff
    80001bc4:	7dc080e7          	jalr	2012(ra) # 8000139c <_ZN7Console4putcEc>
				break;
    80001bc8:	df5ff06f          	j	800019bc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
    	int irq = plic_claim(); // Potvrđujemo prekid PLIC kontroleru
    80001bcc:	00001097          	auipc	ra,0x1
    80001bd0:	3f8080e7          	jalr	1016(ra) # 80002fc4 <plic_claim>
    80001bd4:	00050913          	mv	s2,a0
    	if (irq == CONSOLE_IRQ) { // Proveravamo da li je prekid stigao baš sa konzole (obično 10)
    80001bd8:	00a00793          	li	a5,10
    80001bdc:	04f50263          	beq	a0,a5,80001c20 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x34c>
    	plic_complete(irq); // Obaveštavamo PLIC da je obrada završena
    80001be0:	00090513          	mv	a0,s2
    80001be4:	00001097          	auipc	ra,0x1
    80001be8:	418080e7          	jalr	1048(ra) # 80002ffc <plic_complete>
    80001bec:	de1ff06f          	j	800019cc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xf8>
    		char c = *((volatile uint8*)CONSOLE_RX_DATA);
    80001bf0:	00003797          	auipc	a5,0x3
    80001bf4:	4107b783          	ld	a5,1040(a5) # 80005000 <CONSOLE_RX_DATA>
    80001bf8:	0007c583          	lbu	a1,0(a5)
    		Console::getInBuff()->put(c);
    80001bfc:	0ff5f593          	andi	a1,a1,255
    80001c00:	00004517          	auipc	a0,0x4
    80001c04:	10853503          	ld	a0,264(a0) # 80005d08 <_ZN7Console6inbuffE>
    80001c08:	fffff097          	auipc	ra,0xfffff
    80001c0c:	540080e7          	jalr	1344(ra) # 80001148 <_ZN6Buffer3putEc>
    		Console::getInSem()->signal();
    80001c10:	00004517          	auipc	a0,0x4
    80001c14:	0e853503          	ld	a0,232(a0) # 80005cf8 <_ZN7Console5inSemE>
    80001c18:	00000097          	auipc	ra,0x0
    80001c1c:	304080e7          	jalr	772(ra) # 80001f1c <_ZN9Semaphore6signalEv>
    	while ((*((volatile uint8*)CONSOLE_STATUS) & 0x01) && !Console::getInBuff()->isFull()) {
    80001c20:	00003497          	auipc	s1,0x3
    80001c24:	3f04b483          	ld	s1,1008(s1) # 80005010 <CONSOLE_STATUS>
    80001c28:	0004c783          	lbu	a5,0(s1)
    80001c2c:	0017f793          	andi	a5,a5,1
    80001c30:	00078c63          	beqz	a5,80001c48 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x374>
    80001c34:	00004517          	auipc	a0,0x4
    80001c38:	0d453503          	ld	a0,212(a0) # 80005d08 <_ZN7Console6inbuffE>
    80001c3c:	fffff097          	auipc	ra,0xfffff
    80001c40:	5a8080e7          	jalr	1448(ra) # 800011e4 <_ZN6Buffer6isFullEv>
    80001c44:	fa0506e3          	beqz	a0,80001bf0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x31c>
    	while ((*((volatile uint8*)CONSOLE_STATUS) & 0x20) && !Console::getOutBuff()->isEmpty()) {
    80001c48:	0004c783          	lbu	a5,0(s1)
    80001c4c:	0207f793          	andi	a5,a5,32
    80001c50:	f80788e3          	beqz	a5,80001be0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x30c>
    80001c54:	00004517          	auipc	a0,0x4
    80001c58:	0ac53503          	ld	a0,172(a0) # 80005d00 <_ZN7Console7outbuffE>
    80001c5c:	fffff097          	auipc	ra,0xfffff
    80001c60:	5ac080e7          	jalr	1452(ra) # 80001208 <_ZN6Buffer7isEmptyEv>
    80001c64:	f6051ee3          	bnez	a0,80001be0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x30c>
    		char c = Console::getOutBuff()->get();
    80001c68:	00004517          	auipc	a0,0x4
    80001c6c:	09853503          	ld	a0,152(a0) # 80005d00 <_ZN7Console7outbuffE>
    80001c70:	fffff097          	auipc	ra,0xfffff
    80001c74:	524080e7          	jalr	1316(ra) # 80001194 <_ZN6Buffer3getEv>
    		*((volatile uint8*)CONSOLE_TX_DATA) = (uint8)c;
    80001c78:	00003797          	auipc	a5,0x3
    80001c7c:	3907b783          	ld	a5,912(a5) # 80005008 <CONSOLE_TX_DATA>
    80001c80:	00a78023          	sb	a0,0(a5)
    		Console::getOutSem()->signal();
    80001c84:	00004517          	auipc	a0,0x4
    80001c88:	06c53503          	ld	a0,108(a0) # 80005cf0 <_ZN7Console6outSemE>
    80001c8c:	00000097          	auipc	ra,0x0
    80001c90:	290080e7          	jalr	656(ra) # 80001f1c <_ZN9Semaphore6signalEv>
    	while ((*((volatile uint8*)CONSOLE_STATUS) & 0x20) && !Console::getOutBuff()->isEmpty()) {
    80001c94:	fb5ff06f          	j	80001c48 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x374>
    			Scheduler::instance().put(t);
    80001c98:	00004517          	auipc	a0,0x4
    80001c9c:	0d850513          	addi	a0,a0,216 # 80005d70 <_ZZN9Scheduler8instanceEvE8instance>
    80001ca0:	00000097          	auipc	ra,0x0
    80001ca4:	0e4080e7          	jalr	228(ra) # 80001d84 <_ZN9Scheduler3putEP6Thread>
    		while (Thread::sleepingHead && Thread::sleepingHead -> timeSleeping == 0) {
    80001ca8:	00004597          	auipc	a1,0x4
    80001cac:	0805b583          	ld	a1,128(a1) # 80005d28 <_ZN6Thread12sleepingHeadE>
    80001cb0:	04058863          	beqz	a1,80001d00 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x42c>
    80001cb4:	0485b783          	ld	a5,72(a1)
    80001cb8:	04079463          	bnez	a5,80001d00 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x42c>
    			Thread::sleepingHead = t->waitnext;
    80001cbc:	0085b783          	ld	a5,8(a1)
    80001cc0:	00004717          	auipc	a4,0x4
    80001cc4:	06f73423          	sd	a5,104(a4) # 80005d28 <_ZN6Thread12sleepingHeadE>
    			t->waitnext = nullptr;
    80001cc8:	0005b423          	sd	zero,8(a1)
    			t->isReady = true;
    80001ccc:	00100793          	li	a5,1
    80001cd0:	04f58023          	sb	a5,64(a1)
    80001cd4:	00004797          	auipc	a5,0x4
    80001cd8:	04c7c783          	lbu	a5,76(a5) # 80005d20 <_ZGVZN9Scheduler8instanceEvE8instance>
    80001cdc:	fa079ee3          	bnez	a5,80001c98 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x3c4>
    Scheduler():head(nullptr), tail(nullptr){};
    80001ce0:	00004797          	auipc	a5,0x4
    80001ce4:	09078793          	addi	a5,a5,144 # 80005d70 <_ZZN9Scheduler8instanceEvE8instance>
    80001ce8:	0007b023          	sd	zero,0(a5)
    80001cec:	0007b423          	sd	zero,8(a5)
    static Scheduler& instance(){static Scheduler instance; return instance;}
    80001cf0:	00100793          	li	a5,1
    80001cf4:	00004717          	auipc	a4,0x4
    80001cf8:	02f70623          	sb	a5,44(a4) # 80005d20 <_ZGVZN9Scheduler8instanceEvE8instance>
    80001cfc:	f9dff06f          	j	80001c98 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x3c4>
    if(Thread::timeSliceCounter >= Thread::running -> getTimeSlice())
    80001d00:	00004797          	auipc	a5,0x4
    80001d04:	0387b783          	ld	a5,56(a5) # 80005d38 <_ZN6Thread7runningE>
		return timeSlice;
    80001d08:	0387b783          	ld	a5,56(a5)
    80001d0c:	00004717          	auipc	a4,0x4
    80001d10:	02473703          	ld	a4,36(a4) # 80005d30 <_ZN6Thread16timeSliceCounterE>
    80001d14:	00f77863          	bgeu	a4,a5,80001d24 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x450>
        __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001d18:	00200793          	li	a5,2
    80001d1c:	1447b073          	csrc	sip,a5
}
    80001d20:	cadff06f          	j	800019cc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xf8>
        __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d24:	141027f3          	csrr	a5,sepc
    80001d28:	fcf43423          	sd	a5,-56(s0)
        return sepc;
    80001d2c:	fc843783          	ld	a5,-56(s0)
    	uint64 volatile sepc = r_sepc();
    80001d30:	f8f43c23          	sd	a5,-104(s0)
        __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d34:	100027f3          	csrr	a5,sstatus
    80001d38:	fcf43023          	sd	a5,-64(s0)
        return sstatus;
    80001d3c:	fc043783          	ld	a5,-64(s0)
    	uint64 volatile sstatus = r_sstatus();
    80001d40:	faf43023          	sd	a5,-96(s0)
    	Thread::timeSliceCounter = 0;
    80001d44:	00004797          	auipc	a5,0x4
    80001d48:	fe07b623          	sd	zero,-20(a5) # 80005d30 <_ZN6Thread16timeSliceCounterE>
    	Thread::dispatch();
    80001d4c:	00000097          	auipc	ra,0x0
    80001d50:	6d0080e7          	jalr	1744(ra) # 8000241c <_ZN6Thread8dispatchEv>
    	w_sstatus(sstatus);
    80001d54:	fa043783          	ld	a5,-96(s0)
        __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001d58:	10079073          	csrw	sstatus,a5
    	w_sepc(sepc);
    80001d5c:	f9843783          	ld	a5,-104(s0)
        __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d60:	14179073          	csrw	sepc,a5
    }
    80001d64:	fb5ff06f          	j	80001d18 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x444>
				*handle = new Semaphore(a2);
    80001d68:	00050493          	mv	s1,a0
    80001d6c:	00098513          	mv	a0,s3
    80001d70:	00000097          	auipc	ra,0x0
    80001d74:	604080e7          	jalr	1540(ra) # 80002374 <_ZdlPv>
    80001d78:	00048513          	mv	a0,s1
    80001d7c:	00005097          	auipc	ra,0x5
    80001d80:	0cc080e7          	jalr	204(ra) # 80006e48 <_Unwind_Resume>

0000000080001d84 <_ZN9Scheduler3putEP6Thread>:
#include "../h/Scheduler.h"

#include "../h/Thread.h"
#include "../h/printer.h"

void Scheduler::put(Thread* t) {
    80001d84:	ff010113          	addi	sp,sp,-16
    80001d88:	00813423          	sd	s0,8(sp)
    80001d8c:	01010413          	addi	s0,sp,16
    if (!t) return;
    80001d90:	00058e63          	beqz	a1,80001dac <_ZN9Scheduler3putEP6Thread+0x28>
    t->next = nullptr;
    80001d94:	0005b023          	sd	zero,0(a1)

    if (!head) {
    80001d98:	00053783          	ld	a5,0(a0)
    80001d9c:	00078e63          	beqz	a5,80001db8 <_ZN9Scheduler3putEP6Thread+0x34>
        head = t;
    } else {
        tail->next = t;
    80001da0:	00853783          	ld	a5,8(a0)
    80001da4:	00b7b023          	sd	a1,0(a5)
    }
    tail = t;
    80001da8:	00b53423          	sd	a1,8(a0)
}
    80001dac:	00813403          	ld	s0,8(sp)
    80001db0:	01010113          	addi	sp,sp,16
    80001db4:	00008067          	ret
        head = t;
    80001db8:	00b53023          	sd	a1,0(a0)
    80001dbc:	fedff06f          	j	80001da8 <_ZN9Scheduler3putEP6Thread+0x24>

0000000080001dc0 <_ZN9Scheduler3getEv>:

Thread* Scheduler::get() {
    80001dc0:	ff010113          	addi	sp,sp,-16
    80001dc4:	00813423          	sd	s0,8(sp)
    80001dc8:	01010413          	addi	s0,sp,16
    80001dcc:	00050793          	mv	a5,a0
    if (!head) {
    80001dd0:	00053503          	ld	a0,0(a0)
    80001dd4:	00050a63          	beqz	a0,80001de8 <_ZN9Scheduler3getEv+0x28>
        return nullptr;
    }

    Thread* t = head;
    head = head->next;
    80001dd8:	00053703          	ld	a4,0(a0)
    80001ddc:	00e7b023          	sd	a4,0(a5)

    if (!head) {
    80001de0:	00070a63          	beqz	a4,80001df4 <_ZN9Scheduler3getEv+0x34>
        tail = nullptr;
    }

    t->next = nullptr;
    80001de4:	00053023          	sd	zero,0(a0)
    return t;
    80001de8:	00813403          	ld	s0,8(sp)
    80001dec:	01010113          	addi	sp,sp,16
    80001df0:	00008067          	ret
        tail = nullptr;
    80001df4:	0007b423          	sd	zero,8(a5)
    80001df8:	fedff06f          	j	80001de4 <_ZN9Scheduler3getEv+0x24>

0000000080001dfc <_ZN9SemaphoreC1Ei>:
#include "../h/Semaphore.h"
#include "../h/Thread.h"

Semaphore::Semaphore(int init):val(init), head(nullptr), tail(nullptr), closed(false) {
    80001dfc:	ff010113          	addi	sp,sp,-16
    80001e00:	00813423          	sd	s0,8(sp)
    80001e04:	01010413          	addi	s0,sp,16
    80001e08:	00b52023          	sw	a1,0(a0)
    80001e0c:	00053423          	sd	zero,8(a0)
    80001e10:	00053823          	sd	zero,16(a0)
    80001e14:	00050c23          	sb	zero,24(a0)
}
    80001e18:	00813403          	ld	s0,8(sp)
    80001e1c:	01010113          	addi	sp,sp,16
    80001e20:	00008067          	ret

0000000080001e24 <_ZN9Semaphore3addEP6Thread>:
    }

    return 0;
}

void Semaphore::add(Thread* t) {
    80001e24:	ff010113          	addi	sp,sp,-16
    80001e28:	00813423          	sd	s0,8(sp)
    80001e2c:	01010413          	addi	s0,sp,16
    if (!t) return;
    80001e30:	00058e63          	beqz	a1,80001e4c <_ZN9Semaphore3addEP6Thread+0x28>
    t->waitnext = nullptr;
    80001e34:	0005b423          	sd	zero,8(a1)

    if (!head) {
    80001e38:	00853783          	ld	a5,8(a0)
    80001e3c:	00078e63          	beqz	a5,80001e58 <_ZN9Semaphore3addEP6Thread+0x34>
        head = t;
    } else {
        tail->waitnext = t;
    80001e40:	01053783          	ld	a5,16(a0)
    80001e44:	00b7b423          	sd	a1,8(a5)
    }
    tail = t;
    80001e48:	00b53823          	sd	a1,16(a0)
}
    80001e4c:	00813403          	ld	s0,8(sp)
    80001e50:	01010113          	addi	sp,sp,16
    80001e54:	00008067          	ret
        head = t;
    80001e58:	00b53423          	sd	a1,8(a0)
    80001e5c:	fedff06f          	j	80001e48 <_ZN9Semaphore3addEP6Thread+0x24>

0000000080001e60 <_ZN9Semaphore4waitEv>:
    if (!Thread::running) return -1;
    80001e60:	00004597          	auipc	a1,0x4
    80001e64:	ed85b583          	ld	a1,-296(a1) # 80005d38 <_ZN6Thread7runningE>
    80001e68:	06058463          	beqz	a1,80001ed0 <_ZN9Semaphore4waitEv+0x70>
    if (val > 0) {
    80001e6c:	00052783          	lw	a5,0(a0)
    80001e70:	00f05a63          	blez	a5,80001e84 <_ZN9Semaphore4waitEv+0x24>
        val--;
    80001e74:	fff7879b          	addiw	a5,a5,-1
    80001e78:	00f52023          	sw	a5,0(a0)
    return 0;
    80001e7c:	00000513          	li	a0,0
    80001e80:	00008067          	ret
int Semaphore::wait() {
    80001e84:	ff010113          	addi	sp,sp,-16
    80001e88:	00113423          	sd	ra,8(sp)
    80001e8c:	00813023          	sd	s0,0(sp)
    80001e90:	01010413          	addi	s0,sp,16
        Thread::running->isReady = false;
    80001e94:	04058023          	sb	zero,64(a1)
        Thread::running->semStatus = 0;
    80001e98:	0405a223          	sw	zero,68(a1)
        add(Thread::running);
    80001e9c:	00000097          	auipc	ra,0x0
    80001ea0:	f88080e7          	jalr	-120(ra) # 80001e24 <_ZN9Semaphore3addEP6Thread>
        Thread::dispatch();
    80001ea4:	00000097          	auipc	ra,0x0
    80001ea8:	578080e7          	jalr	1400(ra) # 8000241c <_ZN6Thread8dispatchEv>
        if (Thread::running->semStatus < 0) {
    80001eac:	00004797          	auipc	a5,0x4
    80001eb0:	e8c7b783          	ld	a5,-372(a5) # 80005d38 <_ZN6Thread7runningE>
    80001eb4:	0447a783          	lw	a5,68(a5)
    80001eb8:	0207c063          	bltz	a5,80001ed8 <_ZN9Semaphore4waitEv+0x78>
    return 0;
    80001ebc:	00000513          	li	a0,0
}
    80001ec0:	00813083          	ld	ra,8(sp)
    80001ec4:	00013403          	ld	s0,0(sp)
    80001ec8:	01010113          	addi	sp,sp,16
    80001ecc:	00008067          	ret
    if (!Thread::running) return -1;
    80001ed0:	fff00513          	li	a0,-1
}
    80001ed4:	00008067          	ret
            return -1;
    80001ed8:	fff00513          	li	a0,-1
    80001edc:	fe5ff06f          	j	80001ec0 <_ZN9Semaphore4waitEv+0x60>

0000000080001ee0 <_ZN9Semaphore3getEv>:
Thread* Semaphore::get() {
    80001ee0:	ff010113          	addi	sp,sp,-16
    80001ee4:	00813423          	sd	s0,8(sp)
    80001ee8:	01010413          	addi	s0,sp,16
    80001eec:	00050793          	mv	a5,a0
    if (!head) {
    80001ef0:	00853503          	ld	a0,8(a0)
    80001ef4:	00050a63          	beqz	a0,80001f08 <_ZN9Semaphore3getEv+0x28>
        return nullptr;
    }

    Thread* t = head;
    head = head->waitnext;
    80001ef8:	00853703          	ld	a4,8(a0)
    80001efc:	00e7b423          	sd	a4,8(a5)

    if (!head) {
    80001f00:	00070a63          	beqz	a4,80001f14 <_ZN9Semaphore3getEv+0x34>
        tail = nullptr;
    }

    t->waitnext = nullptr;
    80001f04:	00053423          	sd	zero,8(a0)
    return t;
}
    80001f08:	00813403          	ld	s0,8(sp)
    80001f0c:	01010113          	addi	sp,sp,16
    80001f10:	00008067          	ret
        tail = nullptr;
    80001f14:	0007b823          	sd	zero,16(a5)
    80001f18:	fedff06f          	j	80001f04 <_ZN9Semaphore3getEv+0x24>

0000000080001f1c <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80001f1c:	fe010113          	addi	sp,sp,-32
    80001f20:	00113c23          	sd	ra,24(sp)
    80001f24:	00813823          	sd	s0,16(sp)
    80001f28:	00913423          	sd	s1,8(sp)
    80001f2c:	02010413          	addi	s0,sp,32
    80001f30:	00050493          	mv	s1,a0
    Thread* t = get();
    80001f34:	00000097          	auipc	ra,0x0
    80001f38:	fac080e7          	jalr	-84(ra) # 80001ee0 <_ZN9Semaphore3getEv>
    if (t) {
    80001f3c:	06050063          	beqz	a0,80001f9c <_ZN9Semaphore6signalEv+0x80>
    80001f40:	00050593          	mv	a1,a0
        t->isReady = true;
    80001f44:	00100793          	li	a5,1
    80001f48:	04f50023          	sb	a5,64(a0)
    80001f4c:	00004797          	auipc	a5,0x4
    80001f50:	dd47c783          	lbu	a5,-556(a5) # 80005d20 <_ZGVZN9Scheduler8instanceEvE8instance>
    80001f54:	02079063          	bnez	a5,80001f74 <_ZN9Semaphore6signalEv+0x58>
    Scheduler():head(nullptr), tail(nullptr){};
    80001f58:	00004797          	auipc	a5,0x4
    80001f5c:	e1878793          	addi	a5,a5,-488 # 80005d70 <_ZZN9Scheduler8instanceEvE8instance>
    80001f60:	0007b023          	sd	zero,0(a5)
    80001f64:	0007b423          	sd	zero,8(a5)
    static Scheduler& instance(){static Scheduler instance; return instance;}
    80001f68:	00100793          	li	a5,1
    80001f6c:	00004717          	auipc	a4,0x4
    80001f70:	daf70a23          	sb	a5,-588(a4) # 80005d20 <_ZGVZN9Scheduler8instanceEvE8instance>
        Scheduler::instance().put(t);
    80001f74:	00004517          	auipc	a0,0x4
    80001f78:	dfc50513          	addi	a0,a0,-516 # 80005d70 <_ZZN9Scheduler8instanceEvE8instance>
    80001f7c:	00000097          	auipc	ra,0x0
    80001f80:	e08080e7          	jalr	-504(ra) # 80001d84 <_ZN9Scheduler3putEP6Thread>
}
    80001f84:	00000513          	li	a0,0
    80001f88:	01813083          	ld	ra,24(sp)
    80001f8c:	01013403          	ld	s0,16(sp)
    80001f90:	00813483          	ld	s1,8(sp)
    80001f94:	02010113          	addi	sp,sp,32
    80001f98:	00008067          	ret
        val++;
    80001f9c:	0004a783          	lw	a5,0(s1)
    80001fa0:	0017879b          	addiw	a5,a5,1
    80001fa4:	00f4a023          	sw	a5,0(s1)
    80001fa8:	fddff06f          	j	80001f84 <_ZN9Semaphore6signalEv+0x68>

0000000080001fac <_ZN9Semaphore5closeEv>:

int Semaphore::close() {
    80001fac:	fe010113          	addi	sp,sp,-32
    80001fb0:	00113c23          	sd	ra,24(sp)
    80001fb4:	00813823          	sd	s0,16(sp)
    80001fb8:	00913423          	sd	s1,8(sp)
    80001fbc:	02010413          	addi	s0,sp,32
    80001fc0:	00050493          	mv	s1,a0
    closed = true;
    80001fc4:	00100793          	li	a5,1
    80001fc8:	00f50c23          	sb	a5,24(a0)

    while (head) {
    80001fcc:	0084b783          	ld	a5,8(s1)
    80001fd0:	06078263          	beqz	a5,80002034 <_ZN9Semaphore5closeEv+0x88>
        Thread* t = get();
    80001fd4:	00048513          	mv	a0,s1
    80001fd8:	00000097          	auipc	ra,0x0
    80001fdc:	f08080e7          	jalr	-248(ra) # 80001ee0 <_ZN9Semaphore3getEv>
        if (t) {
    80001fe0:	fe0506e3          	beqz	a0,80001fcc <_ZN9Semaphore5closeEv+0x20>
            t->isReady = true;
    80001fe4:	00100793          	li	a5,1
    80001fe8:	04f50023          	sb	a5,64(a0)

            t->semStatus = -1;
    80001fec:	fff00793          	li	a5,-1
    80001ff0:	04f52223          	sw	a5,68(a0)
    80001ff4:	00004797          	auipc	a5,0x4
    80001ff8:	d2c7c783          	lbu	a5,-724(a5) # 80005d20 <_ZGVZN9Scheduler8instanceEvE8instance>
    80001ffc:	02079063          	bnez	a5,8000201c <_ZN9Semaphore5closeEv+0x70>
    Scheduler():head(nullptr), tail(nullptr){};
    80002000:	00004797          	auipc	a5,0x4
    80002004:	d7078793          	addi	a5,a5,-656 # 80005d70 <_ZZN9Scheduler8instanceEvE8instance>
    80002008:	0007b023          	sd	zero,0(a5)
    8000200c:	0007b423          	sd	zero,8(a5)
    static Scheduler& instance(){static Scheduler instance; return instance;}
    80002010:	00100793          	li	a5,1
    80002014:	00004717          	auipc	a4,0x4
    80002018:	d0f70623          	sb	a5,-756(a4) # 80005d20 <_ZGVZN9Scheduler8instanceEvE8instance>

            Scheduler::instance().put(t);
    8000201c:	00050593          	mv	a1,a0
    80002020:	00004517          	auipc	a0,0x4
    80002024:	d5050513          	addi	a0,a0,-688 # 80005d70 <_ZZN9Scheduler8instanceEvE8instance>
    80002028:	00000097          	auipc	ra,0x0
    8000202c:	d5c080e7          	jalr	-676(ra) # 80001d84 <_ZN9Scheduler3putEP6Thread>
    80002030:	f9dff06f          	j	80001fcc <_ZN9Semaphore5closeEv+0x20>
        }
    }

    return 0;
    80002034:	00000513          	li	a0,0
    80002038:	01813083          	ld	ra,24(sp)
    8000203c:	01013403          	ld	s0,16(sp)
    80002040:	00813483          	ld	s1,8(sp)
    80002044:	02010113          	addi	sp,sp,32
    80002048:	00008067          	ret

000000008000204c <_Z9mem_allocm>:
#include "../h/syscall_c.h"
#include  "../h/riscv.h"
#include "../lib/mem.h"
void *mem_alloc(size_t size) {
    8000204c:	fe010113          	addi	sp,sp,-32
    80002050:	00813c23          	sd	s0,24(sp)
    80002054:	02010413          	addi	s0,sp,32
    size_t blocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002058:	03f50513          	addi	a0,a0,63
    8000205c:	00655513          	srli	a0,a0,0x6
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80002060:	00050593          	mv	a1,a0
    80002064:	00100793          	li	a5,1
    80002068:	00078513          	mv	a0,a5

    Riscv::writeARegister(1, blocks);
    Riscv::writeARegister(0, 0x01);

    __asm__ volatile("ecall");
    8000206c:	00000073          	ecall
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    80002070:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80002074:	fef43423          	sd	a5,-24(s0)
    return (void*) a0;
    80002078:	fe843503          	ld	a0,-24(s0)


}
    8000207c:	01813403          	ld	s0,24(sp)
    80002080:	02010113          	addi	sp,sp,32
    80002084:	00008067          	ret

0000000080002088 <_Z8mem_freePv>:

int mem_free (void* ptr) {
    80002088:	fe010113          	addi	sp,sp,-32
    8000208c:	00813c23          	sd	s0,24(sp)
    80002090:	02010413          	addi	s0,sp,32
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80002094:	00050593          	mv	a1,a0
    80002098:	00200793          	li	a5,2
    8000209c:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)ptr);
    Riscv::writeARegister(0, 0x02);

    __asm__ volatile("ecall");
    800020a0:	00000073          	ecall
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    800020a4:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    800020a8:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    800020ac:	fe843503          	ld	a0,-24(s0)
}
    800020b0:	0005051b          	sext.w	a0,a0
    800020b4:	01813403          	ld	s0,24(sp)
    800020b8:	02010113          	addi	sp,sp,32
    800020bc:	00008067          	ret

00000000800020c0 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void(*start_routine)(void *), void *arg) {
    800020c0:	fc010113          	addi	sp,sp,-64
    800020c4:	02113c23          	sd	ra,56(sp)
    800020c8:	02813823          	sd	s0,48(sp)
    800020cc:	02913423          	sd	s1,40(sp)
    800020d0:	03213023          	sd	s2,32(sp)
    800020d4:	01313c23          	sd	s3,24(sp)
    800020d8:	04010413          	addi	s0,sp,64
    800020dc:	00050913          	mv	s2,a0
    800020e0:	00058493          	mv	s1,a1
    800020e4:	00060993          	mv	s3,a2
    void* volatile stack = nullptr;
    800020e8:	fc043423          	sd	zero,-56(s0)
    if (start_routine) {
    800020ec:	00058a63          	beqz	a1,80002100 <_Z13thread_createPP7_threadPFvPvES2_+0x40>
        stack = mem_alloc(DEFAULT_STACK_SIZE);
    800020f0:	00001537          	lui	a0,0x1
    800020f4:	00000097          	auipc	ra,0x0
    800020f8:	f58080e7          	jalr	-168(ra) # 8000204c <_Z9mem_allocm>
    800020fc:	fca43423          	sd	a0,-56(s0)
    }


    Riscv::writeARegister(4, (uint64)stack);
    80002100:	fc843783          	ld	a5,-56(s0)
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80002104:	00078713          	mv	a4,a5
    80002108:	00098693          	mv	a3,s3
    8000210c:	00048613          	mv	a2,s1
    80002110:	00090593          	mv	a1,s2
    80002114:	01100793          	li	a5,17
    80002118:	00078513          	mv	a0,a5
    Riscv::writeARegister(2, (uint64)start_routine);
    Riscv::writeARegister(1, (uint64)handle);

    Riscv::writeARegister(0, 0x11);

    __asm__ volatile("ecall");
    8000211c:	00000073          	ecall
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    80002120:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80002124:	fcf43023          	sd	a5,-64(s0)
    return (int) a0;
    80002128:	fc043503          	ld	a0,-64(s0)
}
    8000212c:	0005051b          	sext.w	a0,a0
    80002130:	03813083          	ld	ra,56(sp)
    80002134:	03013403          	ld	s0,48(sp)
    80002138:	02813483          	ld	s1,40(sp)
    8000213c:	02013903          	ld	s2,32(sp)
    80002140:	01813983          	ld	s3,24(sp)
    80002144:	04010113          	addi	sp,sp,64
    80002148:	00008067          	ret

000000008000214c <_Z15thread_dispatchv>:

void thread_dispatch() {
    8000214c:	ff010113          	addi	sp,sp,-16
    80002150:	00813423          	sd	s0,8(sp)
    80002154:	01010413          	addi	s0,sp,16
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80002158:	01300793          	li	a5,19
    8000215c:	00078513          	mv	a0,a5
    Riscv::writeARegister(0, 0x13);

    __asm__ volatile("ecall");
    80002160:	00000073          	ecall

}
    80002164:	00813403          	ld	s0,8(sp)
    80002168:	01010113          	addi	sp,sp,16
    8000216c:	00008067          	ret

0000000080002170 <_Z11thread_exitv>:

int thread_exit() {
    80002170:	fe010113          	addi	sp,sp,-32
    80002174:	00813c23          	sd	s0,24(sp)
    80002178:	02010413          	addi	s0,sp,32
    8000217c:	01200793          	li	a5,18
    80002180:	00078513          	mv	a0,a5
    Riscv::writeARegister(0, 0x12);

    __asm__ volatile("ecall");
    80002184:	00000073          	ecall
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    80002188:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    8000218c:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    80002190:	fe843503          	ld	a0,-24(s0)

}
    80002194:	0005051b          	sext.w	a0,a0
    80002198:	01813403          	ld	s0,24(sp)
    8000219c:	02010113          	addi	sp,sp,32
    800021a0:	00008067          	ret

00000000800021a4 <_Z8sem_openPP4_semj>:

int sem_open(sem_t*handle, unsigned init) {
    800021a4:	fe010113          	addi	sp,sp,-32
    800021a8:	00813c23          	sd	s0,24(sp)
    800021ac:	02010413          	addi	s0,sp,32
    Riscv::writeARegister(2, (uint64)init);
    800021b0:	02059593          	slli	a1,a1,0x20
    800021b4:	0205d593          	srli	a1,a1,0x20
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    800021b8:	00058613          	mv	a2,a1
    800021bc:	00050593          	mv	a1,a0
    800021c0:	02100793          	li	a5,33
    800021c4:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)handle);

    Riscv::writeARegister(0, 0x21);

    __asm__ volatile("ecall");
    800021c8:	00000073          	ecall
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    800021cc:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    800021d0:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    800021d4:	fe843503          	ld	a0,-24(s0)

}
    800021d8:	0005051b          	sext.w	a0,a0
    800021dc:	01813403          	ld	s0,24(sp)
    800021e0:	02010113          	addi	sp,sp,32
    800021e4:	00008067          	ret

00000000800021e8 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    800021e8:	fe010113          	addi	sp,sp,-32
    800021ec:	00813c23          	sd	s0,24(sp)
    800021f0:	02010413          	addi	s0,sp,32
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    800021f4:	00050593          	mv	a1,a0
    800021f8:	02200793          	li	a5,34
    800021fc:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)handle);

    Riscv::writeARegister(0, 0x22);

    __asm__ volatile("ecall");
    80002200:	00000073          	ecall
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    80002204:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80002208:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    8000220c:	fe843503          	ld	a0,-24(s0)
}
    80002210:	0005051b          	sext.w	a0,a0
    80002214:	01813403          	ld	s0,24(sp)
    80002218:	02010113          	addi	sp,sp,32
    8000221c:	00008067          	ret

0000000080002220 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    80002220:	fe010113          	addi	sp,sp,-32
    80002224:	00813c23          	sd	s0,24(sp)
    80002228:	02010413          	addi	s0,sp,32
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    8000222c:	00050593          	mv	a1,a0
    80002230:	02300793          	li	a5,35
    80002234:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)id);

    Riscv::writeARegister(0, 0x23);

    __asm__ volatile("ecall");
    80002238:	00000073          	ecall
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    8000223c:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80002240:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    80002244:	fe843503          	ld	a0,-24(s0)
}
    80002248:	0005051b          	sext.w	a0,a0
    8000224c:	01813403          	ld	s0,24(sp)
    80002250:	02010113          	addi	sp,sp,32
    80002254:	00008067          	ret

0000000080002258 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    80002258:	fe010113          	addi	sp,sp,-32
    8000225c:	00813c23          	sd	s0,24(sp)
    80002260:	02010413          	addi	s0,sp,32
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80002264:	00050593          	mv	a1,a0
    80002268:	02400793          	li	a5,36
    8000226c:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)id);

    Riscv::writeARegister(0, 0x24);

    __asm__ volatile("ecall");
    80002270:	00000073          	ecall
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    80002274:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80002278:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    8000227c:	fe843503          	ld	a0,-24(s0)
}
    80002280:	0005051b          	sext.w	a0,a0
    80002284:	01813403          	ld	s0,24(sp)
    80002288:	02010113          	addi	sp,sp,32
    8000228c:	00008067          	ret

0000000080002290 <_Z10time_sleepm>:

int time_sleep(time_t t) {
    80002290:	fe010113          	addi	sp,sp,-32
    80002294:	00813c23          	sd	s0,24(sp)
    80002298:	02010413          	addi	s0,sp,32
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    8000229c:	00050593          	mv	a1,a0
    800022a0:	03100793          	li	a5,49
    800022a4:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)t);
    Riscv::writeARegister(0, 0x31);

    __asm__ volatile("ecall");
    800022a8:	00000073          	ecall
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    800022ac:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    800022b0:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    800022b4:	fe843503          	ld	a0,-24(s0)
}
    800022b8:	0005051b          	sext.w	a0,a0
    800022bc:	01813403          	ld	s0,24(sp)
    800022c0:	02010113          	addi	sp,sp,32
    800022c4:	00008067          	ret

00000000800022c8 <_Z4getcv>:

char getc() {
    800022c8:	fe010113          	addi	sp,sp,-32
    800022cc:	00813c23          	sd	s0,24(sp)
    800022d0:	02010413          	addi	s0,sp,32
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    800022d4:	04100793          	li	a5,65
    800022d8:	00078513          	mv	a0,a5
    Riscv::writeARegister(0, 0x41);

    __asm__ volatile("ecall");
    800022dc:	00000073          	ecall
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    800022e0:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    800022e4:	fef43423          	sd	a5,-24(s0)
    return (char) a0;
    800022e8:	fe843503          	ld	a0,-24(s0)
}
    800022ec:	0ff57513          	andi	a0,a0,255
    800022f0:	01813403          	ld	s0,24(sp)
    800022f4:	02010113          	addi	sp,sp,32
    800022f8:	00008067          	ret

00000000800022fc <_Z4putcc>:

void putc(char c) {
    800022fc:	ff010113          	addi	sp,sp,-16
    80002300:	00813423          	sd	s0,8(sp)
    80002304:	01010413          	addi	s0,sp,16
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80002308:	00050593          	mv	a1,a0
    8000230c:	04200793          	li	a5,66
    80002310:	00078513          	mv	a0,a5

    Riscv::writeARegister(1, (uint64)c);
    Riscv::writeARegister(0, 0x42);

    __asm__ volatile("ecall");
    80002314:	00000073          	ecall

}
    80002318:	00813403          	ld	s0,8(sp)
    8000231c:	01010113          	addi	sp,sp,16
    80002320:	00008067          	ret

0000000080002324 <_Znwm>:

void* operator new(size_t size) {
    80002324:	ff010113          	addi	sp,sp,-16
    80002328:	00113423          	sd	ra,8(sp)
    8000232c:	00813023          	sd	s0,0(sp)
    80002330:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002334:	00000097          	auipc	ra,0x0
    80002338:	d18080e7          	jalr	-744(ra) # 8000204c <_Z9mem_allocm>
}
    8000233c:	00813083          	ld	ra,8(sp)
    80002340:	00013403          	ld	s0,0(sp)
    80002344:	01010113          	addi	sp,sp,16
    80002348:	00008067          	ret

000000008000234c <_Znam>:


void* operator new[](size_t size) {
    8000234c:	ff010113          	addi	sp,sp,-16
    80002350:	00113423          	sd	ra,8(sp)
    80002354:	00813023          	sd	s0,0(sp)
    80002358:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000235c:	00000097          	auipc	ra,0x0
    80002360:	cf0080e7          	jalr	-784(ra) # 8000204c <_Z9mem_allocm>
}
    80002364:	00813083          	ld	ra,8(sp)
    80002368:	00013403          	ld	s0,0(sp)
    8000236c:	01010113          	addi	sp,sp,16
    80002370:	00008067          	ret

0000000080002374 <_ZdlPv>:


void operator delete(void* ptr) noexcept {
    80002374:	ff010113          	addi	sp,sp,-16
    80002378:	00113423          	sd	ra,8(sp)
    8000237c:	00813023          	sd	s0,0(sp)
    80002380:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80002384:	00000097          	auipc	ra,0x0
    80002388:	d04080e7          	jalr	-764(ra) # 80002088 <_Z8mem_freePv>
}
    8000238c:	00813083          	ld	ra,8(sp)
    80002390:	00013403          	ld	s0,0(sp)
    80002394:	01010113          	addi	sp,sp,16
    80002398:	00008067          	ret

000000008000239c <_ZdaPv>:

void operator delete[](void* ptr) noexcept {
    8000239c:	ff010113          	addi	sp,sp,-16
    800023a0:	00113423          	sd	ra,8(sp)
    800023a4:	00813023          	sd	s0,0(sp)
    800023a8:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    800023ac:	00000097          	auipc	ra,0x0
    800023b0:	cdc080e7          	jalr	-804(ra) # 80002088 <_Z8mem_freePv>
    800023b4:	00813083          	ld	ra,8(sp)
    800023b8:	00013403          	ld	s0,0(sp)
    800023bc:	01010113          	addi	sp,sp,16
    800023c0:	00008067          	ret

00000000800023c4 <_ZN6Thread13threadWrapperEv>:
        context.ra = 0;
        context.sp = 0;
    }
}

void Thread::threadWrapper(){
    800023c4:	ff010113          	addi	sp,sp,-16
    800023c8:	00113423          	sd	ra,8(sp)
    800023cc:	00813023          	sd	s0,0(sp)
    800023d0:	01010413          	addi	s0,sp,16

Riscv::popSppSpie();
    800023d4:	fffff097          	auipc	ra,0xfffff
    800023d8:	4e0080e7          	jalr	1248(ra) # 800018b4 <_ZN5Riscv10popSppSpieEv>
if (running->body)running -> body(running->args);
    800023dc:	00004717          	auipc	a4,0x4
    800023e0:	95c73703          	ld	a4,-1700(a4) # 80005d38 <_ZN6Thread7runningE>
    800023e4:	01073783          	ld	a5,16(a4)
    800023e8:	00078663          	beqz	a5,800023f4 <_ZN6Thread13threadWrapperEv+0x30>
    800023ec:	01873503          	ld	a0,24(a4)
    800023f0:	000780e7          	jalr	a5
    void setFinished(bool finished){Thread::finished = finished;};
    800023f4:	00004797          	auipc	a5,0x4
    800023f8:	9447b783          	ld	a5,-1724(a5) # 80005d38 <_ZN6Thread7runningE>
    800023fc:	00100713          	li	a4,1
    80002400:	04e780a3          	sb	a4,65(a5)

running -> setFinished(true);

thread_dispatch();
    80002404:	00000097          	auipc	ra,0x0
    80002408:	d48080e7          	jalr	-696(ra) # 8000214c <_Z15thread_dispatchv>
}
    8000240c:	00813083          	ld	ra,8(sp)
    80002410:	00013403          	ld	s0,0(sp)
    80002414:	01010113          	addi	sp,sp,16
    80002418:	00008067          	ret

000000008000241c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000241c:	fe010113          	addi	sp,sp,-32
    80002420:	00113c23          	sd	ra,24(sp)
    80002424:	00813823          	sd	s0,16(sp)
    80002428:	00913423          	sd	s1,8(sp)
    8000242c:	02010413          	addi	s0,sp,32
    Thread* old = running;
    80002430:	00004497          	auipc	s1,0x4
    80002434:	9084b483          	ld	s1,-1784(s1) # 80005d38 <_ZN6Thread7runningE>
    if (old && !old->finished && old ->isReady) {
    80002438:	04048863          	beqz	s1,80002488 <_ZN6Thread8dispatchEv+0x6c>
    8000243c:	0414c783          	lbu	a5,65(s1)
    80002440:	04079463          	bnez	a5,80002488 <_ZN6Thread8dispatchEv+0x6c>
    80002444:	0404c783          	lbu	a5,64(s1)
    80002448:	04078063          	beqz	a5,80002488 <_ZN6Thread8dispatchEv+0x6c>
    8000244c:	00004797          	auipc	a5,0x4
    80002450:	8d47c783          	lbu	a5,-1836(a5) # 80005d20 <_ZGVZN9Scheduler8instanceEvE8instance>
    80002454:	02079063          	bnez	a5,80002474 <_ZN6Thread8dispatchEv+0x58>
    Scheduler():head(nullptr), tail(nullptr){};
    80002458:	00004797          	auipc	a5,0x4
    8000245c:	91878793          	addi	a5,a5,-1768 # 80005d70 <_ZZN9Scheduler8instanceEvE8instance>
    80002460:	0007b023          	sd	zero,0(a5)
    80002464:	0007b423          	sd	zero,8(a5)
    static Scheduler& instance(){static Scheduler instance; return instance;}
    80002468:	00100793          	li	a5,1
    8000246c:	00004717          	auipc	a4,0x4
    80002470:	8af70a23          	sb	a5,-1868(a4) # 80005d20 <_ZGVZN9Scheduler8instanceEvE8instance>
        Scheduler::instance().put(old);
    80002474:	00048593          	mv	a1,s1
    80002478:	00004517          	auipc	a0,0x4
    8000247c:	8f850513          	addi	a0,a0,-1800 # 80005d70 <_ZZN9Scheduler8instanceEvE8instance>
    80002480:	00000097          	auipc	ra,0x0
    80002484:	904080e7          	jalr	-1788(ra) # 80001d84 <_ZN9Scheduler3putEP6Thread>
    80002488:	00004797          	auipc	a5,0x4
    8000248c:	8987c783          	lbu	a5,-1896(a5) # 80005d20 <_ZGVZN9Scheduler8instanceEvE8instance>
    80002490:	02079063          	bnez	a5,800024b0 <_ZN6Thread8dispatchEv+0x94>
    Scheduler():head(nullptr), tail(nullptr){};
    80002494:	00004797          	auipc	a5,0x4
    80002498:	8dc78793          	addi	a5,a5,-1828 # 80005d70 <_ZZN9Scheduler8instanceEvE8instance>
    8000249c:	0007b023          	sd	zero,0(a5)
    800024a0:	0007b423          	sd	zero,8(a5)
    static Scheduler& instance(){static Scheduler instance; return instance;}
    800024a4:	00100793          	li	a5,1
    800024a8:	00004717          	auipc	a4,0x4
    800024ac:	86f70c23          	sb	a5,-1928(a4) # 80005d20 <_ZGVZN9Scheduler8instanceEvE8instance>
    running = Scheduler::instance().get();
    800024b0:	00004517          	auipc	a0,0x4
    800024b4:	8c050513          	addi	a0,a0,-1856 # 80005d70 <_ZZN9Scheduler8instanceEvE8instance>
    800024b8:	00000097          	auipc	ra,0x0
    800024bc:	908080e7          	jalr	-1784(ra) # 80001dc0 <_ZN9Scheduler3getEv>
    800024c0:	00004797          	auipc	a5,0x4
    800024c4:	86a7bc23          	sd	a0,-1928(a5) # 80005d38 <_ZN6Thread7runningE>
    if (old != running) {
    800024c8:	00a48a63          	beq	s1,a0,800024dc <_ZN6Thread8dispatchEv+0xc0>
        switchContext(&old->context, &running->context);
    800024cc:	02850593          	addi	a1,a0,40
    800024d0:	02848513          	addi	a0,s1,40
    800024d4:	fffff097          	auipc	ra,0xfffff
    800024d8:	c3c080e7          	jalr	-964(ra) # 80001110 <_ZN6Thread13switchContextEPNS_7ContextES1_>
}
    800024dc:	01813083          	ld	ra,24(sp)
    800024e0:	01013403          	ld	s0,16(sp)
    800024e4:	00813483          	ld	s1,8(sp)
    800024e8:	02010113          	addi	sp,sp,32
    800024ec:	00008067          	ret

00000000800024f0 <_ZN6Thread10time_sleepEm>:
    if (n == 0) return;
    800024f0:	08058663          	beqz	a1,8000257c <_ZN6Thread10time_sleepEm+0x8c>
void Thread::time_sleep(time_t n) {
    800024f4:	ff010113          	addi	sp,sp,-16
    800024f8:	00113423          	sd	ra,8(sp)
    800024fc:	00813023          	sd	s0,0(sp)
    80002500:	01010413          	addi	s0,sp,16
    Thread* curr = sleepingHead;
    80002504:	00004797          	auipc	a5,0x4
    80002508:	8247b783          	ld	a5,-2012(a5) # 80005d28 <_ZN6Thread12sleepingHeadE>
    Thread* prev = nullptr;
    8000250c:	00000693          	li	a3,0
    while (curr && n >= curr->timeSleeping) {
    80002510:	00078e63          	beqz	a5,8000252c <_ZN6Thread10time_sleepEm+0x3c>
    80002514:	0487b703          	ld	a4,72(a5)
    80002518:	00e5ea63          	bltu	a1,a4,8000252c <_ZN6Thread10time_sleepEm+0x3c>
        n -= curr->timeSleeping;
    8000251c:	40e585b3          	sub	a1,a1,a4
        prev = curr;
    80002520:	00078693          	mv	a3,a5
        curr = curr->waitnext;
    80002524:	0087b783          	ld	a5,8(a5)
    while (curr && n >= curr->timeSleeping) {
    80002528:	fe9ff06f          	j	80002510 <_ZN6Thread10time_sleepEm+0x20>
    Thread::running->timeSleeping = n;
    8000252c:	00004717          	auipc	a4,0x4
    80002530:	80c73703          	ld	a4,-2036(a4) # 80005d38 <_ZN6Thread7runningE>
    80002534:	04b73423          	sd	a1,72(a4)
    Thread::running->waitnext = curr;
    80002538:	00f73423          	sd	a5,8(a4)
    if (!prev) {
    8000253c:	02068a63          	beqz	a3,80002570 <_ZN6Thread10time_sleepEm+0x80>
        prev->waitnext = Thread::running;
    80002540:	00e6b423          	sd	a4,8(a3)
    if (curr) {
    80002544:	00078863          	beqz	a5,80002554 <_ZN6Thread10time_sleepEm+0x64>
        curr->timeSleeping -= n;
    80002548:	0487b683          	ld	a3,72(a5)
    8000254c:	40b685b3          	sub	a1,a3,a1
    80002550:	04b7b423          	sd	a1,72(a5)
    Thread::running->isReady = false;
    80002554:	04070023          	sb	zero,64(a4)
    Thread::dispatch();
    80002558:	00000097          	auipc	ra,0x0
    8000255c:	ec4080e7          	jalr	-316(ra) # 8000241c <_ZN6Thread8dispatchEv>
}
    80002560:	00813083          	ld	ra,8(sp)
    80002564:	00013403          	ld	s0,0(sp)
    80002568:	01010113          	addi	sp,sp,16
    8000256c:	00008067          	ret
        sleepingHead = Thread::running;
    80002570:	00003697          	auipc	a3,0x3
    80002574:	7ae6bc23          	sd	a4,1976(a3) # 80005d28 <_ZN6Thread12sleepingHeadE>
    80002578:	fcdff06f          	j	80002544 <_ZN6Thread10time_sleepEm+0x54>
    8000257c:	00008067          	ret

0000000080002580 <_ZN6ThreadC1EPFvPvES0_S0_m>:
Thread::Thread(Body body, void* args, void* stack_space ,uint64 time): next(nullptr), waitnext(nullptr), body(body), args(args), stack((uint64*)stack_space),
    80002580:	ff010113          	addi	sp,sp,-16
    80002584:	00813423          	sd	s0,8(sp)
    80002588:	01010413          	addi	s0,sp,16
                                                                       timeSlice(time), isReady(true), finished(false), semStatus(0), timeSleeping(0) {
    8000258c:	00053023          	sd	zero,0(a0)
    80002590:	00053423          	sd	zero,8(a0)
    80002594:	00b53823          	sd	a1,16(a0)
    80002598:	00c53c23          	sd	a2,24(a0)
    8000259c:	02d53023          	sd	a3,32(a0)
    800025a0:	02e53c23          	sd	a4,56(a0)
    800025a4:	00100793          	li	a5,1
    800025a8:	04f50023          	sb	a5,64(a0)
    800025ac:	040500a3          	sb	zero,65(a0)
    800025b0:	04052223          	sw	zero,68(a0)
    800025b4:	04053423          	sd	zero,72(a0)
    if (body != nullptr) {
    800025b8:	02058663          	beqz	a1,800025e4 <_ZN6ThreadC1EPFvPvES0_S0_m+0x64>
        context.ra = (uint64)&threadWrapper;
    800025bc:	00000797          	auipc	a5,0x0
    800025c0:	e0878793          	addi	a5,a5,-504 # 800023c4 <_ZN6Thread13threadWrapperEv>
    800025c4:	02f53423          	sd	a5,40(a0)
        context.sp = ((uint64)stack_space + DEFAULT_STACK_SIZE) & ~0xFUL;
    800025c8:	000017b7          	lui	a5,0x1
    800025cc:	00f686b3          	add	a3,a3,a5
    800025d0:	ff06f693          	andi	a3,a3,-16
    800025d4:	02d53823          	sd	a3,48(a0)
}
    800025d8:	00813403          	ld	s0,8(sp)
    800025dc:	01010113          	addi	sp,sp,16
    800025e0:	00008067          	ret
        context.ra = 0;
    800025e4:	02053423          	sd	zero,40(a0)
        context.sp = 0;
    800025e8:	02053823          	sd	zero,48(a0)
}
    800025ec:	fedff06f          	j	800025d8 <_ZN6ThreadC1EPFvPvES0_S0_m+0x58>

00000000800025f0 <_ZN6Thread12createThreadEPFvPvES0_S0_>:
Thread* Thread::createThread(Body body, void* args, void* stack) {
    800025f0:	fd010113          	addi	sp,sp,-48
    800025f4:	02113423          	sd	ra,40(sp)
    800025f8:	02813023          	sd	s0,32(sp)
    800025fc:	00913c23          	sd	s1,24(sp)
    80002600:	01213823          	sd	s2,16(sp)
    80002604:	01313423          	sd	s3,8(sp)
    80002608:	01413023          	sd	s4,0(sp)
    8000260c:	03010413          	addi	s0,sp,48
    80002610:	00050913          	mv	s2,a0
    80002614:	00058993          	mv	s3,a1
    80002618:	00060a13          	mv	s4,a2
		void* ptr = MemoryAllocator::kmalloc(size);
    8000261c:	05000513          	li	a0,80
    80002620:	fffff097          	auipc	ra,0xfffff
    80002624:	f94080e7          	jalr	-108(ra) # 800015b4 <_ZN15MemoryAllocator7kmallocEm>
    80002628:	00050493          	mv	s1,a0
    return new Thread(body, args, stack, DEFAULT_TIME_SLICE);
    8000262c:	00200713          	li	a4,2
    80002630:	000a0693          	mv	a3,s4
    80002634:	00098613          	mv	a2,s3
    80002638:	00090593          	mv	a1,s2
    8000263c:	00000097          	auipc	ra,0x0
    80002640:	f44080e7          	jalr	-188(ra) # 80002580 <_ZN6ThreadC1EPFvPvES0_S0_m>
}
    80002644:	00048513          	mv	a0,s1
    80002648:	02813083          	ld	ra,40(sp)
    8000264c:	02013403          	ld	s0,32(sp)
    80002650:	01813483          	ld	s1,24(sp)
    80002654:	01013903          	ld	s2,16(sp)
    80002658:	00813983          	ld	s3,8(sp)
    8000265c:	00013a03          	ld	s4,0(sp)
    80002660:	03010113          	addi	sp,sp,48
    80002664:	00008067          	ret

0000000080002668 <_Z11workerBodyAPv>:
#include "../lib/hw.h"
#include "../h/Thread.h"
#include "../h/printer.h"
#include  "../h/syscall_c.h"
void workerBodyA(void* arg) {
    80002668:	fe010113          	addi	sp,sp,-32
    8000266c:	00113c23          	sd	ra,24(sp)
    80002670:	00813823          	sd	s0,16(sp)
    80002674:	00913423          	sd	s1,8(sp)
    80002678:	01213023          	sd	s2,0(sp)
    8000267c:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 3; i++) {
    80002680:	00000913          	li	s2,0
    80002684:	05c0006f          	j	800026e0 <_Z11workerBodyAPv+0x78>
        printString("Nit A: krece na spavanje (10 tica)...\n");
    80002688:	00003517          	auipc	a0,0x3
    8000268c:	af050513          	addi	a0,a0,-1296 # 80005178 <_ZZ12printIntegermE6digits+0x118>
    80002690:	fffff097          	auipc	ra,0xfffff
    80002694:	148080e7          	jalr	328(ra) # 800017d8 <_Z11printStringPKc>

        // Testiramo povratnu vrednost (treba da bude 0)
        int res = time_sleep(10);
    80002698:	00a00513          	li	a0,10
    8000269c:	00000097          	auipc	ra,0x0
    800026a0:	bf4080e7          	jalr	-1036(ra) # 80002290 <_Z10time_sleepm>
    800026a4:	00050493          	mv	s1,a0

        printString("Nit A: se probudila! Status: ");
    800026a8:	00003517          	auipc	a0,0x3
    800026ac:	af850513          	addi	a0,a0,-1288 # 800051a0 <_ZZ12printIntegermE6digits+0x140>
    800026b0:	fffff097          	auipc	ra,0xfffff
    800026b4:	128080e7          	jalr	296(ra) # 800017d8 <_Z11printStringPKc>
        printInteger(res);
    800026b8:	00048513          	mv	a0,s1
    800026bc:	fffff097          	auipc	ra,0xfffff
    800026c0:	160080e7          	jalr	352(ra) # 8000181c <_Z12printIntegerm>
        printString("\n");
    800026c4:	00003517          	auipc	a0,0x3
    800026c8:	98450513          	addi	a0,a0,-1660 # 80005048 <CONSOLE_STATUS+0x38>
    800026cc:	fffff097          	auipc	ra,0xfffff
    800026d0:	10c080e7          	jalr	268(ra) # 800017d8 <_Z11printStringPKc>

        thread_dispatch();
    800026d4:	00000097          	auipc	ra,0x0
    800026d8:	a78080e7          	jalr	-1416(ra) # 8000214c <_Z15thread_dispatchv>
    for (int i = 0; i < 3; i++) {
    800026dc:	0019091b          	addiw	s2,s2,1
    800026e0:	00200793          	li	a5,2
    800026e4:	fb27d2e3          	bge	a5,s2,80002688 <_Z11workerBodyAPv+0x20>
    }
}
    800026e8:	01813083          	ld	ra,24(sp)
    800026ec:	01013403          	ld	s0,16(sp)
    800026f0:	00813483          	ld	s1,8(sp)
    800026f4:	00013903          	ld	s2,0(sp)
    800026f8:	02010113          	addi	sp,sp,32
    800026fc:	00008067          	ret

0000000080002700 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80002700:	fe010113          	addi	sp,sp,-32
    80002704:	00113c23          	sd	ra,24(sp)
    80002708:	00813823          	sd	s0,16(sp)
    8000270c:	00913423          	sd	s1,8(sp)
    80002710:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 3; i++) {
    80002714:	00000493          	li	s1,0
    80002718:	03c0006f          	j	80002754 <_Z11workerBodyBPv+0x54>
        printString("Nit B: krece na krace spavanje (5 tica)...\n");
    8000271c:	00003517          	auipc	a0,0x3
    80002720:	aa450513          	addi	a0,a0,-1372 # 800051c0 <_ZZ12printIntegermE6digits+0x160>
    80002724:	fffff097          	auipc	ra,0xfffff
    80002728:	0b4080e7          	jalr	180(ra) # 800017d8 <_Z11printStringPKc>

        time_sleep(5);
    8000272c:	00500513          	li	a0,5
    80002730:	00000097          	auipc	ra,0x0
    80002734:	b60080e7          	jalr	-1184(ra) # 80002290 <_Z10time_sleepm>

        printString("Nit B: se probudila!\n");
    80002738:	00003517          	auipc	a0,0x3
    8000273c:	ab850513          	addi	a0,a0,-1352 # 800051f0 <_ZZ12printIntegermE6digits+0x190>
    80002740:	fffff097          	auipc	ra,0xfffff
    80002744:	098080e7          	jalr	152(ra) # 800017d8 <_Z11printStringPKc>

        thread_dispatch();
    80002748:	00000097          	auipc	ra,0x0
    8000274c:	a04080e7          	jalr	-1532(ra) # 8000214c <_Z15thread_dispatchv>
    for (int i = 0; i < 3; i++) {
    80002750:	0014849b          	addiw	s1,s1,1
    80002754:	00200793          	li	a5,2
    80002758:	fc97d2e3          	bge	a5,s1,8000271c <_Z11workerBodyBPv+0x1c>
    }
}
    8000275c:	01813083          	ld	ra,24(sp)
    80002760:	01013403          	ld	s0,16(sp)
    80002764:	00813483          	ld	s1,8(sp)
    80002768:	02010113          	addi	sp,sp,32
    8000276c:	00008067          	ret

0000000080002770 <start>:
    80002770:	ff010113          	addi	sp,sp,-16
    80002774:	00813423          	sd	s0,8(sp)
    80002778:	01010413          	addi	s0,sp,16
    8000277c:	300027f3          	csrr	a5,mstatus
    80002780:	ffffe737          	lui	a4,0xffffe
    80002784:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff781f>
    80002788:	00e7f7b3          	and	a5,a5,a4
    8000278c:	00001737          	lui	a4,0x1
    80002790:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002794:	00e7e7b3          	or	a5,a5,a4
    80002798:	30079073          	csrw	mstatus,a5
    8000279c:	00000797          	auipc	a5,0x0
    800027a0:	16078793          	addi	a5,a5,352 # 800028fc <system_main>
    800027a4:	34179073          	csrw	mepc,a5
    800027a8:	00000793          	li	a5,0
    800027ac:	18079073          	csrw	satp,a5
    800027b0:	000107b7          	lui	a5,0x10
    800027b4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800027b8:	30279073          	csrw	medeleg,a5
    800027bc:	30379073          	csrw	mideleg,a5
    800027c0:	104027f3          	csrr	a5,sie
    800027c4:	2227e793          	ori	a5,a5,546
    800027c8:	10479073          	csrw	sie,a5
    800027cc:	fff00793          	li	a5,-1
    800027d0:	00a7d793          	srli	a5,a5,0xa
    800027d4:	3b079073          	csrw	pmpaddr0,a5
    800027d8:	00f00793          	li	a5,15
    800027dc:	3a079073          	csrw	pmpcfg0,a5
    800027e0:	f14027f3          	csrr	a5,mhartid
    800027e4:	0200c737          	lui	a4,0x200c
    800027e8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800027ec:	0007869b          	sext.w	a3,a5
    800027f0:	00269713          	slli	a4,a3,0x2
    800027f4:	000f4637          	lui	a2,0xf4
    800027f8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800027fc:	00d70733          	add	a4,a4,a3
    80002800:	0037979b          	slliw	a5,a5,0x3
    80002804:	020046b7          	lui	a3,0x2004
    80002808:	00d787b3          	add	a5,a5,a3
    8000280c:	00c585b3          	add	a1,a1,a2
    80002810:	00371693          	slli	a3,a4,0x3
    80002814:	00003717          	auipc	a4,0x3
    80002818:	56c70713          	addi	a4,a4,1388 # 80005d80 <timer_scratch>
    8000281c:	00b7b023          	sd	a1,0(a5)
    80002820:	00d70733          	add	a4,a4,a3
    80002824:	00f73c23          	sd	a5,24(a4)
    80002828:	02c73023          	sd	a2,32(a4)
    8000282c:	34071073          	csrw	mscratch,a4
    80002830:	00000797          	auipc	a5,0x0
    80002834:	6e078793          	addi	a5,a5,1760 # 80002f10 <timervec>
    80002838:	30579073          	csrw	mtvec,a5
    8000283c:	300027f3          	csrr	a5,mstatus
    80002840:	0087e793          	ori	a5,a5,8
    80002844:	30079073          	csrw	mstatus,a5
    80002848:	304027f3          	csrr	a5,mie
    8000284c:	0807e793          	ori	a5,a5,128
    80002850:	30479073          	csrw	mie,a5
    80002854:	f14027f3          	csrr	a5,mhartid
    80002858:	0007879b          	sext.w	a5,a5
    8000285c:	00078213          	mv	tp,a5
    80002860:	30200073          	mret
    80002864:	00813403          	ld	s0,8(sp)
    80002868:	01010113          	addi	sp,sp,16
    8000286c:	00008067          	ret

0000000080002870 <timerinit>:
    80002870:	ff010113          	addi	sp,sp,-16
    80002874:	00813423          	sd	s0,8(sp)
    80002878:	01010413          	addi	s0,sp,16
    8000287c:	f14027f3          	csrr	a5,mhartid
    80002880:	0200c737          	lui	a4,0x200c
    80002884:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002888:	0007869b          	sext.w	a3,a5
    8000288c:	00269713          	slli	a4,a3,0x2
    80002890:	000f4637          	lui	a2,0xf4
    80002894:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002898:	00d70733          	add	a4,a4,a3
    8000289c:	0037979b          	slliw	a5,a5,0x3
    800028a0:	020046b7          	lui	a3,0x2004
    800028a4:	00d787b3          	add	a5,a5,a3
    800028a8:	00c585b3          	add	a1,a1,a2
    800028ac:	00371693          	slli	a3,a4,0x3
    800028b0:	00003717          	auipc	a4,0x3
    800028b4:	4d070713          	addi	a4,a4,1232 # 80005d80 <timer_scratch>
    800028b8:	00b7b023          	sd	a1,0(a5)
    800028bc:	00d70733          	add	a4,a4,a3
    800028c0:	00f73c23          	sd	a5,24(a4)
    800028c4:	02c73023          	sd	a2,32(a4)
    800028c8:	34071073          	csrw	mscratch,a4
    800028cc:	00000797          	auipc	a5,0x0
    800028d0:	64478793          	addi	a5,a5,1604 # 80002f10 <timervec>
    800028d4:	30579073          	csrw	mtvec,a5
    800028d8:	300027f3          	csrr	a5,mstatus
    800028dc:	0087e793          	ori	a5,a5,8
    800028e0:	30079073          	csrw	mstatus,a5
    800028e4:	304027f3          	csrr	a5,mie
    800028e8:	0807e793          	ori	a5,a5,128
    800028ec:	30479073          	csrw	mie,a5
    800028f0:	00813403          	ld	s0,8(sp)
    800028f4:	01010113          	addi	sp,sp,16
    800028f8:	00008067          	ret

00000000800028fc <system_main>:
    800028fc:	fe010113          	addi	sp,sp,-32
    80002900:	00813823          	sd	s0,16(sp)
    80002904:	00913423          	sd	s1,8(sp)
    80002908:	00113c23          	sd	ra,24(sp)
    8000290c:	02010413          	addi	s0,sp,32
    80002910:	00000097          	auipc	ra,0x0
    80002914:	0c4080e7          	jalr	196(ra) # 800029d4 <cpuid>
    80002918:	00003497          	auipc	s1,0x3
    8000291c:	42848493          	addi	s1,s1,1064 # 80005d40 <started>
    80002920:	02050263          	beqz	a0,80002944 <system_main+0x48>
    80002924:	0004a783          	lw	a5,0(s1)
    80002928:	0007879b          	sext.w	a5,a5
    8000292c:	fe078ce3          	beqz	a5,80002924 <system_main+0x28>
    80002930:	0ff0000f          	fence
    80002934:	00003517          	auipc	a0,0x3
    80002938:	90450513          	addi	a0,a0,-1788 # 80005238 <_ZZ12printIntegermE6digits+0x1d8>
    8000293c:	00001097          	auipc	ra,0x1
    80002940:	a70080e7          	jalr	-1424(ra) # 800033ac <panic>
    80002944:	00001097          	auipc	ra,0x1
    80002948:	9c4080e7          	jalr	-1596(ra) # 80003308 <consoleinit>
    8000294c:	00001097          	auipc	ra,0x1
    80002950:	150080e7          	jalr	336(ra) # 80003a9c <printfinit>
    80002954:	00002517          	auipc	a0,0x2
    80002958:	6f450513          	addi	a0,a0,1780 # 80005048 <CONSOLE_STATUS+0x38>
    8000295c:	00001097          	auipc	ra,0x1
    80002960:	aac080e7          	jalr	-1364(ra) # 80003408 <__printf>
    80002964:	00003517          	auipc	a0,0x3
    80002968:	8a450513          	addi	a0,a0,-1884 # 80005208 <_ZZ12printIntegermE6digits+0x1a8>
    8000296c:	00001097          	auipc	ra,0x1
    80002970:	a9c080e7          	jalr	-1380(ra) # 80003408 <__printf>
    80002974:	00002517          	auipc	a0,0x2
    80002978:	6d450513          	addi	a0,a0,1748 # 80005048 <CONSOLE_STATUS+0x38>
    8000297c:	00001097          	auipc	ra,0x1
    80002980:	a8c080e7          	jalr	-1396(ra) # 80003408 <__printf>
    80002984:	00001097          	auipc	ra,0x1
    80002988:	4a4080e7          	jalr	1188(ra) # 80003e28 <kinit>
    8000298c:	00000097          	auipc	ra,0x0
    80002990:	148080e7          	jalr	328(ra) # 80002ad4 <trapinit>
    80002994:	00000097          	auipc	ra,0x0
    80002998:	16c080e7          	jalr	364(ra) # 80002b00 <trapinithart>
    8000299c:	00000097          	auipc	ra,0x0
    800029a0:	5b4080e7          	jalr	1460(ra) # 80002f50 <plicinit>
    800029a4:	00000097          	auipc	ra,0x0
    800029a8:	5d4080e7          	jalr	1492(ra) # 80002f78 <plicinithart>
    800029ac:	00000097          	auipc	ra,0x0
    800029b0:	078080e7          	jalr	120(ra) # 80002a24 <userinit>
    800029b4:	0ff0000f          	fence
    800029b8:	00100793          	li	a5,1
    800029bc:	00003517          	auipc	a0,0x3
    800029c0:	86450513          	addi	a0,a0,-1948 # 80005220 <_ZZ12printIntegermE6digits+0x1c0>
    800029c4:	00f4a023          	sw	a5,0(s1)
    800029c8:	00001097          	auipc	ra,0x1
    800029cc:	a40080e7          	jalr	-1472(ra) # 80003408 <__printf>
    800029d0:	0000006f          	j	800029d0 <system_main+0xd4>

00000000800029d4 <cpuid>:
    800029d4:	ff010113          	addi	sp,sp,-16
    800029d8:	00813423          	sd	s0,8(sp)
    800029dc:	01010413          	addi	s0,sp,16
    800029e0:	00020513          	mv	a0,tp
    800029e4:	00813403          	ld	s0,8(sp)
    800029e8:	0005051b          	sext.w	a0,a0
    800029ec:	01010113          	addi	sp,sp,16
    800029f0:	00008067          	ret

00000000800029f4 <mycpu>:
    800029f4:	ff010113          	addi	sp,sp,-16
    800029f8:	00813423          	sd	s0,8(sp)
    800029fc:	01010413          	addi	s0,sp,16
    80002a00:	00020793          	mv	a5,tp
    80002a04:	00813403          	ld	s0,8(sp)
    80002a08:	0007879b          	sext.w	a5,a5
    80002a0c:	00779793          	slli	a5,a5,0x7
    80002a10:	00004517          	auipc	a0,0x4
    80002a14:	3a050513          	addi	a0,a0,928 # 80006db0 <cpus>
    80002a18:	00f50533          	add	a0,a0,a5
    80002a1c:	01010113          	addi	sp,sp,16
    80002a20:	00008067          	ret

0000000080002a24 <userinit>:
    80002a24:	ff010113          	addi	sp,sp,-16
    80002a28:	00813423          	sd	s0,8(sp)
    80002a2c:	01010413          	addi	s0,sp,16
    80002a30:	00813403          	ld	s0,8(sp)
    80002a34:	01010113          	addi	sp,sp,16
    80002a38:	fffff317          	auipc	t1,0xfffff
    80002a3c:	a1430067          	jr	-1516(t1) # 8000144c <main>

0000000080002a40 <either_copyout>:
    80002a40:	ff010113          	addi	sp,sp,-16
    80002a44:	00813023          	sd	s0,0(sp)
    80002a48:	00113423          	sd	ra,8(sp)
    80002a4c:	01010413          	addi	s0,sp,16
    80002a50:	02051663          	bnez	a0,80002a7c <either_copyout+0x3c>
    80002a54:	00058513          	mv	a0,a1
    80002a58:	00060593          	mv	a1,a2
    80002a5c:	0006861b          	sext.w	a2,a3
    80002a60:	00002097          	auipc	ra,0x2
    80002a64:	c54080e7          	jalr	-940(ra) # 800046b4 <__memmove>
    80002a68:	00813083          	ld	ra,8(sp)
    80002a6c:	00013403          	ld	s0,0(sp)
    80002a70:	00000513          	li	a0,0
    80002a74:	01010113          	addi	sp,sp,16
    80002a78:	00008067          	ret
    80002a7c:	00002517          	auipc	a0,0x2
    80002a80:	7e450513          	addi	a0,a0,2020 # 80005260 <_ZZ12printIntegermE6digits+0x200>
    80002a84:	00001097          	auipc	ra,0x1
    80002a88:	928080e7          	jalr	-1752(ra) # 800033ac <panic>

0000000080002a8c <either_copyin>:
    80002a8c:	ff010113          	addi	sp,sp,-16
    80002a90:	00813023          	sd	s0,0(sp)
    80002a94:	00113423          	sd	ra,8(sp)
    80002a98:	01010413          	addi	s0,sp,16
    80002a9c:	02059463          	bnez	a1,80002ac4 <either_copyin+0x38>
    80002aa0:	00060593          	mv	a1,a2
    80002aa4:	0006861b          	sext.w	a2,a3
    80002aa8:	00002097          	auipc	ra,0x2
    80002aac:	c0c080e7          	jalr	-1012(ra) # 800046b4 <__memmove>
    80002ab0:	00813083          	ld	ra,8(sp)
    80002ab4:	00013403          	ld	s0,0(sp)
    80002ab8:	00000513          	li	a0,0
    80002abc:	01010113          	addi	sp,sp,16
    80002ac0:	00008067          	ret
    80002ac4:	00002517          	auipc	a0,0x2
    80002ac8:	7c450513          	addi	a0,a0,1988 # 80005288 <_ZZ12printIntegermE6digits+0x228>
    80002acc:	00001097          	auipc	ra,0x1
    80002ad0:	8e0080e7          	jalr	-1824(ra) # 800033ac <panic>

0000000080002ad4 <trapinit>:
    80002ad4:	ff010113          	addi	sp,sp,-16
    80002ad8:	00813423          	sd	s0,8(sp)
    80002adc:	01010413          	addi	s0,sp,16
    80002ae0:	00813403          	ld	s0,8(sp)
    80002ae4:	00002597          	auipc	a1,0x2
    80002ae8:	7cc58593          	addi	a1,a1,1996 # 800052b0 <_ZZ12printIntegermE6digits+0x250>
    80002aec:	00004517          	auipc	a0,0x4
    80002af0:	34450513          	addi	a0,a0,836 # 80006e30 <tickslock>
    80002af4:	01010113          	addi	sp,sp,16
    80002af8:	00001317          	auipc	t1,0x1
    80002afc:	5c030067          	jr	1472(t1) # 800040b8 <initlock>

0000000080002b00 <trapinithart>:
    80002b00:	ff010113          	addi	sp,sp,-16
    80002b04:	00813423          	sd	s0,8(sp)
    80002b08:	01010413          	addi	s0,sp,16
    80002b0c:	00000797          	auipc	a5,0x0
    80002b10:	2f478793          	addi	a5,a5,756 # 80002e00 <kernelvec>
    80002b14:	10579073          	csrw	stvec,a5
    80002b18:	00813403          	ld	s0,8(sp)
    80002b1c:	01010113          	addi	sp,sp,16
    80002b20:	00008067          	ret

0000000080002b24 <usertrap>:
    80002b24:	ff010113          	addi	sp,sp,-16
    80002b28:	00813423          	sd	s0,8(sp)
    80002b2c:	01010413          	addi	s0,sp,16
    80002b30:	00813403          	ld	s0,8(sp)
    80002b34:	01010113          	addi	sp,sp,16
    80002b38:	00008067          	ret

0000000080002b3c <usertrapret>:
    80002b3c:	ff010113          	addi	sp,sp,-16
    80002b40:	00813423          	sd	s0,8(sp)
    80002b44:	01010413          	addi	s0,sp,16
    80002b48:	00813403          	ld	s0,8(sp)
    80002b4c:	01010113          	addi	sp,sp,16
    80002b50:	00008067          	ret

0000000080002b54 <kerneltrap>:
    80002b54:	fe010113          	addi	sp,sp,-32
    80002b58:	00813823          	sd	s0,16(sp)
    80002b5c:	00113c23          	sd	ra,24(sp)
    80002b60:	00913423          	sd	s1,8(sp)
    80002b64:	02010413          	addi	s0,sp,32
    80002b68:	142025f3          	csrr	a1,scause
    80002b6c:	100027f3          	csrr	a5,sstatus
    80002b70:	0027f793          	andi	a5,a5,2
    80002b74:	10079c63          	bnez	a5,80002c8c <kerneltrap+0x138>
    80002b78:	142027f3          	csrr	a5,scause
    80002b7c:	0207ce63          	bltz	a5,80002bb8 <kerneltrap+0x64>
    80002b80:	00002517          	auipc	a0,0x2
    80002b84:	77850513          	addi	a0,a0,1912 # 800052f8 <_ZZ12printIntegermE6digits+0x298>
    80002b88:	00001097          	auipc	ra,0x1
    80002b8c:	880080e7          	jalr	-1920(ra) # 80003408 <__printf>
    80002b90:	141025f3          	csrr	a1,sepc
    80002b94:	14302673          	csrr	a2,stval
    80002b98:	00002517          	auipc	a0,0x2
    80002b9c:	77050513          	addi	a0,a0,1904 # 80005308 <_ZZ12printIntegermE6digits+0x2a8>
    80002ba0:	00001097          	auipc	ra,0x1
    80002ba4:	868080e7          	jalr	-1944(ra) # 80003408 <__printf>
    80002ba8:	00002517          	auipc	a0,0x2
    80002bac:	77850513          	addi	a0,a0,1912 # 80005320 <_ZZ12printIntegermE6digits+0x2c0>
    80002bb0:	00000097          	auipc	ra,0x0
    80002bb4:	7fc080e7          	jalr	2044(ra) # 800033ac <panic>
    80002bb8:	0ff7f713          	andi	a4,a5,255
    80002bbc:	00900693          	li	a3,9
    80002bc0:	04d70063          	beq	a4,a3,80002c00 <kerneltrap+0xac>
    80002bc4:	fff00713          	li	a4,-1
    80002bc8:	03f71713          	slli	a4,a4,0x3f
    80002bcc:	00170713          	addi	a4,a4,1
    80002bd0:	fae798e3          	bne	a5,a4,80002b80 <kerneltrap+0x2c>
    80002bd4:	00000097          	auipc	ra,0x0
    80002bd8:	e00080e7          	jalr	-512(ra) # 800029d4 <cpuid>
    80002bdc:	06050663          	beqz	a0,80002c48 <kerneltrap+0xf4>
    80002be0:	144027f3          	csrr	a5,sip
    80002be4:	ffd7f793          	andi	a5,a5,-3
    80002be8:	14479073          	csrw	sip,a5
    80002bec:	01813083          	ld	ra,24(sp)
    80002bf0:	01013403          	ld	s0,16(sp)
    80002bf4:	00813483          	ld	s1,8(sp)
    80002bf8:	02010113          	addi	sp,sp,32
    80002bfc:	00008067          	ret
    80002c00:	00000097          	auipc	ra,0x0
    80002c04:	3c4080e7          	jalr	964(ra) # 80002fc4 <plic_claim>
    80002c08:	00a00793          	li	a5,10
    80002c0c:	00050493          	mv	s1,a0
    80002c10:	06f50863          	beq	a0,a5,80002c80 <kerneltrap+0x12c>
    80002c14:	fc050ce3          	beqz	a0,80002bec <kerneltrap+0x98>
    80002c18:	00050593          	mv	a1,a0
    80002c1c:	00002517          	auipc	a0,0x2
    80002c20:	6bc50513          	addi	a0,a0,1724 # 800052d8 <_ZZ12printIntegermE6digits+0x278>
    80002c24:	00000097          	auipc	ra,0x0
    80002c28:	7e4080e7          	jalr	2020(ra) # 80003408 <__printf>
    80002c2c:	01013403          	ld	s0,16(sp)
    80002c30:	01813083          	ld	ra,24(sp)
    80002c34:	00048513          	mv	a0,s1
    80002c38:	00813483          	ld	s1,8(sp)
    80002c3c:	02010113          	addi	sp,sp,32
    80002c40:	00000317          	auipc	t1,0x0
    80002c44:	3bc30067          	jr	956(t1) # 80002ffc <plic_complete>
    80002c48:	00004517          	auipc	a0,0x4
    80002c4c:	1e850513          	addi	a0,a0,488 # 80006e30 <tickslock>
    80002c50:	00001097          	auipc	ra,0x1
    80002c54:	48c080e7          	jalr	1164(ra) # 800040dc <acquire>
    80002c58:	00003717          	auipc	a4,0x3
    80002c5c:	0ec70713          	addi	a4,a4,236 # 80005d44 <ticks>
    80002c60:	00072783          	lw	a5,0(a4)
    80002c64:	00004517          	auipc	a0,0x4
    80002c68:	1cc50513          	addi	a0,a0,460 # 80006e30 <tickslock>
    80002c6c:	0017879b          	addiw	a5,a5,1
    80002c70:	00f72023          	sw	a5,0(a4)
    80002c74:	00001097          	auipc	ra,0x1
    80002c78:	534080e7          	jalr	1332(ra) # 800041a8 <release>
    80002c7c:	f65ff06f          	j	80002be0 <kerneltrap+0x8c>
    80002c80:	00001097          	auipc	ra,0x1
    80002c84:	090080e7          	jalr	144(ra) # 80003d10 <uartintr>
    80002c88:	fa5ff06f          	j	80002c2c <kerneltrap+0xd8>
    80002c8c:	00002517          	auipc	a0,0x2
    80002c90:	62c50513          	addi	a0,a0,1580 # 800052b8 <_ZZ12printIntegermE6digits+0x258>
    80002c94:	00000097          	auipc	ra,0x0
    80002c98:	718080e7          	jalr	1816(ra) # 800033ac <panic>

0000000080002c9c <clockintr>:
    80002c9c:	fe010113          	addi	sp,sp,-32
    80002ca0:	00813823          	sd	s0,16(sp)
    80002ca4:	00913423          	sd	s1,8(sp)
    80002ca8:	00113c23          	sd	ra,24(sp)
    80002cac:	02010413          	addi	s0,sp,32
    80002cb0:	00004497          	auipc	s1,0x4
    80002cb4:	18048493          	addi	s1,s1,384 # 80006e30 <tickslock>
    80002cb8:	00048513          	mv	a0,s1
    80002cbc:	00001097          	auipc	ra,0x1
    80002cc0:	420080e7          	jalr	1056(ra) # 800040dc <acquire>
    80002cc4:	00003717          	auipc	a4,0x3
    80002cc8:	08070713          	addi	a4,a4,128 # 80005d44 <ticks>
    80002ccc:	00072783          	lw	a5,0(a4)
    80002cd0:	01013403          	ld	s0,16(sp)
    80002cd4:	01813083          	ld	ra,24(sp)
    80002cd8:	00048513          	mv	a0,s1
    80002cdc:	0017879b          	addiw	a5,a5,1
    80002ce0:	00813483          	ld	s1,8(sp)
    80002ce4:	00f72023          	sw	a5,0(a4)
    80002ce8:	02010113          	addi	sp,sp,32
    80002cec:	00001317          	auipc	t1,0x1
    80002cf0:	4bc30067          	jr	1212(t1) # 800041a8 <release>

0000000080002cf4 <devintr>:
    80002cf4:	142027f3          	csrr	a5,scause
    80002cf8:	00000513          	li	a0,0
    80002cfc:	0007c463          	bltz	a5,80002d04 <devintr+0x10>
    80002d00:	00008067          	ret
    80002d04:	fe010113          	addi	sp,sp,-32
    80002d08:	00813823          	sd	s0,16(sp)
    80002d0c:	00113c23          	sd	ra,24(sp)
    80002d10:	00913423          	sd	s1,8(sp)
    80002d14:	02010413          	addi	s0,sp,32
    80002d18:	0ff7f713          	andi	a4,a5,255
    80002d1c:	00900693          	li	a3,9
    80002d20:	04d70c63          	beq	a4,a3,80002d78 <devintr+0x84>
    80002d24:	fff00713          	li	a4,-1
    80002d28:	03f71713          	slli	a4,a4,0x3f
    80002d2c:	00170713          	addi	a4,a4,1
    80002d30:	00e78c63          	beq	a5,a4,80002d48 <devintr+0x54>
    80002d34:	01813083          	ld	ra,24(sp)
    80002d38:	01013403          	ld	s0,16(sp)
    80002d3c:	00813483          	ld	s1,8(sp)
    80002d40:	02010113          	addi	sp,sp,32
    80002d44:	00008067          	ret
    80002d48:	00000097          	auipc	ra,0x0
    80002d4c:	c8c080e7          	jalr	-884(ra) # 800029d4 <cpuid>
    80002d50:	06050663          	beqz	a0,80002dbc <devintr+0xc8>
    80002d54:	144027f3          	csrr	a5,sip
    80002d58:	ffd7f793          	andi	a5,a5,-3
    80002d5c:	14479073          	csrw	sip,a5
    80002d60:	01813083          	ld	ra,24(sp)
    80002d64:	01013403          	ld	s0,16(sp)
    80002d68:	00813483          	ld	s1,8(sp)
    80002d6c:	00200513          	li	a0,2
    80002d70:	02010113          	addi	sp,sp,32
    80002d74:	00008067          	ret
    80002d78:	00000097          	auipc	ra,0x0
    80002d7c:	24c080e7          	jalr	588(ra) # 80002fc4 <plic_claim>
    80002d80:	00a00793          	li	a5,10
    80002d84:	00050493          	mv	s1,a0
    80002d88:	06f50663          	beq	a0,a5,80002df4 <devintr+0x100>
    80002d8c:	00100513          	li	a0,1
    80002d90:	fa0482e3          	beqz	s1,80002d34 <devintr+0x40>
    80002d94:	00048593          	mv	a1,s1
    80002d98:	00002517          	auipc	a0,0x2
    80002d9c:	54050513          	addi	a0,a0,1344 # 800052d8 <_ZZ12printIntegermE6digits+0x278>
    80002da0:	00000097          	auipc	ra,0x0
    80002da4:	668080e7          	jalr	1640(ra) # 80003408 <__printf>
    80002da8:	00048513          	mv	a0,s1
    80002dac:	00000097          	auipc	ra,0x0
    80002db0:	250080e7          	jalr	592(ra) # 80002ffc <plic_complete>
    80002db4:	00100513          	li	a0,1
    80002db8:	f7dff06f          	j	80002d34 <devintr+0x40>
    80002dbc:	00004517          	auipc	a0,0x4
    80002dc0:	07450513          	addi	a0,a0,116 # 80006e30 <tickslock>
    80002dc4:	00001097          	auipc	ra,0x1
    80002dc8:	318080e7          	jalr	792(ra) # 800040dc <acquire>
    80002dcc:	00003717          	auipc	a4,0x3
    80002dd0:	f7870713          	addi	a4,a4,-136 # 80005d44 <ticks>
    80002dd4:	00072783          	lw	a5,0(a4)
    80002dd8:	00004517          	auipc	a0,0x4
    80002ddc:	05850513          	addi	a0,a0,88 # 80006e30 <tickslock>
    80002de0:	0017879b          	addiw	a5,a5,1
    80002de4:	00f72023          	sw	a5,0(a4)
    80002de8:	00001097          	auipc	ra,0x1
    80002dec:	3c0080e7          	jalr	960(ra) # 800041a8 <release>
    80002df0:	f65ff06f          	j	80002d54 <devintr+0x60>
    80002df4:	00001097          	auipc	ra,0x1
    80002df8:	f1c080e7          	jalr	-228(ra) # 80003d10 <uartintr>
    80002dfc:	fadff06f          	j	80002da8 <devintr+0xb4>

0000000080002e00 <kernelvec>:
    80002e00:	f0010113          	addi	sp,sp,-256
    80002e04:	00113023          	sd	ra,0(sp)
    80002e08:	00213423          	sd	sp,8(sp)
    80002e0c:	00313823          	sd	gp,16(sp)
    80002e10:	00413c23          	sd	tp,24(sp)
    80002e14:	02513023          	sd	t0,32(sp)
    80002e18:	02613423          	sd	t1,40(sp)
    80002e1c:	02713823          	sd	t2,48(sp)
    80002e20:	02813c23          	sd	s0,56(sp)
    80002e24:	04913023          	sd	s1,64(sp)
    80002e28:	04a13423          	sd	a0,72(sp)
    80002e2c:	04b13823          	sd	a1,80(sp)
    80002e30:	04c13c23          	sd	a2,88(sp)
    80002e34:	06d13023          	sd	a3,96(sp)
    80002e38:	06e13423          	sd	a4,104(sp)
    80002e3c:	06f13823          	sd	a5,112(sp)
    80002e40:	07013c23          	sd	a6,120(sp)
    80002e44:	09113023          	sd	a7,128(sp)
    80002e48:	09213423          	sd	s2,136(sp)
    80002e4c:	09313823          	sd	s3,144(sp)
    80002e50:	09413c23          	sd	s4,152(sp)
    80002e54:	0b513023          	sd	s5,160(sp)
    80002e58:	0b613423          	sd	s6,168(sp)
    80002e5c:	0b713823          	sd	s7,176(sp)
    80002e60:	0b813c23          	sd	s8,184(sp)
    80002e64:	0d913023          	sd	s9,192(sp)
    80002e68:	0da13423          	sd	s10,200(sp)
    80002e6c:	0db13823          	sd	s11,208(sp)
    80002e70:	0dc13c23          	sd	t3,216(sp)
    80002e74:	0fd13023          	sd	t4,224(sp)
    80002e78:	0fe13423          	sd	t5,232(sp)
    80002e7c:	0ff13823          	sd	t6,240(sp)
    80002e80:	cd5ff0ef          	jal	ra,80002b54 <kerneltrap>
    80002e84:	00013083          	ld	ra,0(sp)
    80002e88:	00813103          	ld	sp,8(sp)
    80002e8c:	01013183          	ld	gp,16(sp)
    80002e90:	02013283          	ld	t0,32(sp)
    80002e94:	02813303          	ld	t1,40(sp)
    80002e98:	03013383          	ld	t2,48(sp)
    80002e9c:	03813403          	ld	s0,56(sp)
    80002ea0:	04013483          	ld	s1,64(sp)
    80002ea4:	04813503          	ld	a0,72(sp)
    80002ea8:	05013583          	ld	a1,80(sp)
    80002eac:	05813603          	ld	a2,88(sp)
    80002eb0:	06013683          	ld	a3,96(sp)
    80002eb4:	06813703          	ld	a4,104(sp)
    80002eb8:	07013783          	ld	a5,112(sp)
    80002ebc:	07813803          	ld	a6,120(sp)
    80002ec0:	08013883          	ld	a7,128(sp)
    80002ec4:	08813903          	ld	s2,136(sp)
    80002ec8:	09013983          	ld	s3,144(sp)
    80002ecc:	09813a03          	ld	s4,152(sp)
    80002ed0:	0a013a83          	ld	s5,160(sp)
    80002ed4:	0a813b03          	ld	s6,168(sp)
    80002ed8:	0b013b83          	ld	s7,176(sp)
    80002edc:	0b813c03          	ld	s8,184(sp)
    80002ee0:	0c013c83          	ld	s9,192(sp)
    80002ee4:	0c813d03          	ld	s10,200(sp)
    80002ee8:	0d013d83          	ld	s11,208(sp)
    80002eec:	0d813e03          	ld	t3,216(sp)
    80002ef0:	0e013e83          	ld	t4,224(sp)
    80002ef4:	0e813f03          	ld	t5,232(sp)
    80002ef8:	0f013f83          	ld	t6,240(sp)
    80002efc:	10010113          	addi	sp,sp,256
    80002f00:	10200073          	sret
    80002f04:	00000013          	nop
    80002f08:	00000013          	nop
    80002f0c:	00000013          	nop

0000000080002f10 <timervec>:
    80002f10:	34051573          	csrrw	a0,mscratch,a0
    80002f14:	00b53023          	sd	a1,0(a0)
    80002f18:	00c53423          	sd	a2,8(a0)
    80002f1c:	00d53823          	sd	a3,16(a0)
    80002f20:	01853583          	ld	a1,24(a0)
    80002f24:	02053603          	ld	a2,32(a0)
    80002f28:	0005b683          	ld	a3,0(a1)
    80002f2c:	00c686b3          	add	a3,a3,a2
    80002f30:	00d5b023          	sd	a3,0(a1)
    80002f34:	00200593          	li	a1,2
    80002f38:	14459073          	csrw	sip,a1
    80002f3c:	01053683          	ld	a3,16(a0)
    80002f40:	00853603          	ld	a2,8(a0)
    80002f44:	00053583          	ld	a1,0(a0)
    80002f48:	34051573          	csrrw	a0,mscratch,a0
    80002f4c:	30200073          	mret

0000000080002f50 <plicinit>:
    80002f50:	ff010113          	addi	sp,sp,-16
    80002f54:	00813423          	sd	s0,8(sp)
    80002f58:	01010413          	addi	s0,sp,16
    80002f5c:	00813403          	ld	s0,8(sp)
    80002f60:	0c0007b7          	lui	a5,0xc000
    80002f64:	00100713          	li	a4,1
    80002f68:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002f6c:	00e7a223          	sw	a4,4(a5)
    80002f70:	01010113          	addi	sp,sp,16
    80002f74:	00008067          	ret

0000000080002f78 <plicinithart>:
    80002f78:	ff010113          	addi	sp,sp,-16
    80002f7c:	00813023          	sd	s0,0(sp)
    80002f80:	00113423          	sd	ra,8(sp)
    80002f84:	01010413          	addi	s0,sp,16
    80002f88:	00000097          	auipc	ra,0x0
    80002f8c:	a4c080e7          	jalr	-1460(ra) # 800029d4 <cpuid>
    80002f90:	0085171b          	slliw	a4,a0,0x8
    80002f94:	0c0027b7          	lui	a5,0xc002
    80002f98:	00e787b3          	add	a5,a5,a4
    80002f9c:	40200713          	li	a4,1026
    80002fa0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002fa4:	00813083          	ld	ra,8(sp)
    80002fa8:	00013403          	ld	s0,0(sp)
    80002fac:	00d5151b          	slliw	a0,a0,0xd
    80002fb0:	0c2017b7          	lui	a5,0xc201
    80002fb4:	00a78533          	add	a0,a5,a0
    80002fb8:	00052023          	sw	zero,0(a0)
    80002fbc:	01010113          	addi	sp,sp,16
    80002fc0:	00008067          	ret

0000000080002fc4 <plic_claim>:
    80002fc4:	ff010113          	addi	sp,sp,-16
    80002fc8:	00813023          	sd	s0,0(sp)
    80002fcc:	00113423          	sd	ra,8(sp)
    80002fd0:	01010413          	addi	s0,sp,16
    80002fd4:	00000097          	auipc	ra,0x0
    80002fd8:	a00080e7          	jalr	-1536(ra) # 800029d4 <cpuid>
    80002fdc:	00813083          	ld	ra,8(sp)
    80002fe0:	00013403          	ld	s0,0(sp)
    80002fe4:	00d5151b          	slliw	a0,a0,0xd
    80002fe8:	0c2017b7          	lui	a5,0xc201
    80002fec:	00a78533          	add	a0,a5,a0
    80002ff0:	00452503          	lw	a0,4(a0)
    80002ff4:	01010113          	addi	sp,sp,16
    80002ff8:	00008067          	ret

0000000080002ffc <plic_complete>:
    80002ffc:	fe010113          	addi	sp,sp,-32
    80003000:	00813823          	sd	s0,16(sp)
    80003004:	00913423          	sd	s1,8(sp)
    80003008:	00113c23          	sd	ra,24(sp)
    8000300c:	02010413          	addi	s0,sp,32
    80003010:	00050493          	mv	s1,a0
    80003014:	00000097          	auipc	ra,0x0
    80003018:	9c0080e7          	jalr	-1600(ra) # 800029d4 <cpuid>
    8000301c:	01813083          	ld	ra,24(sp)
    80003020:	01013403          	ld	s0,16(sp)
    80003024:	00d5179b          	slliw	a5,a0,0xd
    80003028:	0c201737          	lui	a4,0xc201
    8000302c:	00f707b3          	add	a5,a4,a5
    80003030:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003034:	00813483          	ld	s1,8(sp)
    80003038:	02010113          	addi	sp,sp,32
    8000303c:	00008067          	ret

0000000080003040 <consolewrite>:
    80003040:	fb010113          	addi	sp,sp,-80
    80003044:	04813023          	sd	s0,64(sp)
    80003048:	04113423          	sd	ra,72(sp)
    8000304c:	02913c23          	sd	s1,56(sp)
    80003050:	03213823          	sd	s2,48(sp)
    80003054:	03313423          	sd	s3,40(sp)
    80003058:	03413023          	sd	s4,32(sp)
    8000305c:	01513c23          	sd	s5,24(sp)
    80003060:	05010413          	addi	s0,sp,80
    80003064:	06c05c63          	blez	a2,800030dc <consolewrite+0x9c>
    80003068:	00060993          	mv	s3,a2
    8000306c:	00050a13          	mv	s4,a0
    80003070:	00058493          	mv	s1,a1
    80003074:	00000913          	li	s2,0
    80003078:	fff00a93          	li	s5,-1
    8000307c:	01c0006f          	j	80003098 <consolewrite+0x58>
    80003080:	fbf44503          	lbu	a0,-65(s0)
    80003084:	0019091b          	addiw	s2,s2,1
    80003088:	00148493          	addi	s1,s1,1
    8000308c:	00001097          	auipc	ra,0x1
    80003090:	a9c080e7          	jalr	-1380(ra) # 80003b28 <uartputc>
    80003094:	03298063          	beq	s3,s2,800030b4 <consolewrite+0x74>
    80003098:	00048613          	mv	a2,s1
    8000309c:	00100693          	li	a3,1
    800030a0:	000a0593          	mv	a1,s4
    800030a4:	fbf40513          	addi	a0,s0,-65
    800030a8:	00000097          	auipc	ra,0x0
    800030ac:	9e4080e7          	jalr	-1564(ra) # 80002a8c <either_copyin>
    800030b0:	fd5518e3          	bne	a0,s5,80003080 <consolewrite+0x40>
    800030b4:	04813083          	ld	ra,72(sp)
    800030b8:	04013403          	ld	s0,64(sp)
    800030bc:	03813483          	ld	s1,56(sp)
    800030c0:	02813983          	ld	s3,40(sp)
    800030c4:	02013a03          	ld	s4,32(sp)
    800030c8:	01813a83          	ld	s5,24(sp)
    800030cc:	00090513          	mv	a0,s2
    800030d0:	03013903          	ld	s2,48(sp)
    800030d4:	05010113          	addi	sp,sp,80
    800030d8:	00008067          	ret
    800030dc:	00000913          	li	s2,0
    800030e0:	fd5ff06f          	j	800030b4 <consolewrite+0x74>

00000000800030e4 <consoleread>:
    800030e4:	f9010113          	addi	sp,sp,-112
    800030e8:	06813023          	sd	s0,96(sp)
    800030ec:	04913c23          	sd	s1,88(sp)
    800030f0:	05213823          	sd	s2,80(sp)
    800030f4:	05313423          	sd	s3,72(sp)
    800030f8:	05413023          	sd	s4,64(sp)
    800030fc:	03513c23          	sd	s5,56(sp)
    80003100:	03613823          	sd	s6,48(sp)
    80003104:	03713423          	sd	s7,40(sp)
    80003108:	03813023          	sd	s8,32(sp)
    8000310c:	06113423          	sd	ra,104(sp)
    80003110:	01913c23          	sd	s9,24(sp)
    80003114:	07010413          	addi	s0,sp,112
    80003118:	00060b93          	mv	s7,a2
    8000311c:	00050913          	mv	s2,a0
    80003120:	00058c13          	mv	s8,a1
    80003124:	00060b1b          	sext.w	s6,a2
    80003128:	00004497          	auipc	s1,0x4
    8000312c:	d3048493          	addi	s1,s1,-720 # 80006e58 <cons>
    80003130:	00400993          	li	s3,4
    80003134:	fff00a13          	li	s4,-1
    80003138:	00a00a93          	li	s5,10
    8000313c:	05705e63          	blez	s7,80003198 <consoleread+0xb4>
    80003140:	09c4a703          	lw	a4,156(s1)
    80003144:	0984a783          	lw	a5,152(s1)
    80003148:	0007071b          	sext.w	a4,a4
    8000314c:	08e78463          	beq	a5,a4,800031d4 <consoleread+0xf0>
    80003150:	07f7f713          	andi	a4,a5,127
    80003154:	00e48733          	add	a4,s1,a4
    80003158:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000315c:	0017869b          	addiw	a3,a5,1
    80003160:	08d4ac23          	sw	a3,152(s1)
    80003164:	00070c9b          	sext.w	s9,a4
    80003168:	0b370663          	beq	a4,s3,80003214 <consoleread+0x130>
    8000316c:	00100693          	li	a3,1
    80003170:	f9f40613          	addi	a2,s0,-97
    80003174:	000c0593          	mv	a1,s8
    80003178:	00090513          	mv	a0,s2
    8000317c:	f8e40fa3          	sb	a4,-97(s0)
    80003180:	00000097          	auipc	ra,0x0
    80003184:	8c0080e7          	jalr	-1856(ra) # 80002a40 <either_copyout>
    80003188:	01450863          	beq	a0,s4,80003198 <consoleread+0xb4>
    8000318c:	001c0c13          	addi	s8,s8,1
    80003190:	fffb8b9b          	addiw	s7,s7,-1
    80003194:	fb5c94e3          	bne	s9,s5,8000313c <consoleread+0x58>
    80003198:	000b851b          	sext.w	a0,s7
    8000319c:	06813083          	ld	ra,104(sp)
    800031a0:	06013403          	ld	s0,96(sp)
    800031a4:	05813483          	ld	s1,88(sp)
    800031a8:	05013903          	ld	s2,80(sp)
    800031ac:	04813983          	ld	s3,72(sp)
    800031b0:	04013a03          	ld	s4,64(sp)
    800031b4:	03813a83          	ld	s5,56(sp)
    800031b8:	02813b83          	ld	s7,40(sp)
    800031bc:	02013c03          	ld	s8,32(sp)
    800031c0:	01813c83          	ld	s9,24(sp)
    800031c4:	40ab053b          	subw	a0,s6,a0
    800031c8:	03013b03          	ld	s6,48(sp)
    800031cc:	07010113          	addi	sp,sp,112
    800031d0:	00008067          	ret
    800031d4:	00001097          	auipc	ra,0x1
    800031d8:	1d8080e7          	jalr	472(ra) # 800043ac <push_on>
    800031dc:	0984a703          	lw	a4,152(s1)
    800031e0:	09c4a783          	lw	a5,156(s1)
    800031e4:	0007879b          	sext.w	a5,a5
    800031e8:	fef70ce3          	beq	a4,a5,800031e0 <consoleread+0xfc>
    800031ec:	00001097          	auipc	ra,0x1
    800031f0:	234080e7          	jalr	564(ra) # 80004420 <pop_on>
    800031f4:	0984a783          	lw	a5,152(s1)
    800031f8:	07f7f713          	andi	a4,a5,127
    800031fc:	00e48733          	add	a4,s1,a4
    80003200:	01874703          	lbu	a4,24(a4)
    80003204:	0017869b          	addiw	a3,a5,1
    80003208:	08d4ac23          	sw	a3,152(s1)
    8000320c:	00070c9b          	sext.w	s9,a4
    80003210:	f5371ee3          	bne	a4,s3,8000316c <consoleread+0x88>
    80003214:	000b851b          	sext.w	a0,s7
    80003218:	f96bf2e3          	bgeu	s7,s6,8000319c <consoleread+0xb8>
    8000321c:	08f4ac23          	sw	a5,152(s1)
    80003220:	f7dff06f          	j	8000319c <consoleread+0xb8>

0000000080003224 <consputc>:
    80003224:	10000793          	li	a5,256
    80003228:	00f50663          	beq	a0,a5,80003234 <consputc+0x10>
    8000322c:	00001317          	auipc	t1,0x1
    80003230:	9f430067          	jr	-1548(t1) # 80003c20 <uartputc_sync>
    80003234:	ff010113          	addi	sp,sp,-16
    80003238:	00113423          	sd	ra,8(sp)
    8000323c:	00813023          	sd	s0,0(sp)
    80003240:	01010413          	addi	s0,sp,16
    80003244:	00800513          	li	a0,8
    80003248:	00001097          	auipc	ra,0x1
    8000324c:	9d8080e7          	jalr	-1576(ra) # 80003c20 <uartputc_sync>
    80003250:	02000513          	li	a0,32
    80003254:	00001097          	auipc	ra,0x1
    80003258:	9cc080e7          	jalr	-1588(ra) # 80003c20 <uartputc_sync>
    8000325c:	00013403          	ld	s0,0(sp)
    80003260:	00813083          	ld	ra,8(sp)
    80003264:	00800513          	li	a0,8
    80003268:	01010113          	addi	sp,sp,16
    8000326c:	00001317          	auipc	t1,0x1
    80003270:	9b430067          	jr	-1612(t1) # 80003c20 <uartputc_sync>

0000000080003274 <consoleintr>:
    80003274:	fe010113          	addi	sp,sp,-32
    80003278:	00813823          	sd	s0,16(sp)
    8000327c:	00913423          	sd	s1,8(sp)
    80003280:	01213023          	sd	s2,0(sp)
    80003284:	00113c23          	sd	ra,24(sp)
    80003288:	02010413          	addi	s0,sp,32
    8000328c:	00004917          	auipc	s2,0x4
    80003290:	bcc90913          	addi	s2,s2,-1076 # 80006e58 <cons>
    80003294:	00050493          	mv	s1,a0
    80003298:	00090513          	mv	a0,s2
    8000329c:	00001097          	auipc	ra,0x1
    800032a0:	e40080e7          	jalr	-448(ra) # 800040dc <acquire>
    800032a4:	02048c63          	beqz	s1,800032dc <consoleintr+0x68>
    800032a8:	0a092783          	lw	a5,160(s2)
    800032ac:	09892703          	lw	a4,152(s2)
    800032b0:	07f00693          	li	a3,127
    800032b4:	40e7873b          	subw	a4,a5,a4
    800032b8:	02e6e263          	bltu	a3,a4,800032dc <consoleintr+0x68>
    800032bc:	00d00713          	li	a4,13
    800032c0:	04e48063          	beq	s1,a4,80003300 <consoleintr+0x8c>
    800032c4:	07f7f713          	andi	a4,a5,127
    800032c8:	00e90733          	add	a4,s2,a4
    800032cc:	0017879b          	addiw	a5,a5,1
    800032d0:	0af92023          	sw	a5,160(s2)
    800032d4:	00970c23          	sb	s1,24(a4)
    800032d8:	08f92e23          	sw	a5,156(s2)
    800032dc:	01013403          	ld	s0,16(sp)
    800032e0:	01813083          	ld	ra,24(sp)
    800032e4:	00813483          	ld	s1,8(sp)
    800032e8:	00013903          	ld	s2,0(sp)
    800032ec:	00004517          	auipc	a0,0x4
    800032f0:	b6c50513          	addi	a0,a0,-1172 # 80006e58 <cons>
    800032f4:	02010113          	addi	sp,sp,32
    800032f8:	00001317          	auipc	t1,0x1
    800032fc:	eb030067          	jr	-336(t1) # 800041a8 <release>
    80003300:	00a00493          	li	s1,10
    80003304:	fc1ff06f          	j	800032c4 <consoleintr+0x50>

0000000080003308 <consoleinit>:
    80003308:	fe010113          	addi	sp,sp,-32
    8000330c:	00113c23          	sd	ra,24(sp)
    80003310:	00813823          	sd	s0,16(sp)
    80003314:	00913423          	sd	s1,8(sp)
    80003318:	02010413          	addi	s0,sp,32
    8000331c:	00004497          	auipc	s1,0x4
    80003320:	b3c48493          	addi	s1,s1,-1220 # 80006e58 <cons>
    80003324:	00048513          	mv	a0,s1
    80003328:	00002597          	auipc	a1,0x2
    8000332c:	00858593          	addi	a1,a1,8 # 80005330 <_ZZ12printIntegermE6digits+0x2d0>
    80003330:	00001097          	auipc	ra,0x1
    80003334:	d88080e7          	jalr	-632(ra) # 800040b8 <initlock>
    80003338:	00000097          	auipc	ra,0x0
    8000333c:	7ac080e7          	jalr	1964(ra) # 80003ae4 <uartinit>
    80003340:	01813083          	ld	ra,24(sp)
    80003344:	01013403          	ld	s0,16(sp)
    80003348:	00000797          	auipc	a5,0x0
    8000334c:	d9c78793          	addi	a5,a5,-612 # 800030e4 <consoleread>
    80003350:	0af4bc23          	sd	a5,184(s1)
    80003354:	00000797          	auipc	a5,0x0
    80003358:	cec78793          	addi	a5,a5,-788 # 80003040 <consolewrite>
    8000335c:	0cf4b023          	sd	a5,192(s1)
    80003360:	00813483          	ld	s1,8(sp)
    80003364:	02010113          	addi	sp,sp,32
    80003368:	00008067          	ret

000000008000336c <console_read>:
    8000336c:	ff010113          	addi	sp,sp,-16
    80003370:	00813423          	sd	s0,8(sp)
    80003374:	01010413          	addi	s0,sp,16
    80003378:	00813403          	ld	s0,8(sp)
    8000337c:	00004317          	auipc	t1,0x4
    80003380:	b9433303          	ld	t1,-1132(t1) # 80006f10 <devsw+0x10>
    80003384:	01010113          	addi	sp,sp,16
    80003388:	00030067          	jr	t1

000000008000338c <console_write>:
    8000338c:	ff010113          	addi	sp,sp,-16
    80003390:	00813423          	sd	s0,8(sp)
    80003394:	01010413          	addi	s0,sp,16
    80003398:	00813403          	ld	s0,8(sp)
    8000339c:	00004317          	auipc	t1,0x4
    800033a0:	b7c33303          	ld	t1,-1156(t1) # 80006f18 <devsw+0x18>
    800033a4:	01010113          	addi	sp,sp,16
    800033a8:	00030067          	jr	t1

00000000800033ac <panic>:
    800033ac:	fe010113          	addi	sp,sp,-32
    800033b0:	00113c23          	sd	ra,24(sp)
    800033b4:	00813823          	sd	s0,16(sp)
    800033b8:	00913423          	sd	s1,8(sp)
    800033bc:	02010413          	addi	s0,sp,32
    800033c0:	00050493          	mv	s1,a0
    800033c4:	00002517          	auipc	a0,0x2
    800033c8:	f7450513          	addi	a0,a0,-140 # 80005338 <_ZZ12printIntegermE6digits+0x2d8>
    800033cc:	00004797          	auipc	a5,0x4
    800033d0:	be07a623          	sw	zero,-1044(a5) # 80006fb8 <pr+0x18>
    800033d4:	00000097          	auipc	ra,0x0
    800033d8:	034080e7          	jalr	52(ra) # 80003408 <__printf>
    800033dc:	00048513          	mv	a0,s1
    800033e0:	00000097          	auipc	ra,0x0
    800033e4:	028080e7          	jalr	40(ra) # 80003408 <__printf>
    800033e8:	00002517          	auipc	a0,0x2
    800033ec:	c6050513          	addi	a0,a0,-928 # 80005048 <CONSOLE_STATUS+0x38>
    800033f0:	00000097          	auipc	ra,0x0
    800033f4:	018080e7          	jalr	24(ra) # 80003408 <__printf>
    800033f8:	00100793          	li	a5,1
    800033fc:	00003717          	auipc	a4,0x3
    80003400:	94f72623          	sw	a5,-1716(a4) # 80005d48 <panicked>
    80003404:	0000006f          	j	80003404 <panic+0x58>

0000000080003408 <__printf>:
    80003408:	f3010113          	addi	sp,sp,-208
    8000340c:	08813023          	sd	s0,128(sp)
    80003410:	07313423          	sd	s3,104(sp)
    80003414:	09010413          	addi	s0,sp,144
    80003418:	05813023          	sd	s8,64(sp)
    8000341c:	08113423          	sd	ra,136(sp)
    80003420:	06913c23          	sd	s1,120(sp)
    80003424:	07213823          	sd	s2,112(sp)
    80003428:	07413023          	sd	s4,96(sp)
    8000342c:	05513c23          	sd	s5,88(sp)
    80003430:	05613823          	sd	s6,80(sp)
    80003434:	05713423          	sd	s7,72(sp)
    80003438:	03913c23          	sd	s9,56(sp)
    8000343c:	03a13823          	sd	s10,48(sp)
    80003440:	03b13423          	sd	s11,40(sp)
    80003444:	00004317          	auipc	t1,0x4
    80003448:	b5c30313          	addi	t1,t1,-1188 # 80006fa0 <pr>
    8000344c:	01832c03          	lw	s8,24(t1)
    80003450:	00b43423          	sd	a1,8(s0)
    80003454:	00c43823          	sd	a2,16(s0)
    80003458:	00d43c23          	sd	a3,24(s0)
    8000345c:	02e43023          	sd	a4,32(s0)
    80003460:	02f43423          	sd	a5,40(s0)
    80003464:	03043823          	sd	a6,48(s0)
    80003468:	03143c23          	sd	a7,56(s0)
    8000346c:	00050993          	mv	s3,a0
    80003470:	4a0c1663          	bnez	s8,8000391c <__printf+0x514>
    80003474:	60098c63          	beqz	s3,80003a8c <__printf+0x684>
    80003478:	0009c503          	lbu	a0,0(s3)
    8000347c:	00840793          	addi	a5,s0,8
    80003480:	f6f43c23          	sd	a5,-136(s0)
    80003484:	00000493          	li	s1,0
    80003488:	22050063          	beqz	a0,800036a8 <__printf+0x2a0>
    8000348c:	00002a37          	lui	s4,0x2
    80003490:	00018ab7          	lui	s5,0x18
    80003494:	000f4b37          	lui	s6,0xf4
    80003498:	00989bb7          	lui	s7,0x989
    8000349c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800034a0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800034a4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800034a8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800034ac:	00148c9b          	addiw	s9,s1,1
    800034b0:	02500793          	li	a5,37
    800034b4:	01998933          	add	s2,s3,s9
    800034b8:	38f51263          	bne	a0,a5,8000383c <__printf+0x434>
    800034bc:	00094783          	lbu	a5,0(s2)
    800034c0:	00078c9b          	sext.w	s9,a5
    800034c4:	1e078263          	beqz	a5,800036a8 <__printf+0x2a0>
    800034c8:	0024849b          	addiw	s1,s1,2
    800034cc:	07000713          	li	a4,112
    800034d0:	00998933          	add	s2,s3,s1
    800034d4:	38e78a63          	beq	a5,a4,80003868 <__printf+0x460>
    800034d8:	20f76863          	bltu	a4,a5,800036e8 <__printf+0x2e0>
    800034dc:	42a78863          	beq	a5,a0,8000390c <__printf+0x504>
    800034e0:	06400713          	li	a4,100
    800034e4:	40e79663          	bne	a5,a4,800038f0 <__printf+0x4e8>
    800034e8:	f7843783          	ld	a5,-136(s0)
    800034ec:	0007a603          	lw	a2,0(a5)
    800034f0:	00878793          	addi	a5,a5,8
    800034f4:	f6f43c23          	sd	a5,-136(s0)
    800034f8:	42064a63          	bltz	a2,8000392c <__printf+0x524>
    800034fc:	00a00713          	li	a4,10
    80003500:	02e677bb          	remuw	a5,a2,a4
    80003504:	00002d97          	auipc	s11,0x2
    80003508:	e5cd8d93          	addi	s11,s11,-420 # 80005360 <digits>
    8000350c:	00900593          	li	a1,9
    80003510:	0006051b          	sext.w	a0,a2
    80003514:	00000c93          	li	s9,0
    80003518:	02079793          	slli	a5,a5,0x20
    8000351c:	0207d793          	srli	a5,a5,0x20
    80003520:	00fd87b3          	add	a5,s11,a5
    80003524:	0007c783          	lbu	a5,0(a5)
    80003528:	02e656bb          	divuw	a3,a2,a4
    8000352c:	f8f40023          	sb	a5,-128(s0)
    80003530:	14c5d863          	bge	a1,a2,80003680 <__printf+0x278>
    80003534:	06300593          	li	a1,99
    80003538:	00100c93          	li	s9,1
    8000353c:	02e6f7bb          	remuw	a5,a3,a4
    80003540:	02079793          	slli	a5,a5,0x20
    80003544:	0207d793          	srli	a5,a5,0x20
    80003548:	00fd87b3          	add	a5,s11,a5
    8000354c:	0007c783          	lbu	a5,0(a5)
    80003550:	02e6d73b          	divuw	a4,a3,a4
    80003554:	f8f400a3          	sb	a5,-127(s0)
    80003558:	12a5f463          	bgeu	a1,a0,80003680 <__printf+0x278>
    8000355c:	00a00693          	li	a3,10
    80003560:	00900593          	li	a1,9
    80003564:	02d777bb          	remuw	a5,a4,a3
    80003568:	02079793          	slli	a5,a5,0x20
    8000356c:	0207d793          	srli	a5,a5,0x20
    80003570:	00fd87b3          	add	a5,s11,a5
    80003574:	0007c503          	lbu	a0,0(a5)
    80003578:	02d757bb          	divuw	a5,a4,a3
    8000357c:	f8a40123          	sb	a0,-126(s0)
    80003580:	48e5f263          	bgeu	a1,a4,80003a04 <__printf+0x5fc>
    80003584:	06300513          	li	a0,99
    80003588:	02d7f5bb          	remuw	a1,a5,a3
    8000358c:	02059593          	slli	a1,a1,0x20
    80003590:	0205d593          	srli	a1,a1,0x20
    80003594:	00bd85b3          	add	a1,s11,a1
    80003598:	0005c583          	lbu	a1,0(a1)
    8000359c:	02d7d7bb          	divuw	a5,a5,a3
    800035a0:	f8b401a3          	sb	a1,-125(s0)
    800035a4:	48e57263          	bgeu	a0,a4,80003a28 <__printf+0x620>
    800035a8:	3e700513          	li	a0,999
    800035ac:	02d7f5bb          	remuw	a1,a5,a3
    800035b0:	02059593          	slli	a1,a1,0x20
    800035b4:	0205d593          	srli	a1,a1,0x20
    800035b8:	00bd85b3          	add	a1,s11,a1
    800035bc:	0005c583          	lbu	a1,0(a1)
    800035c0:	02d7d7bb          	divuw	a5,a5,a3
    800035c4:	f8b40223          	sb	a1,-124(s0)
    800035c8:	46e57663          	bgeu	a0,a4,80003a34 <__printf+0x62c>
    800035cc:	02d7f5bb          	remuw	a1,a5,a3
    800035d0:	02059593          	slli	a1,a1,0x20
    800035d4:	0205d593          	srli	a1,a1,0x20
    800035d8:	00bd85b3          	add	a1,s11,a1
    800035dc:	0005c583          	lbu	a1,0(a1)
    800035e0:	02d7d7bb          	divuw	a5,a5,a3
    800035e4:	f8b402a3          	sb	a1,-123(s0)
    800035e8:	46ea7863          	bgeu	s4,a4,80003a58 <__printf+0x650>
    800035ec:	02d7f5bb          	remuw	a1,a5,a3
    800035f0:	02059593          	slli	a1,a1,0x20
    800035f4:	0205d593          	srli	a1,a1,0x20
    800035f8:	00bd85b3          	add	a1,s11,a1
    800035fc:	0005c583          	lbu	a1,0(a1)
    80003600:	02d7d7bb          	divuw	a5,a5,a3
    80003604:	f8b40323          	sb	a1,-122(s0)
    80003608:	3eeaf863          	bgeu	s5,a4,800039f8 <__printf+0x5f0>
    8000360c:	02d7f5bb          	remuw	a1,a5,a3
    80003610:	02059593          	slli	a1,a1,0x20
    80003614:	0205d593          	srli	a1,a1,0x20
    80003618:	00bd85b3          	add	a1,s11,a1
    8000361c:	0005c583          	lbu	a1,0(a1)
    80003620:	02d7d7bb          	divuw	a5,a5,a3
    80003624:	f8b403a3          	sb	a1,-121(s0)
    80003628:	42eb7e63          	bgeu	s6,a4,80003a64 <__printf+0x65c>
    8000362c:	02d7f5bb          	remuw	a1,a5,a3
    80003630:	02059593          	slli	a1,a1,0x20
    80003634:	0205d593          	srli	a1,a1,0x20
    80003638:	00bd85b3          	add	a1,s11,a1
    8000363c:	0005c583          	lbu	a1,0(a1)
    80003640:	02d7d7bb          	divuw	a5,a5,a3
    80003644:	f8b40423          	sb	a1,-120(s0)
    80003648:	42ebfc63          	bgeu	s7,a4,80003a80 <__printf+0x678>
    8000364c:	02079793          	slli	a5,a5,0x20
    80003650:	0207d793          	srli	a5,a5,0x20
    80003654:	00fd8db3          	add	s11,s11,a5
    80003658:	000dc703          	lbu	a4,0(s11)
    8000365c:	00a00793          	li	a5,10
    80003660:	00900c93          	li	s9,9
    80003664:	f8e404a3          	sb	a4,-119(s0)
    80003668:	00065c63          	bgez	a2,80003680 <__printf+0x278>
    8000366c:	f9040713          	addi	a4,s0,-112
    80003670:	00f70733          	add	a4,a4,a5
    80003674:	02d00693          	li	a3,45
    80003678:	fed70823          	sb	a3,-16(a4)
    8000367c:	00078c93          	mv	s9,a5
    80003680:	f8040793          	addi	a5,s0,-128
    80003684:	01978cb3          	add	s9,a5,s9
    80003688:	f7f40d13          	addi	s10,s0,-129
    8000368c:	000cc503          	lbu	a0,0(s9)
    80003690:	fffc8c93          	addi	s9,s9,-1
    80003694:	00000097          	auipc	ra,0x0
    80003698:	b90080e7          	jalr	-1136(ra) # 80003224 <consputc>
    8000369c:	ffac98e3          	bne	s9,s10,8000368c <__printf+0x284>
    800036a0:	00094503          	lbu	a0,0(s2)
    800036a4:	e00514e3          	bnez	a0,800034ac <__printf+0xa4>
    800036a8:	1a0c1663          	bnez	s8,80003854 <__printf+0x44c>
    800036ac:	08813083          	ld	ra,136(sp)
    800036b0:	08013403          	ld	s0,128(sp)
    800036b4:	07813483          	ld	s1,120(sp)
    800036b8:	07013903          	ld	s2,112(sp)
    800036bc:	06813983          	ld	s3,104(sp)
    800036c0:	06013a03          	ld	s4,96(sp)
    800036c4:	05813a83          	ld	s5,88(sp)
    800036c8:	05013b03          	ld	s6,80(sp)
    800036cc:	04813b83          	ld	s7,72(sp)
    800036d0:	04013c03          	ld	s8,64(sp)
    800036d4:	03813c83          	ld	s9,56(sp)
    800036d8:	03013d03          	ld	s10,48(sp)
    800036dc:	02813d83          	ld	s11,40(sp)
    800036e0:	0d010113          	addi	sp,sp,208
    800036e4:	00008067          	ret
    800036e8:	07300713          	li	a4,115
    800036ec:	1ce78a63          	beq	a5,a4,800038c0 <__printf+0x4b8>
    800036f0:	07800713          	li	a4,120
    800036f4:	1ee79e63          	bne	a5,a4,800038f0 <__printf+0x4e8>
    800036f8:	f7843783          	ld	a5,-136(s0)
    800036fc:	0007a703          	lw	a4,0(a5)
    80003700:	00878793          	addi	a5,a5,8
    80003704:	f6f43c23          	sd	a5,-136(s0)
    80003708:	28074263          	bltz	a4,8000398c <__printf+0x584>
    8000370c:	00002d97          	auipc	s11,0x2
    80003710:	c54d8d93          	addi	s11,s11,-940 # 80005360 <digits>
    80003714:	00f77793          	andi	a5,a4,15
    80003718:	00fd87b3          	add	a5,s11,a5
    8000371c:	0007c683          	lbu	a3,0(a5)
    80003720:	00f00613          	li	a2,15
    80003724:	0007079b          	sext.w	a5,a4
    80003728:	f8d40023          	sb	a3,-128(s0)
    8000372c:	0047559b          	srliw	a1,a4,0x4
    80003730:	0047569b          	srliw	a3,a4,0x4
    80003734:	00000c93          	li	s9,0
    80003738:	0ee65063          	bge	a2,a4,80003818 <__printf+0x410>
    8000373c:	00f6f693          	andi	a3,a3,15
    80003740:	00dd86b3          	add	a3,s11,a3
    80003744:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003748:	0087d79b          	srliw	a5,a5,0x8
    8000374c:	00100c93          	li	s9,1
    80003750:	f8d400a3          	sb	a3,-127(s0)
    80003754:	0cb67263          	bgeu	a2,a1,80003818 <__printf+0x410>
    80003758:	00f7f693          	andi	a3,a5,15
    8000375c:	00dd86b3          	add	a3,s11,a3
    80003760:	0006c583          	lbu	a1,0(a3)
    80003764:	00f00613          	li	a2,15
    80003768:	0047d69b          	srliw	a3,a5,0x4
    8000376c:	f8b40123          	sb	a1,-126(s0)
    80003770:	0047d593          	srli	a1,a5,0x4
    80003774:	28f67e63          	bgeu	a2,a5,80003a10 <__printf+0x608>
    80003778:	00f6f693          	andi	a3,a3,15
    8000377c:	00dd86b3          	add	a3,s11,a3
    80003780:	0006c503          	lbu	a0,0(a3)
    80003784:	0087d813          	srli	a6,a5,0x8
    80003788:	0087d69b          	srliw	a3,a5,0x8
    8000378c:	f8a401a3          	sb	a0,-125(s0)
    80003790:	28b67663          	bgeu	a2,a1,80003a1c <__printf+0x614>
    80003794:	00f6f693          	andi	a3,a3,15
    80003798:	00dd86b3          	add	a3,s11,a3
    8000379c:	0006c583          	lbu	a1,0(a3)
    800037a0:	00c7d513          	srli	a0,a5,0xc
    800037a4:	00c7d69b          	srliw	a3,a5,0xc
    800037a8:	f8b40223          	sb	a1,-124(s0)
    800037ac:	29067a63          	bgeu	a2,a6,80003a40 <__printf+0x638>
    800037b0:	00f6f693          	andi	a3,a3,15
    800037b4:	00dd86b3          	add	a3,s11,a3
    800037b8:	0006c583          	lbu	a1,0(a3)
    800037bc:	0107d813          	srli	a6,a5,0x10
    800037c0:	0107d69b          	srliw	a3,a5,0x10
    800037c4:	f8b402a3          	sb	a1,-123(s0)
    800037c8:	28a67263          	bgeu	a2,a0,80003a4c <__printf+0x644>
    800037cc:	00f6f693          	andi	a3,a3,15
    800037d0:	00dd86b3          	add	a3,s11,a3
    800037d4:	0006c683          	lbu	a3,0(a3)
    800037d8:	0147d79b          	srliw	a5,a5,0x14
    800037dc:	f8d40323          	sb	a3,-122(s0)
    800037e0:	21067663          	bgeu	a2,a6,800039ec <__printf+0x5e4>
    800037e4:	02079793          	slli	a5,a5,0x20
    800037e8:	0207d793          	srli	a5,a5,0x20
    800037ec:	00fd8db3          	add	s11,s11,a5
    800037f0:	000dc683          	lbu	a3,0(s11)
    800037f4:	00800793          	li	a5,8
    800037f8:	00700c93          	li	s9,7
    800037fc:	f8d403a3          	sb	a3,-121(s0)
    80003800:	00075c63          	bgez	a4,80003818 <__printf+0x410>
    80003804:	f9040713          	addi	a4,s0,-112
    80003808:	00f70733          	add	a4,a4,a5
    8000380c:	02d00693          	li	a3,45
    80003810:	fed70823          	sb	a3,-16(a4)
    80003814:	00078c93          	mv	s9,a5
    80003818:	f8040793          	addi	a5,s0,-128
    8000381c:	01978cb3          	add	s9,a5,s9
    80003820:	f7f40d13          	addi	s10,s0,-129
    80003824:	000cc503          	lbu	a0,0(s9)
    80003828:	fffc8c93          	addi	s9,s9,-1
    8000382c:	00000097          	auipc	ra,0x0
    80003830:	9f8080e7          	jalr	-1544(ra) # 80003224 <consputc>
    80003834:	ff9d18e3          	bne	s10,s9,80003824 <__printf+0x41c>
    80003838:	0100006f          	j	80003848 <__printf+0x440>
    8000383c:	00000097          	auipc	ra,0x0
    80003840:	9e8080e7          	jalr	-1560(ra) # 80003224 <consputc>
    80003844:	000c8493          	mv	s1,s9
    80003848:	00094503          	lbu	a0,0(s2)
    8000384c:	c60510e3          	bnez	a0,800034ac <__printf+0xa4>
    80003850:	e40c0ee3          	beqz	s8,800036ac <__printf+0x2a4>
    80003854:	00003517          	auipc	a0,0x3
    80003858:	74c50513          	addi	a0,a0,1868 # 80006fa0 <pr>
    8000385c:	00001097          	auipc	ra,0x1
    80003860:	94c080e7          	jalr	-1716(ra) # 800041a8 <release>
    80003864:	e49ff06f          	j	800036ac <__printf+0x2a4>
    80003868:	f7843783          	ld	a5,-136(s0)
    8000386c:	03000513          	li	a0,48
    80003870:	01000d13          	li	s10,16
    80003874:	00878713          	addi	a4,a5,8
    80003878:	0007bc83          	ld	s9,0(a5)
    8000387c:	f6e43c23          	sd	a4,-136(s0)
    80003880:	00000097          	auipc	ra,0x0
    80003884:	9a4080e7          	jalr	-1628(ra) # 80003224 <consputc>
    80003888:	07800513          	li	a0,120
    8000388c:	00000097          	auipc	ra,0x0
    80003890:	998080e7          	jalr	-1640(ra) # 80003224 <consputc>
    80003894:	00002d97          	auipc	s11,0x2
    80003898:	accd8d93          	addi	s11,s11,-1332 # 80005360 <digits>
    8000389c:	03ccd793          	srli	a5,s9,0x3c
    800038a0:	00fd87b3          	add	a5,s11,a5
    800038a4:	0007c503          	lbu	a0,0(a5)
    800038a8:	fffd0d1b          	addiw	s10,s10,-1
    800038ac:	004c9c93          	slli	s9,s9,0x4
    800038b0:	00000097          	auipc	ra,0x0
    800038b4:	974080e7          	jalr	-1676(ra) # 80003224 <consputc>
    800038b8:	fe0d12e3          	bnez	s10,8000389c <__printf+0x494>
    800038bc:	f8dff06f          	j	80003848 <__printf+0x440>
    800038c0:	f7843783          	ld	a5,-136(s0)
    800038c4:	0007bc83          	ld	s9,0(a5)
    800038c8:	00878793          	addi	a5,a5,8
    800038cc:	f6f43c23          	sd	a5,-136(s0)
    800038d0:	000c9a63          	bnez	s9,800038e4 <__printf+0x4dc>
    800038d4:	1080006f          	j	800039dc <__printf+0x5d4>
    800038d8:	001c8c93          	addi	s9,s9,1
    800038dc:	00000097          	auipc	ra,0x0
    800038e0:	948080e7          	jalr	-1720(ra) # 80003224 <consputc>
    800038e4:	000cc503          	lbu	a0,0(s9)
    800038e8:	fe0518e3          	bnez	a0,800038d8 <__printf+0x4d0>
    800038ec:	f5dff06f          	j	80003848 <__printf+0x440>
    800038f0:	02500513          	li	a0,37
    800038f4:	00000097          	auipc	ra,0x0
    800038f8:	930080e7          	jalr	-1744(ra) # 80003224 <consputc>
    800038fc:	000c8513          	mv	a0,s9
    80003900:	00000097          	auipc	ra,0x0
    80003904:	924080e7          	jalr	-1756(ra) # 80003224 <consputc>
    80003908:	f41ff06f          	j	80003848 <__printf+0x440>
    8000390c:	02500513          	li	a0,37
    80003910:	00000097          	auipc	ra,0x0
    80003914:	914080e7          	jalr	-1772(ra) # 80003224 <consputc>
    80003918:	f31ff06f          	j	80003848 <__printf+0x440>
    8000391c:	00030513          	mv	a0,t1
    80003920:	00000097          	auipc	ra,0x0
    80003924:	7bc080e7          	jalr	1980(ra) # 800040dc <acquire>
    80003928:	b4dff06f          	j	80003474 <__printf+0x6c>
    8000392c:	40c0053b          	negw	a0,a2
    80003930:	00a00713          	li	a4,10
    80003934:	02e576bb          	remuw	a3,a0,a4
    80003938:	00002d97          	auipc	s11,0x2
    8000393c:	a28d8d93          	addi	s11,s11,-1496 # 80005360 <digits>
    80003940:	ff700593          	li	a1,-9
    80003944:	02069693          	slli	a3,a3,0x20
    80003948:	0206d693          	srli	a3,a3,0x20
    8000394c:	00dd86b3          	add	a3,s11,a3
    80003950:	0006c683          	lbu	a3,0(a3)
    80003954:	02e557bb          	divuw	a5,a0,a4
    80003958:	f8d40023          	sb	a3,-128(s0)
    8000395c:	10b65e63          	bge	a2,a1,80003a78 <__printf+0x670>
    80003960:	06300593          	li	a1,99
    80003964:	02e7f6bb          	remuw	a3,a5,a4
    80003968:	02069693          	slli	a3,a3,0x20
    8000396c:	0206d693          	srli	a3,a3,0x20
    80003970:	00dd86b3          	add	a3,s11,a3
    80003974:	0006c683          	lbu	a3,0(a3)
    80003978:	02e7d73b          	divuw	a4,a5,a4
    8000397c:	00200793          	li	a5,2
    80003980:	f8d400a3          	sb	a3,-127(s0)
    80003984:	bca5ece3          	bltu	a1,a0,8000355c <__printf+0x154>
    80003988:	ce5ff06f          	j	8000366c <__printf+0x264>
    8000398c:	40e007bb          	negw	a5,a4
    80003990:	00002d97          	auipc	s11,0x2
    80003994:	9d0d8d93          	addi	s11,s11,-1584 # 80005360 <digits>
    80003998:	00f7f693          	andi	a3,a5,15
    8000399c:	00dd86b3          	add	a3,s11,a3
    800039a0:	0006c583          	lbu	a1,0(a3)
    800039a4:	ff100613          	li	a2,-15
    800039a8:	0047d69b          	srliw	a3,a5,0x4
    800039ac:	f8b40023          	sb	a1,-128(s0)
    800039b0:	0047d59b          	srliw	a1,a5,0x4
    800039b4:	0ac75e63          	bge	a4,a2,80003a70 <__printf+0x668>
    800039b8:	00f6f693          	andi	a3,a3,15
    800039bc:	00dd86b3          	add	a3,s11,a3
    800039c0:	0006c603          	lbu	a2,0(a3)
    800039c4:	00f00693          	li	a3,15
    800039c8:	0087d79b          	srliw	a5,a5,0x8
    800039cc:	f8c400a3          	sb	a2,-127(s0)
    800039d0:	d8b6e4e3          	bltu	a3,a1,80003758 <__printf+0x350>
    800039d4:	00200793          	li	a5,2
    800039d8:	e2dff06f          	j	80003804 <__printf+0x3fc>
    800039dc:	00002c97          	auipc	s9,0x2
    800039e0:	964c8c93          	addi	s9,s9,-1692 # 80005340 <_ZZ12printIntegermE6digits+0x2e0>
    800039e4:	02800513          	li	a0,40
    800039e8:	ef1ff06f          	j	800038d8 <__printf+0x4d0>
    800039ec:	00700793          	li	a5,7
    800039f0:	00600c93          	li	s9,6
    800039f4:	e0dff06f          	j	80003800 <__printf+0x3f8>
    800039f8:	00700793          	li	a5,7
    800039fc:	00600c93          	li	s9,6
    80003a00:	c69ff06f          	j	80003668 <__printf+0x260>
    80003a04:	00300793          	li	a5,3
    80003a08:	00200c93          	li	s9,2
    80003a0c:	c5dff06f          	j	80003668 <__printf+0x260>
    80003a10:	00300793          	li	a5,3
    80003a14:	00200c93          	li	s9,2
    80003a18:	de9ff06f          	j	80003800 <__printf+0x3f8>
    80003a1c:	00400793          	li	a5,4
    80003a20:	00300c93          	li	s9,3
    80003a24:	dddff06f          	j	80003800 <__printf+0x3f8>
    80003a28:	00400793          	li	a5,4
    80003a2c:	00300c93          	li	s9,3
    80003a30:	c39ff06f          	j	80003668 <__printf+0x260>
    80003a34:	00500793          	li	a5,5
    80003a38:	00400c93          	li	s9,4
    80003a3c:	c2dff06f          	j	80003668 <__printf+0x260>
    80003a40:	00500793          	li	a5,5
    80003a44:	00400c93          	li	s9,4
    80003a48:	db9ff06f          	j	80003800 <__printf+0x3f8>
    80003a4c:	00600793          	li	a5,6
    80003a50:	00500c93          	li	s9,5
    80003a54:	dadff06f          	j	80003800 <__printf+0x3f8>
    80003a58:	00600793          	li	a5,6
    80003a5c:	00500c93          	li	s9,5
    80003a60:	c09ff06f          	j	80003668 <__printf+0x260>
    80003a64:	00800793          	li	a5,8
    80003a68:	00700c93          	li	s9,7
    80003a6c:	bfdff06f          	j	80003668 <__printf+0x260>
    80003a70:	00100793          	li	a5,1
    80003a74:	d91ff06f          	j	80003804 <__printf+0x3fc>
    80003a78:	00100793          	li	a5,1
    80003a7c:	bf1ff06f          	j	8000366c <__printf+0x264>
    80003a80:	00900793          	li	a5,9
    80003a84:	00800c93          	li	s9,8
    80003a88:	be1ff06f          	j	80003668 <__printf+0x260>
    80003a8c:	00002517          	auipc	a0,0x2
    80003a90:	8bc50513          	addi	a0,a0,-1860 # 80005348 <_ZZ12printIntegermE6digits+0x2e8>
    80003a94:	00000097          	auipc	ra,0x0
    80003a98:	918080e7          	jalr	-1768(ra) # 800033ac <panic>

0000000080003a9c <printfinit>:
    80003a9c:	fe010113          	addi	sp,sp,-32
    80003aa0:	00813823          	sd	s0,16(sp)
    80003aa4:	00913423          	sd	s1,8(sp)
    80003aa8:	00113c23          	sd	ra,24(sp)
    80003aac:	02010413          	addi	s0,sp,32
    80003ab0:	00003497          	auipc	s1,0x3
    80003ab4:	4f048493          	addi	s1,s1,1264 # 80006fa0 <pr>
    80003ab8:	00048513          	mv	a0,s1
    80003abc:	00002597          	auipc	a1,0x2
    80003ac0:	89c58593          	addi	a1,a1,-1892 # 80005358 <_ZZ12printIntegermE6digits+0x2f8>
    80003ac4:	00000097          	auipc	ra,0x0
    80003ac8:	5f4080e7          	jalr	1524(ra) # 800040b8 <initlock>
    80003acc:	01813083          	ld	ra,24(sp)
    80003ad0:	01013403          	ld	s0,16(sp)
    80003ad4:	0004ac23          	sw	zero,24(s1)
    80003ad8:	00813483          	ld	s1,8(sp)
    80003adc:	02010113          	addi	sp,sp,32
    80003ae0:	00008067          	ret

0000000080003ae4 <uartinit>:
    80003ae4:	ff010113          	addi	sp,sp,-16
    80003ae8:	00813423          	sd	s0,8(sp)
    80003aec:	01010413          	addi	s0,sp,16
    80003af0:	100007b7          	lui	a5,0x10000
    80003af4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003af8:	f8000713          	li	a4,-128
    80003afc:	00e781a3          	sb	a4,3(a5)
    80003b00:	00300713          	li	a4,3
    80003b04:	00e78023          	sb	a4,0(a5)
    80003b08:	000780a3          	sb	zero,1(a5)
    80003b0c:	00e781a3          	sb	a4,3(a5)
    80003b10:	00700693          	li	a3,7
    80003b14:	00d78123          	sb	a3,2(a5)
    80003b18:	00e780a3          	sb	a4,1(a5)
    80003b1c:	00813403          	ld	s0,8(sp)
    80003b20:	01010113          	addi	sp,sp,16
    80003b24:	00008067          	ret

0000000080003b28 <uartputc>:
    80003b28:	00002797          	auipc	a5,0x2
    80003b2c:	2207a783          	lw	a5,544(a5) # 80005d48 <panicked>
    80003b30:	00078463          	beqz	a5,80003b38 <uartputc+0x10>
    80003b34:	0000006f          	j	80003b34 <uartputc+0xc>
    80003b38:	fd010113          	addi	sp,sp,-48
    80003b3c:	02813023          	sd	s0,32(sp)
    80003b40:	00913c23          	sd	s1,24(sp)
    80003b44:	01213823          	sd	s2,16(sp)
    80003b48:	01313423          	sd	s3,8(sp)
    80003b4c:	02113423          	sd	ra,40(sp)
    80003b50:	03010413          	addi	s0,sp,48
    80003b54:	00002917          	auipc	s2,0x2
    80003b58:	1fc90913          	addi	s2,s2,508 # 80005d50 <uart_tx_r>
    80003b5c:	00093783          	ld	a5,0(s2)
    80003b60:	00002497          	auipc	s1,0x2
    80003b64:	1f848493          	addi	s1,s1,504 # 80005d58 <uart_tx_w>
    80003b68:	0004b703          	ld	a4,0(s1)
    80003b6c:	02078693          	addi	a3,a5,32
    80003b70:	00050993          	mv	s3,a0
    80003b74:	02e69c63          	bne	a3,a4,80003bac <uartputc+0x84>
    80003b78:	00001097          	auipc	ra,0x1
    80003b7c:	834080e7          	jalr	-1996(ra) # 800043ac <push_on>
    80003b80:	00093783          	ld	a5,0(s2)
    80003b84:	0004b703          	ld	a4,0(s1)
    80003b88:	02078793          	addi	a5,a5,32
    80003b8c:	00e79463          	bne	a5,a4,80003b94 <uartputc+0x6c>
    80003b90:	0000006f          	j	80003b90 <uartputc+0x68>
    80003b94:	00001097          	auipc	ra,0x1
    80003b98:	88c080e7          	jalr	-1908(ra) # 80004420 <pop_on>
    80003b9c:	00093783          	ld	a5,0(s2)
    80003ba0:	0004b703          	ld	a4,0(s1)
    80003ba4:	02078693          	addi	a3,a5,32
    80003ba8:	fce688e3          	beq	a3,a4,80003b78 <uartputc+0x50>
    80003bac:	01f77693          	andi	a3,a4,31
    80003bb0:	00003597          	auipc	a1,0x3
    80003bb4:	41058593          	addi	a1,a1,1040 # 80006fc0 <uart_tx_buf>
    80003bb8:	00d586b3          	add	a3,a1,a3
    80003bbc:	00170713          	addi	a4,a4,1
    80003bc0:	01368023          	sb	s3,0(a3)
    80003bc4:	00e4b023          	sd	a4,0(s1)
    80003bc8:	10000637          	lui	a2,0x10000
    80003bcc:	02f71063          	bne	a4,a5,80003bec <uartputc+0xc4>
    80003bd0:	0340006f          	j	80003c04 <uartputc+0xdc>
    80003bd4:	00074703          	lbu	a4,0(a4)
    80003bd8:	00f93023          	sd	a5,0(s2)
    80003bdc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003be0:	00093783          	ld	a5,0(s2)
    80003be4:	0004b703          	ld	a4,0(s1)
    80003be8:	00f70e63          	beq	a4,a5,80003c04 <uartputc+0xdc>
    80003bec:	00564683          	lbu	a3,5(a2)
    80003bf0:	01f7f713          	andi	a4,a5,31
    80003bf4:	00e58733          	add	a4,a1,a4
    80003bf8:	0206f693          	andi	a3,a3,32
    80003bfc:	00178793          	addi	a5,a5,1
    80003c00:	fc069ae3          	bnez	a3,80003bd4 <uartputc+0xac>
    80003c04:	02813083          	ld	ra,40(sp)
    80003c08:	02013403          	ld	s0,32(sp)
    80003c0c:	01813483          	ld	s1,24(sp)
    80003c10:	01013903          	ld	s2,16(sp)
    80003c14:	00813983          	ld	s3,8(sp)
    80003c18:	03010113          	addi	sp,sp,48
    80003c1c:	00008067          	ret

0000000080003c20 <uartputc_sync>:
    80003c20:	ff010113          	addi	sp,sp,-16
    80003c24:	00813423          	sd	s0,8(sp)
    80003c28:	01010413          	addi	s0,sp,16
    80003c2c:	00002717          	auipc	a4,0x2
    80003c30:	11c72703          	lw	a4,284(a4) # 80005d48 <panicked>
    80003c34:	02071663          	bnez	a4,80003c60 <uartputc_sync+0x40>
    80003c38:	00050793          	mv	a5,a0
    80003c3c:	100006b7          	lui	a3,0x10000
    80003c40:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003c44:	02077713          	andi	a4,a4,32
    80003c48:	fe070ce3          	beqz	a4,80003c40 <uartputc_sync+0x20>
    80003c4c:	0ff7f793          	andi	a5,a5,255
    80003c50:	00f68023          	sb	a5,0(a3)
    80003c54:	00813403          	ld	s0,8(sp)
    80003c58:	01010113          	addi	sp,sp,16
    80003c5c:	00008067          	ret
    80003c60:	0000006f          	j	80003c60 <uartputc_sync+0x40>

0000000080003c64 <uartstart>:
    80003c64:	ff010113          	addi	sp,sp,-16
    80003c68:	00813423          	sd	s0,8(sp)
    80003c6c:	01010413          	addi	s0,sp,16
    80003c70:	00002617          	auipc	a2,0x2
    80003c74:	0e060613          	addi	a2,a2,224 # 80005d50 <uart_tx_r>
    80003c78:	00002517          	auipc	a0,0x2
    80003c7c:	0e050513          	addi	a0,a0,224 # 80005d58 <uart_tx_w>
    80003c80:	00063783          	ld	a5,0(a2)
    80003c84:	00053703          	ld	a4,0(a0)
    80003c88:	04f70263          	beq	a4,a5,80003ccc <uartstart+0x68>
    80003c8c:	100005b7          	lui	a1,0x10000
    80003c90:	00003817          	auipc	a6,0x3
    80003c94:	33080813          	addi	a6,a6,816 # 80006fc0 <uart_tx_buf>
    80003c98:	01c0006f          	j	80003cb4 <uartstart+0x50>
    80003c9c:	0006c703          	lbu	a4,0(a3)
    80003ca0:	00f63023          	sd	a5,0(a2)
    80003ca4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003ca8:	00063783          	ld	a5,0(a2)
    80003cac:	00053703          	ld	a4,0(a0)
    80003cb0:	00f70e63          	beq	a4,a5,80003ccc <uartstart+0x68>
    80003cb4:	01f7f713          	andi	a4,a5,31
    80003cb8:	00e806b3          	add	a3,a6,a4
    80003cbc:	0055c703          	lbu	a4,5(a1)
    80003cc0:	00178793          	addi	a5,a5,1
    80003cc4:	02077713          	andi	a4,a4,32
    80003cc8:	fc071ae3          	bnez	a4,80003c9c <uartstart+0x38>
    80003ccc:	00813403          	ld	s0,8(sp)
    80003cd0:	01010113          	addi	sp,sp,16
    80003cd4:	00008067          	ret

0000000080003cd8 <uartgetc>:
    80003cd8:	ff010113          	addi	sp,sp,-16
    80003cdc:	00813423          	sd	s0,8(sp)
    80003ce0:	01010413          	addi	s0,sp,16
    80003ce4:	10000737          	lui	a4,0x10000
    80003ce8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003cec:	0017f793          	andi	a5,a5,1
    80003cf0:	00078c63          	beqz	a5,80003d08 <uartgetc+0x30>
    80003cf4:	00074503          	lbu	a0,0(a4)
    80003cf8:	0ff57513          	andi	a0,a0,255
    80003cfc:	00813403          	ld	s0,8(sp)
    80003d00:	01010113          	addi	sp,sp,16
    80003d04:	00008067          	ret
    80003d08:	fff00513          	li	a0,-1
    80003d0c:	ff1ff06f          	j	80003cfc <uartgetc+0x24>

0000000080003d10 <uartintr>:
    80003d10:	100007b7          	lui	a5,0x10000
    80003d14:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003d18:	0017f793          	andi	a5,a5,1
    80003d1c:	0a078463          	beqz	a5,80003dc4 <uartintr+0xb4>
    80003d20:	fe010113          	addi	sp,sp,-32
    80003d24:	00813823          	sd	s0,16(sp)
    80003d28:	00913423          	sd	s1,8(sp)
    80003d2c:	00113c23          	sd	ra,24(sp)
    80003d30:	02010413          	addi	s0,sp,32
    80003d34:	100004b7          	lui	s1,0x10000
    80003d38:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003d3c:	0ff57513          	andi	a0,a0,255
    80003d40:	fffff097          	auipc	ra,0xfffff
    80003d44:	534080e7          	jalr	1332(ra) # 80003274 <consoleintr>
    80003d48:	0054c783          	lbu	a5,5(s1)
    80003d4c:	0017f793          	andi	a5,a5,1
    80003d50:	fe0794e3          	bnez	a5,80003d38 <uartintr+0x28>
    80003d54:	00002617          	auipc	a2,0x2
    80003d58:	ffc60613          	addi	a2,a2,-4 # 80005d50 <uart_tx_r>
    80003d5c:	00002517          	auipc	a0,0x2
    80003d60:	ffc50513          	addi	a0,a0,-4 # 80005d58 <uart_tx_w>
    80003d64:	00063783          	ld	a5,0(a2)
    80003d68:	00053703          	ld	a4,0(a0)
    80003d6c:	04f70263          	beq	a4,a5,80003db0 <uartintr+0xa0>
    80003d70:	100005b7          	lui	a1,0x10000
    80003d74:	00003817          	auipc	a6,0x3
    80003d78:	24c80813          	addi	a6,a6,588 # 80006fc0 <uart_tx_buf>
    80003d7c:	01c0006f          	j	80003d98 <uartintr+0x88>
    80003d80:	0006c703          	lbu	a4,0(a3)
    80003d84:	00f63023          	sd	a5,0(a2)
    80003d88:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003d8c:	00063783          	ld	a5,0(a2)
    80003d90:	00053703          	ld	a4,0(a0)
    80003d94:	00f70e63          	beq	a4,a5,80003db0 <uartintr+0xa0>
    80003d98:	01f7f713          	andi	a4,a5,31
    80003d9c:	00e806b3          	add	a3,a6,a4
    80003da0:	0055c703          	lbu	a4,5(a1)
    80003da4:	00178793          	addi	a5,a5,1
    80003da8:	02077713          	andi	a4,a4,32
    80003dac:	fc071ae3          	bnez	a4,80003d80 <uartintr+0x70>
    80003db0:	01813083          	ld	ra,24(sp)
    80003db4:	01013403          	ld	s0,16(sp)
    80003db8:	00813483          	ld	s1,8(sp)
    80003dbc:	02010113          	addi	sp,sp,32
    80003dc0:	00008067          	ret
    80003dc4:	00002617          	auipc	a2,0x2
    80003dc8:	f8c60613          	addi	a2,a2,-116 # 80005d50 <uart_tx_r>
    80003dcc:	00002517          	auipc	a0,0x2
    80003dd0:	f8c50513          	addi	a0,a0,-116 # 80005d58 <uart_tx_w>
    80003dd4:	00063783          	ld	a5,0(a2)
    80003dd8:	00053703          	ld	a4,0(a0)
    80003ddc:	04f70263          	beq	a4,a5,80003e20 <uartintr+0x110>
    80003de0:	100005b7          	lui	a1,0x10000
    80003de4:	00003817          	auipc	a6,0x3
    80003de8:	1dc80813          	addi	a6,a6,476 # 80006fc0 <uart_tx_buf>
    80003dec:	01c0006f          	j	80003e08 <uartintr+0xf8>
    80003df0:	0006c703          	lbu	a4,0(a3)
    80003df4:	00f63023          	sd	a5,0(a2)
    80003df8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003dfc:	00063783          	ld	a5,0(a2)
    80003e00:	00053703          	ld	a4,0(a0)
    80003e04:	02f70063          	beq	a4,a5,80003e24 <uartintr+0x114>
    80003e08:	01f7f713          	andi	a4,a5,31
    80003e0c:	00e806b3          	add	a3,a6,a4
    80003e10:	0055c703          	lbu	a4,5(a1)
    80003e14:	00178793          	addi	a5,a5,1
    80003e18:	02077713          	andi	a4,a4,32
    80003e1c:	fc071ae3          	bnez	a4,80003df0 <uartintr+0xe0>
    80003e20:	00008067          	ret
    80003e24:	00008067          	ret

0000000080003e28 <kinit>:
    80003e28:	fc010113          	addi	sp,sp,-64
    80003e2c:	02913423          	sd	s1,40(sp)
    80003e30:	fffff7b7          	lui	a5,0xfffff
    80003e34:	00004497          	auipc	s1,0x4
    80003e38:	1ab48493          	addi	s1,s1,427 # 80007fdf <end+0xfff>
    80003e3c:	02813823          	sd	s0,48(sp)
    80003e40:	01313c23          	sd	s3,24(sp)
    80003e44:	00f4f4b3          	and	s1,s1,a5
    80003e48:	02113c23          	sd	ra,56(sp)
    80003e4c:	03213023          	sd	s2,32(sp)
    80003e50:	01413823          	sd	s4,16(sp)
    80003e54:	01513423          	sd	s5,8(sp)
    80003e58:	04010413          	addi	s0,sp,64
    80003e5c:	000017b7          	lui	a5,0x1
    80003e60:	01100993          	li	s3,17
    80003e64:	00f487b3          	add	a5,s1,a5
    80003e68:	01b99993          	slli	s3,s3,0x1b
    80003e6c:	06f9e063          	bltu	s3,a5,80003ecc <kinit+0xa4>
    80003e70:	00003a97          	auipc	s5,0x3
    80003e74:	170a8a93          	addi	s5,s5,368 # 80006fe0 <end>
    80003e78:	0754ec63          	bltu	s1,s5,80003ef0 <kinit+0xc8>
    80003e7c:	0734fa63          	bgeu	s1,s3,80003ef0 <kinit+0xc8>
    80003e80:	00088a37          	lui	s4,0x88
    80003e84:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003e88:	00002917          	auipc	s2,0x2
    80003e8c:	ed890913          	addi	s2,s2,-296 # 80005d60 <kmem>
    80003e90:	00ca1a13          	slli	s4,s4,0xc
    80003e94:	0140006f          	j	80003ea8 <kinit+0x80>
    80003e98:	000017b7          	lui	a5,0x1
    80003e9c:	00f484b3          	add	s1,s1,a5
    80003ea0:	0554e863          	bltu	s1,s5,80003ef0 <kinit+0xc8>
    80003ea4:	0534f663          	bgeu	s1,s3,80003ef0 <kinit+0xc8>
    80003ea8:	00001637          	lui	a2,0x1
    80003eac:	00100593          	li	a1,1
    80003eb0:	00048513          	mv	a0,s1
    80003eb4:	00000097          	auipc	ra,0x0
    80003eb8:	5e4080e7          	jalr	1508(ra) # 80004498 <__memset>
    80003ebc:	00093783          	ld	a5,0(s2)
    80003ec0:	00f4b023          	sd	a5,0(s1)
    80003ec4:	00993023          	sd	s1,0(s2)
    80003ec8:	fd4498e3          	bne	s1,s4,80003e98 <kinit+0x70>
    80003ecc:	03813083          	ld	ra,56(sp)
    80003ed0:	03013403          	ld	s0,48(sp)
    80003ed4:	02813483          	ld	s1,40(sp)
    80003ed8:	02013903          	ld	s2,32(sp)
    80003edc:	01813983          	ld	s3,24(sp)
    80003ee0:	01013a03          	ld	s4,16(sp)
    80003ee4:	00813a83          	ld	s5,8(sp)
    80003ee8:	04010113          	addi	sp,sp,64
    80003eec:	00008067          	ret
    80003ef0:	00001517          	auipc	a0,0x1
    80003ef4:	48850513          	addi	a0,a0,1160 # 80005378 <digits+0x18>
    80003ef8:	fffff097          	auipc	ra,0xfffff
    80003efc:	4b4080e7          	jalr	1204(ra) # 800033ac <panic>

0000000080003f00 <freerange>:
    80003f00:	fc010113          	addi	sp,sp,-64
    80003f04:	000017b7          	lui	a5,0x1
    80003f08:	02913423          	sd	s1,40(sp)
    80003f0c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003f10:	009504b3          	add	s1,a0,s1
    80003f14:	fffff537          	lui	a0,0xfffff
    80003f18:	02813823          	sd	s0,48(sp)
    80003f1c:	02113c23          	sd	ra,56(sp)
    80003f20:	03213023          	sd	s2,32(sp)
    80003f24:	01313c23          	sd	s3,24(sp)
    80003f28:	01413823          	sd	s4,16(sp)
    80003f2c:	01513423          	sd	s5,8(sp)
    80003f30:	01613023          	sd	s6,0(sp)
    80003f34:	04010413          	addi	s0,sp,64
    80003f38:	00a4f4b3          	and	s1,s1,a0
    80003f3c:	00f487b3          	add	a5,s1,a5
    80003f40:	06f5e463          	bltu	a1,a5,80003fa8 <freerange+0xa8>
    80003f44:	00003a97          	auipc	s5,0x3
    80003f48:	09ca8a93          	addi	s5,s5,156 # 80006fe0 <end>
    80003f4c:	0954e263          	bltu	s1,s5,80003fd0 <freerange+0xd0>
    80003f50:	01100993          	li	s3,17
    80003f54:	01b99993          	slli	s3,s3,0x1b
    80003f58:	0734fc63          	bgeu	s1,s3,80003fd0 <freerange+0xd0>
    80003f5c:	00058a13          	mv	s4,a1
    80003f60:	00002917          	auipc	s2,0x2
    80003f64:	e0090913          	addi	s2,s2,-512 # 80005d60 <kmem>
    80003f68:	00002b37          	lui	s6,0x2
    80003f6c:	0140006f          	j	80003f80 <freerange+0x80>
    80003f70:	000017b7          	lui	a5,0x1
    80003f74:	00f484b3          	add	s1,s1,a5
    80003f78:	0554ec63          	bltu	s1,s5,80003fd0 <freerange+0xd0>
    80003f7c:	0534fa63          	bgeu	s1,s3,80003fd0 <freerange+0xd0>
    80003f80:	00001637          	lui	a2,0x1
    80003f84:	00100593          	li	a1,1
    80003f88:	00048513          	mv	a0,s1
    80003f8c:	00000097          	auipc	ra,0x0
    80003f90:	50c080e7          	jalr	1292(ra) # 80004498 <__memset>
    80003f94:	00093703          	ld	a4,0(s2)
    80003f98:	016487b3          	add	a5,s1,s6
    80003f9c:	00e4b023          	sd	a4,0(s1)
    80003fa0:	00993023          	sd	s1,0(s2)
    80003fa4:	fcfa76e3          	bgeu	s4,a5,80003f70 <freerange+0x70>
    80003fa8:	03813083          	ld	ra,56(sp)
    80003fac:	03013403          	ld	s0,48(sp)
    80003fb0:	02813483          	ld	s1,40(sp)
    80003fb4:	02013903          	ld	s2,32(sp)
    80003fb8:	01813983          	ld	s3,24(sp)
    80003fbc:	01013a03          	ld	s4,16(sp)
    80003fc0:	00813a83          	ld	s5,8(sp)
    80003fc4:	00013b03          	ld	s6,0(sp)
    80003fc8:	04010113          	addi	sp,sp,64
    80003fcc:	00008067          	ret
    80003fd0:	00001517          	auipc	a0,0x1
    80003fd4:	3a850513          	addi	a0,a0,936 # 80005378 <digits+0x18>
    80003fd8:	fffff097          	auipc	ra,0xfffff
    80003fdc:	3d4080e7          	jalr	980(ra) # 800033ac <panic>

0000000080003fe0 <kfree>:
    80003fe0:	fe010113          	addi	sp,sp,-32
    80003fe4:	00813823          	sd	s0,16(sp)
    80003fe8:	00113c23          	sd	ra,24(sp)
    80003fec:	00913423          	sd	s1,8(sp)
    80003ff0:	02010413          	addi	s0,sp,32
    80003ff4:	03451793          	slli	a5,a0,0x34
    80003ff8:	04079c63          	bnez	a5,80004050 <kfree+0x70>
    80003ffc:	00003797          	auipc	a5,0x3
    80004000:	fe478793          	addi	a5,a5,-28 # 80006fe0 <end>
    80004004:	00050493          	mv	s1,a0
    80004008:	04f56463          	bltu	a0,a5,80004050 <kfree+0x70>
    8000400c:	01100793          	li	a5,17
    80004010:	01b79793          	slli	a5,a5,0x1b
    80004014:	02f57e63          	bgeu	a0,a5,80004050 <kfree+0x70>
    80004018:	00001637          	lui	a2,0x1
    8000401c:	00100593          	li	a1,1
    80004020:	00000097          	auipc	ra,0x0
    80004024:	478080e7          	jalr	1144(ra) # 80004498 <__memset>
    80004028:	00002797          	auipc	a5,0x2
    8000402c:	d3878793          	addi	a5,a5,-712 # 80005d60 <kmem>
    80004030:	0007b703          	ld	a4,0(a5)
    80004034:	01813083          	ld	ra,24(sp)
    80004038:	01013403          	ld	s0,16(sp)
    8000403c:	00e4b023          	sd	a4,0(s1)
    80004040:	0097b023          	sd	s1,0(a5)
    80004044:	00813483          	ld	s1,8(sp)
    80004048:	02010113          	addi	sp,sp,32
    8000404c:	00008067          	ret
    80004050:	00001517          	auipc	a0,0x1
    80004054:	32850513          	addi	a0,a0,808 # 80005378 <digits+0x18>
    80004058:	fffff097          	auipc	ra,0xfffff
    8000405c:	354080e7          	jalr	852(ra) # 800033ac <panic>

0000000080004060 <kalloc>:
    80004060:	fe010113          	addi	sp,sp,-32
    80004064:	00813823          	sd	s0,16(sp)
    80004068:	00913423          	sd	s1,8(sp)
    8000406c:	00113c23          	sd	ra,24(sp)
    80004070:	02010413          	addi	s0,sp,32
    80004074:	00002797          	auipc	a5,0x2
    80004078:	cec78793          	addi	a5,a5,-788 # 80005d60 <kmem>
    8000407c:	0007b483          	ld	s1,0(a5)
    80004080:	02048063          	beqz	s1,800040a0 <kalloc+0x40>
    80004084:	0004b703          	ld	a4,0(s1)
    80004088:	00001637          	lui	a2,0x1
    8000408c:	00500593          	li	a1,5
    80004090:	00048513          	mv	a0,s1
    80004094:	00e7b023          	sd	a4,0(a5)
    80004098:	00000097          	auipc	ra,0x0
    8000409c:	400080e7          	jalr	1024(ra) # 80004498 <__memset>
    800040a0:	01813083          	ld	ra,24(sp)
    800040a4:	01013403          	ld	s0,16(sp)
    800040a8:	00048513          	mv	a0,s1
    800040ac:	00813483          	ld	s1,8(sp)
    800040b0:	02010113          	addi	sp,sp,32
    800040b4:	00008067          	ret

00000000800040b8 <initlock>:
    800040b8:	ff010113          	addi	sp,sp,-16
    800040bc:	00813423          	sd	s0,8(sp)
    800040c0:	01010413          	addi	s0,sp,16
    800040c4:	00813403          	ld	s0,8(sp)
    800040c8:	00b53423          	sd	a1,8(a0)
    800040cc:	00052023          	sw	zero,0(a0)
    800040d0:	00053823          	sd	zero,16(a0)
    800040d4:	01010113          	addi	sp,sp,16
    800040d8:	00008067          	ret

00000000800040dc <acquire>:
    800040dc:	fe010113          	addi	sp,sp,-32
    800040e0:	00813823          	sd	s0,16(sp)
    800040e4:	00913423          	sd	s1,8(sp)
    800040e8:	00113c23          	sd	ra,24(sp)
    800040ec:	01213023          	sd	s2,0(sp)
    800040f0:	02010413          	addi	s0,sp,32
    800040f4:	00050493          	mv	s1,a0
    800040f8:	10002973          	csrr	s2,sstatus
    800040fc:	100027f3          	csrr	a5,sstatus
    80004100:	ffd7f793          	andi	a5,a5,-3
    80004104:	10079073          	csrw	sstatus,a5
    80004108:	fffff097          	auipc	ra,0xfffff
    8000410c:	8ec080e7          	jalr	-1812(ra) # 800029f4 <mycpu>
    80004110:	07852783          	lw	a5,120(a0)
    80004114:	06078e63          	beqz	a5,80004190 <acquire+0xb4>
    80004118:	fffff097          	auipc	ra,0xfffff
    8000411c:	8dc080e7          	jalr	-1828(ra) # 800029f4 <mycpu>
    80004120:	07852783          	lw	a5,120(a0)
    80004124:	0004a703          	lw	a4,0(s1)
    80004128:	0017879b          	addiw	a5,a5,1
    8000412c:	06f52c23          	sw	a5,120(a0)
    80004130:	04071063          	bnez	a4,80004170 <acquire+0x94>
    80004134:	00100713          	li	a4,1
    80004138:	00070793          	mv	a5,a4
    8000413c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004140:	0007879b          	sext.w	a5,a5
    80004144:	fe079ae3          	bnez	a5,80004138 <acquire+0x5c>
    80004148:	0ff0000f          	fence
    8000414c:	fffff097          	auipc	ra,0xfffff
    80004150:	8a8080e7          	jalr	-1880(ra) # 800029f4 <mycpu>
    80004154:	01813083          	ld	ra,24(sp)
    80004158:	01013403          	ld	s0,16(sp)
    8000415c:	00a4b823          	sd	a0,16(s1)
    80004160:	00013903          	ld	s2,0(sp)
    80004164:	00813483          	ld	s1,8(sp)
    80004168:	02010113          	addi	sp,sp,32
    8000416c:	00008067          	ret
    80004170:	0104b903          	ld	s2,16(s1)
    80004174:	fffff097          	auipc	ra,0xfffff
    80004178:	880080e7          	jalr	-1920(ra) # 800029f4 <mycpu>
    8000417c:	faa91ce3          	bne	s2,a0,80004134 <acquire+0x58>
    80004180:	00001517          	auipc	a0,0x1
    80004184:	20050513          	addi	a0,a0,512 # 80005380 <digits+0x20>
    80004188:	fffff097          	auipc	ra,0xfffff
    8000418c:	224080e7          	jalr	548(ra) # 800033ac <panic>
    80004190:	00195913          	srli	s2,s2,0x1
    80004194:	fffff097          	auipc	ra,0xfffff
    80004198:	860080e7          	jalr	-1952(ra) # 800029f4 <mycpu>
    8000419c:	00197913          	andi	s2,s2,1
    800041a0:	07252e23          	sw	s2,124(a0)
    800041a4:	f75ff06f          	j	80004118 <acquire+0x3c>

00000000800041a8 <release>:
    800041a8:	fe010113          	addi	sp,sp,-32
    800041ac:	00813823          	sd	s0,16(sp)
    800041b0:	00113c23          	sd	ra,24(sp)
    800041b4:	00913423          	sd	s1,8(sp)
    800041b8:	01213023          	sd	s2,0(sp)
    800041bc:	02010413          	addi	s0,sp,32
    800041c0:	00052783          	lw	a5,0(a0)
    800041c4:	00079a63          	bnez	a5,800041d8 <release+0x30>
    800041c8:	00001517          	auipc	a0,0x1
    800041cc:	1c050513          	addi	a0,a0,448 # 80005388 <digits+0x28>
    800041d0:	fffff097          	auipc	ra,0xfffff
    800041d4:	1dc080e7          	jalr	476(ra) # 800033ac <panic>
    800041d8:	01053903          	ld	s2,16(a0)
    800041dc:	00050493          	mv	s1,a0
    800041e0:	fffff097          	auipc	ra,0xfffff
    800041e4:	814080e7          	jalr	-2028(ra) # 800029f4 <mycpu>
    800041e8:	fea910e3          	bne	s2,a0,800041c8 <release+0x20>
    800041ec:	0004b823          	sd	zero,16(s1)
    800041f0:	0ff0000f          	fence
    800041f4:	0f50000f          	fence	iorw,ow
    800041f8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800041fc:	ffffe097          	auipc	ra,0xffffe
    80004200:	7f8080e7          	jalr	2040(ra) # 800029f4 <mycpu>
    80004204:	100027f3          	csrr	a5,sstatus
    80004208:	0027f793          	andi	a5,a5,2
    8000420c:	04079a63          	bnez	a5,80004260 <release+0xb8>
    80004210:	07852783          	lw	a5,120(a0)
    80004214:	02f05e63          	blez	a5,80004250 <release+0xa8>
    80004218:	fff7871b          	addiw	a4,a5,-1
    8000421c:	06e52c23          	sw	a4,120(a0)
    80004220:	00071c63          	bnez	a4,80004238 <release+0x90>
    80004224:	07c52783          	lw	a5,124(a0)
    80004228:	00078863          	beqz	a5,80004238 <release+0x90>
    8000422c:	100027f3          	csrr	a5,sstatus
    80004230:	0027e793          	ori	a5,a5,2
    80004234:	10079073          	csrw	sstatus,a5
    80004238:	01813083          	ld	ra,24(sp)
    8000423c:	01013403          	ld	s0,16(sp)
    80004240:	00813483          	ld	s1,8(sp)
    80004244:	00013903          	ld	s2,0(sp)
    80004248:	02010113          	addi	sp,sp,32
    8000424c:	00008067          	ret
    80004250:	00001517          	auipc	a0,0x1
    80004254:	15850513          	addi	a0,a0,344 # 800053a8 <digits+0x48>
    80004258:	fffff097          	auipc	ra,0xfffff
    8000425c:	154080e7          	jalr	340(ra) # 800033ac <panic>
    80004260:	00001517          	auipc	a0,0x1
    80004264:	13050513          	addi	a0,a0,304 # 80005390 <digits+0x30>
    80004268:	fffff097          	auipc	ra,0xfffff
    8000426c:	144080e7          	jalr	324(ra) # 800033ac <panic>

0000000080004270 <holding>:
    80004270:	00052783          	lw	a5,0(a0)
    80004274:	00079663          	bnez	a5,80004280 <holding+0x10>
    80004278:	00000513          	li	a0,0
    8000427c:	00008067          	ret
    80004280:	fe010113          	addi	sp,sp,-32
    80004284:	00813823          	sd	s0,16(sp)
    80004288:	00913423          	sd	s1,8(sp)
    8000428c:	00113c23          	sd	ra,24(sp)
    80004290:	02010413          	addi	s0,sp,32
    80004294:	01053483          	ld	s1,16(a0)
    80004298:	ffffe097          	auipc	ra,0xffffe
    8000429c:	75c080e7          	jalr	1884(ra) # 800029f4 <mycpu>
    800042a0:	01813083          	ld	ra,24(sp)
    800042a4:	01013403          	ld	s0,16(sp)
    800042a8:	40a48533          	sub	a0,s1,a0
    800042ac:	00153513          	seqz	a0,a0
    800042b0:	00813483          	ld	s1,8(sp)
    800042b4:	02010113          	addi	sp,sp,32
    800042b8:	00008067          	ret

00000000800042bc <push_off>:
    800042bc:	fe010113          	addi	sp,sp,-32
    800042c0:	00813823          	sd	s0,16(sp)
    800042c4:	00113c23          	sd	ra,24(sp)
    800042c8:	00913423          	sd	s1,8(sp)
    800042cc:	02010413          	addi	s0,sp,32
    800042d0:	100024f3          	csrr	s1,sstatus
    800042d4:	100027f3          	csrr	a5,sstatus
    800042d8:	ffd7f793          	andi	a5,a5,-3
    800042dc:	10079073          	csrw	sstatus,a5
    800042e0:	ffffe097          	auipc	ra,0xffffe
    800042e4:	714080e7          	jalr	1812(ra) # 800029f4 <mycpu>
    800042e8:	07852783          	lw	a5,120(a0)
    800042ec:	02078663          	beqz	a5,80004318 <push_off+0x5c>
    800042f0:	ffffe097          	auipc	ra,0xffffe
    800042f4:	704080e7          	jalr	1796(ra) # 800029f4 <mycpu>
    800042f8:	07852783          	lw	a5,120(a0)
    800042fc:	01813083          	ld	ra,24(sp)
    80004300:	01013403          	ld	s0,16(sp)
    80004304:	0017879b          	addiw	a5,a5,1
    80004308:	06f52c23          	sw	a5,120(a0)
    8000430c:	00813483          	ld	s1,8(sp)
    80004310:	02010113          	addi	sp,sp,32
    80004314:	00008067          	ret
    80004318:	0014d493          	srli	s1,s1,0x1
    8000431c:	ffffe097          	auipc	ra,0xffffe
    80004320:	6d8080e7          	jalr	1752(ra) # 800029f4 <mycpu>
    80004324:	0014f493          	andi	s1,s1,1
    80004328:	06952e23          	sw	s1,124(a0)
    8000432c:	fc5ff06f          	j	800042f0 <push_off+0x34>

0000000080004330 <pop_off>:
    80004330:	ff010113          	addi	sp,sp,-16
    80004334:	00813023          	sd	s0,0(sp)
    80004338:	00113423          	sd	ra,8(sp)
    8000433c:	01010413          	addi	s0,sp,16
    80004340:	ffffe097          	auipc	ra,0xffffe
    80004344:	6b4080e7          	jalr	1716(ra) # 800029f4 <mycpu>
    80004348:	100027f3          	csrr	a5,sstatus
    8000434c:	0027f793          	andi	a5,a5,2
    80004350:	04079663          	bnez	a5,8000439c <pop_off+0x6c>
    80004354:	07852783          	lw	a5,120(a0)
    80004358:	02f05a63          	blez	a5,8000438c <pop_off+0x5c>
    8000435c:	fff7871b          	addiw	a4,a5,-1
    80004360:	06e52c23          	sw	a4,120(a0)
    80004364:	00071c63          	bnez	a4,8000437c <pop_off+0x4c>
    80004368:	07c52783          	lw	a5,124(a0)
    8000436c:	00078863          	beqz	a5,8000437c <pop_off+0x4c>
    80004370:	100027f3          	csrr	a5,sstatus
    80004374:	0027e793          	ori	a5,a5,2
    80004378:	10079073          	csrw	sstatus,a5
    8000437c:	00813083          	ld	ra,8(sp)
    80004380:	00013403          	ld	s0,0(sp)
    80004384:	01010113          	addi	sp,sp,16
    80004388:	00008067          	ret
    8000438c:	00001517          	auipc	a0,0x1
    80004390:	01c50513          	addi	a0,a0,28 # 800053a8 <digits+0x48>
    80004394:	fffff097          	auipc	ra,0xfffff
    80004398:	018080e7          	jalr	24(ra) # 800033ac <panic>
    8000439c:	00001517          	auipc	a0,0x1
    800043a0:	ff450513          	addi	a0,a0,-12 # 80005390 <digits+0x30>
    800043a4:	fffff097          	auipc	ra,0xfffff
    800043a8:	008080e7          	jalr	8(ra) # 800033ac <panic>

00000000800043ac <push_on>:
    800043ac:	fe010113          	addi	sp,sp,-32
    800043b0:	00813823          	sd	s0,16(sp)
    800043b4:	00113c23          	sd	ra,24(sp)
    800043b8:	00913423          	sd	s1,8(sp)
    800043bc:	02010413          	addi	s0,sp,32
    800043c0:	100024f3          	csrr	s1,sstatus
    800043c4:	100027f3          	csrr	a5,sstatus
    800043c8:	0027e793          	ori	a5,a5,2
    800043cc:	10079073          	csrw	sstatus,a5
    800043d0:	ffffe097          	auipc	ra,0xffffe
    800043d4:	624080e7          	jalr	1572(ra) # 800029f4 <mycpu>
    800043d8:	07852783          	lw	a5,120(a0)
    800043dc:	02078663          	beqz	a5,80004408 <push_on+0x5c>
    800043e0:	ffffe097          	auipc	ra,0xffffe
    800043e4:	614080e7          	jalr	1556(ra) # 800029f4 <mycpu>
    800043e8:	07852783          	lw	a5,120(a0)
    800043ec:	01813083          	ld	ra,24(sp)
    800043f0:	01013403          	ld	s0,16(sp)
    800043f4:	0017879b          	addiw	a5,a5,1
    800043f8:	06f52c23          	sw	a5,120(a0)
    800043fc:	00813483          	ld	s1,8(sp)
    80004400:	02010113          	addi	sp,sp,32
    80004404:	00008067          	ret
    80004408:	0014d493          	srli	s1,s1,0x1
    8000440c:	ffffe097          	auipc	ra,0xffffe
    80004410:	5e8080e7          	jalr	1512(ra) # 800029f4 <mycpu>
    80004414:	0014f493          	andi	s1,s1,1
    80004418:	06952e23          	sw	s1,124(a0)
    8000441c:	fc5ff06f          	j	800043e0 <push_on+0x34>

0000000080004420 <pop_on>:
    80004420:	ff010113          	addi	sp,sp,-16
    80004424:	00813023          	sd	s0,0(sp)
    80004428:	00113423          	sd	ra,8(sp)
    8000442c:	01010413          	addi	s0,sp,16
    80004430:	ffffe097          	auipc	ra,0xffffe
    80004434:	5c4080e7          	jalr	1476(ra) # 800029f4 <mycpu>
    80004438:	100027f3          	csrr	a5,sstatus
    8000443c:	0027f793          	andi	a5,a5,2
    80004440:	04078463          	beqz	a5,80004488 <pop_on+0x68>
    80004444:	07852783          	lw	a5,120(a0)
    80004448:	02f05863          	blez	a5,80004478 <pop_on+0x58>
    8000444c:	fff7879b          	addiw	a5,a5,-1
    80004450:	06f52c23          	sw	a5,120(a0)
    80004454:	07853783          	ld	a5,120(a0)
    80004458:	00079863          	bnez	a5,80004468 <pop_on+0x48>
    8000445c:	100027f3          	csrr	a5,sstatus
    80004460:	ffd7f793          	andi	a5,a5,-3
    80004464:	10079073          	csrw	sstatus,a5
    80004468:	00813083          	ld	ra,8(sp)
    8000446c:	00013403          	ld	s0,0(sp)
    80004470:	01010113          	addi	sp,sp,16
    80004474:	00008067          	ret
    80004478:	00001517          	auipc	a0,0x1
    8000447c:	f5850513          	addi	a0,a0,-168 # 800053d0 <digits+0x70>
    80004480:	fffff097          	auipc	ra,0xfffff
    80004484:	f2c080e7          	jalr	-212(ra) # 800033ac <panic>
    80004488:	00001517          	auipc	a0,0x1
    8000448c:	f2850513          	addi	a0,a0,-216 # 800053b0 <digits+0x50>
    80004490:	fffff097          	auipc	ra,0xfffff
    80004494:	f1c080e7          	jalr	-228(ra) # 800033ac <panic>

0000000080004498 <__memset>:
    80004498:	ff010113          	addi	sp,sp,-16
    8000449c:	00813423          	sd	s0,8(sp)
    800044a0:	01010413          	addi	s0,sp,16
    800044a4:	1a060e63          	beqz	a2,80004660 <__memset+0x1c8>
    800044a8:	40a007b3          	neg	a5,a0
    800044ac:	0077f793          	andi	a5,a5,7
    800044b0:	00778693          	addi	a3,a5,7
    800044b4:	00b00813          	li	a6,11
    800044b8:	0ff5f593          	andi	a1,a1,255
    800044bc:	fff6071b          	addiw	a4,a2,-1
    800044c0:	1b06e663          	bltu	a3,a6,8000466c <__memset+0x1d4>
    800044c4:	1cd76463          	bltu	a4,a3,8000468c <__memset+0x1f4>
    800044c8:	1a078e63          	beqz	a5,80004684 <__memset+0x1ec>
    800044cc:	00b50023          	sb	a1,0(a0)
    800044d0:	00100713          	li	a4,1
    800044d4:	1ae78463          	beq	a5,a4,8000467c <__memset+0x1e4>
    800044d8:	00b500a3          	sb	a1,1(a0)
    800044dc:	00200713          	li	a4,2
    800044e0:	1ae78a63          	beq	a5,a4,80004694 <__memset+0x1fc>
    800044e4:	00b50123          	sb	a1,2(a0)
    800044e8:	00300713          	li	a4,3
    800044ec:	18e78463          	beq	a5,a4,80004674 <__memset+0x1dc>
    800044f0:	00b501a3          	sb	a1,3(a0)
    800044f4:	00400713          	li	a4,4
    800044f8:	1ae78263          	beq	a5,a4,8000469c <__memset+0x204>
    800044fc:	00b50223          	sb	a1,4(a0)
    80004500:	00500713          	li	a4,5
    80004504:	1ae78063          	beq	a5,a4,800046a4 <__memset+0x20c>
    80004508:	00b502a3          	sb	a1,5(a0)
    8000450c:	00700713          	li	a4,7
    80004510:	18e79e63          	bne	a5,a4,800046ac <__memset+0x214>
    80004514:	00b50323          	sb	a1,6(a0)
    80004518:	00700e93          	li	t4,7
    8000451c:	00859713          	slli	a4,a1,0x8
    80004520:	00e5e733          	or	a4,a1,a4
    80004524:	01059e13          	slli	t3,a1,0x10
    80004528:	01c76e33          	or	t3,a4,t3
    8000452c:	01859313          	slli	t1,a1,0x18
    80004530:	006e6333          	or	t1,t3,t1
    80004534:	02059893          	slli	a7,a1,0x20
    80004538:	40f60e3b          	subw	t3,a2,a5
    8000453c:	011368b3          	or	a7,t1,a7
    80004540:	02859813          	slli	a6,a1,0x28
    80004544:	0108e833          	or	a6,a7,a6
    80004548:	03059693          	slli	a3,a1,0x30
    8000454c:	003e589b          	srliw	a7,t3,0x3
    80004550:	00d866b3          	or	a3,a6,a3
    80004554:	03859713          	slli	a4,a1,0x38
    80004558:	00389813          	slli	a6,a7,0x3
    8000455c:	00f507b3          	add	a5,a0,a5
    80004560:	00e6e733          	or	a4,a3,a4
    80004564:	000e089b          	sext.w	a7,t3
    80004568:	00f806b3          	add	a3,a6,a5
    8000456c:	00e7b023          	sd	a4,0(a5)
    80004570:	00878793          	addi	a5,a5,8
    80004574:	fed79ce3          	bne	a5,a3,8000456c <__memset+0xd4>
    80004578:	ff8e7793          	andi	a5,t3,-8
    8000457c:	0007871b          	sext.w	a4,a5
    80004580:	01d787bb          	addw	a5,a5,t4
    80004584:	0ce88e63          	beq	a7,a4,80004660 <__memset+0x1c8>
    80004588:	00f50733          	add	a4,a0,a5
    8000458c:	00b70023          	sb	a1,0(a4)
    80004590:	0017871b          	addiw	a4,a5,1
    80004594:	0cc77663          	bgeu	a4,a2,80004660 <__memset+0x1c8>
    80004598:	00e50733          	add	a4,a0,a4
    8000459c:	00b70023          	sb	a1,0(a4)
    800045a0:	0027871b          	addiw	a4,a5,2
    800045a4:	0ac77e63          	bgeu	a4,a2,80004660 <__memset+0x1c8>
    800045a8:	00e50733          	add	a4,a0,a4
    800045ac:	00b70023          	sb	a1,0(a4)
    800045b0:	0037871b          	addiw	a4,a5,3
    800045b4:	0ac77663          	bgeu	a4,a2,80004660 <__memset+0x1c8>
    800045b8:	00e50733          	add	a4,a0,a4
    800045bc:	00b70023          	sb	a1,0(a4)
    800045c0:	0047871b          	addiw	a4,a5,4
    800045c4:	08c77e63          	bgeu	a4,a2,80004660 <__memset+0x1c8>
    800045c8:	00e50733          	add	a4,a0,a4
    800045cc:	00b70023          	sb	a1,0(a4)
    800045d0:	0057871b          	addiw	a4,a5,5
    800045d4:	08c77663          	bgeu	a4,a2,80004660 <__memset+0x1c8>
    800045d8:	00e50733          	add	a4,a0,a4
    800045dc:	00b70023          	sb	a1,0(a4)
    800045e0:	0067871b          	addiw	a4,a5,6
    800045e4:	06c77e63          	bgeu	a4,a2,80004660 <__memset+0x1c8>
    800045e8:	00e50733          	add	a4,a0,a4
    800045ec:	00b70023          	sb	a1,0(a4)
    800045f0:	0077871b          	addiw	a4,a5,7
    800045f4:	06c77663          	bgeu	a4,a2,80004660 <__memset+0x1c8>
    800045f8:	00e50733          	add	a4,a0,a4
    800045fc:	00b70023          	sb	a1,0(a4)
    80004600:	0087871b          	addiw	a4,a5,8
    80004604:	04c77e63          	bgeu	a4,a2,80004660 <__memset+0x1c8>
    80004608:	00e50733          	add	a4,a0,a4
    8000460c:	00b70023          	sb	a1,0(a4)
    80004610:	0097871b          	addiw	a4,a5,9
    80004614:	04c77663          	bgeu	a4,a2,80004660 <__memset+0x1c8>
    80004618:	00e50733          	add	a4,a0,a4
    8000461c:	00b70023          	sb	a1,0(a4)
    80004620:	00a7871b          	addiw	a4,a5,10
    80004624:	02c77e63          	bgeu	a4,a2,80004660 <__memset+0x1c8>
    80004628:	00e50733          	add	a4,a0,a4
    8000462c:	00b70023          	sb	a1,0(a4)
    80004630:	00b7871b          	addiw	a4,a5,11
    80004634:	02c77663          	bgeu	a4,a2,80004660 <__memset+0x1c8>
    80004638:	00e50733          	add	a4,a0,a4
    8000463c:	00b70023          	sb	a1,0(a4)
    80004640:	00c7871b          	addiw	a4,a5,12
    80004644:	00c77e63          	bgeu	a4,a2,80004660 <__memset+0x1c8>
    80004648:	00e50733          	add	a4,a0,a4
    8000464c:	00b70023          	sb	a1,0(a4)
    80004650:	00d7879b          	addiw	a5,a5,13
    80004654:	00c7f663          	bgeu	a5,a2,80004660 <__memset+0x1c8>
    80004658:	00f507b3          	add	a5,a0,a5
    8000465c:	00b78023          	sb	a1,0(a5)
    80004660:	00813403          	ld	s0,8(sp)
    80004664:	01010113          	addi	sp,sp,16
    80004668:	00008067          	ret
    8000466c:	00b00693          	li	a3,11
    80004670:	e55ff06f          	j	800044c4 <__memset+0x2c>
    80004674:	00300e93          	li	t4,3
    80004678:	ea5ff06f          	j	8000451c <__memset+0x84>
    8000467c:	00100e93          	li	t4,1
    80004680:	e9dff06f          	j	8000451c <__memset+0x84>
    80004684:	00000e93          	li	t4,0
    80004688:	e95ff06f          	j	8000451c <__memset+0x84>
    8000468c:	00000793          	li	a5,0
    80004690:	ef9ff06f          	j	80004588 <__memset+0xf0>
    80004694:	00200e93          	li	t4,2
    80004698:	e85ff06f          	j	8000451c <__memset+0x84>
    8000469c:	00400e93          	li	t4,4
    800046a0:	e7dff06f          	j	8000451c <__memset+0x84>
    800046a4:	00500e93          	li	t4,5
    800046a8:	e75ff06f          	j	8000451c <__memset+0x84>
    800046ac:	00600e93          	li	t4,6
    800046b0:	e6dff06f          	j	8000451c <__memset+0x84>

00000000800046b4 <__memmove>:
    800046b4:	ff010113          	addi	sp,sp,-16
    800046b8:	00813423          	sd	s0,8(sp)
    800046bc:	01010413          	addi	s0,sp,16
    800046c0:	0e060863          	beqz	a2,800047b0 <__memmove+0xfc>
    800046c4:	fff6069b          	addiw	a3,a2,-1
    800046c8:	0006881b          	sext.w	a6,a3
    800046cc:	0ea5e863          	bltu	a1,a0,800047bc <__memmove+0x108>
    800046d0:	00758713          	addi	a4,a1,7
    800046d4:	00a5e7b3          	or	a5,a1,a0
    800046d8:	40a70733          	sub	a4,a4,a0
    800046dc:	0077f793          	andi	a5,a5,7
    800046e0:	00f73713          	sltiu	a4,a4,15
    800046e4:	00174713          	xori	a4,a4,1
    800046e8:	0017b793          	seqz	a5,a5
    800046ec:	00e7f7b3          	and	a5,a5,a4
    800046f0:	10078863          	beqz	a5,80004800 <__memmove+0x14c>
    800046f4:	00900793          	li	a5,9
    800046f8:	1107f463          	bgeu	a5,a6,80004800 <__memmove+0x14c>
    800046fc:	0036581b          	srliw	a6,a2,0x3
    80004700:	fff8081b          	addiw	a6,a6,-1
    80004704:	02081813          	slli	a6,a6,0x20
    80004708:	01d85893          	srli	a7,a6,0x1d
    8000470c:	00858813          	addi	a6,a1,8
    80004710:	00058793          	mv	a5,a1
    80004714:	00050713          	mv	a4,a0
    80004718:	01088833          	add	a6,a7,a6
    8000471c:	0007b883          	ld	a7,0(a5)
    80004720:	00878793          	addi	a5,a5,8
    80004724:	00870713          	addi	a4,a4,8
    80004728:	ff173c23          	sd	a7,-8(a4)
    8000472c:	ff0798e3          	bne	a5,a6,8000471c <__memmove+0x68>
    80004730:	ff867713          	andi	a4,a2,-8
    80004734:	02071793          	slli	a5,a4,0x20
    80004738:	0207d793          	srli	a5,a5,0x20
    8000473c:	00f585b3          	add	a1,a1,a5
    80004740:	40e686bb          	subw	a3,a3,a4
    80004744:	00f507b3          	add	a5,a0,a5
    80004748:	06e60463          	beq	a2,a4,800047b0 <__memmove+0xfc>
    8000474c:	0005c703          	lbu	a4,0(a1)
    80004750:	00e78023          	sb	a4,0(a5)
    80004754:	04068e63          	beqz	a3,800047b0 <__memmove+0xfc>
    80004758:	0015c603          	lbu	a2,1(a1)
    8000475c:	00100713          	li	a4,1
    80004760:	00c780a3          	sb	a2,1(a5)
    80004764:	04e68663          	beq	a3,a4,800047b0 <__memmove+0xfc>
    80004768:	0025c603          	lbu	a2,2(a1)
    8000476c:	00200713          	li	a4,2
    80004770:	00c78123          	sb	a2,2(a5)
    80004774:	02e68e63          	beq	a3,a4,800047b0 <__memmove+0xfc>
    80004778:	0035c603          	lbu	a2,3(a1)
    8000477c:	00300713          	li	a4,3
    80004780:	00c781a3          	sb	a2,3(a5)
    80004784:	02e68663          	beq	a3,a4,800047b0 <__memmove+0xfc>
    80004788:	0045c603          	lbu	a2,4(a1)
    8000478c:	00400713          	li	a4,4
    80004790:	00c78223          	sb	a2,4(a5)
    80004794:	00e68e63          	beq	a3,a4,800047b0 <__memmove+0xfc>
    80004798:	0055c603          	lbu	a2,5(a1)
    8000479c:	00500713          	li	a4,5
    800047a0:	00c782a3          	sb	a2,5(a5)
    800047a4:	00e68663          	beq	a3,a4,800047b0 <__memmove+0xfc>
    800047a8:	0065c703          	lbu	a4,6(a1)
    800047ac:	00e78323          	sb	a4,6(a5)
    800047b0:	00813403          	ld	s0,8(sp)
    800047b4:	01010113          	addi	sp,sp,16
    800047b8:	00008067          	ret
    800047bc:	02061713          	slli	a4,a2,0x20
    800047c0:	02075713          	srli	a4,a4,0x20
    800047c4:	00e587b3          	add	a5,a1,a4
    800047c8:	f0f574e3          	bgeu	a0,a5,800046d0 <__memmove+0x1c>
    800047cc:	02069613          	slli	a2,a3,0x20
    800047d0:	02065613          	srli	a2,a2,0x20
    800047d4:	fff64613          	not	a2,a2
    800047d8:	00e50733          	add	a4,a0,a4
    800047dc:	00c78633          	add	a2,a5,a2
    800047e0:	fff7c683          	lbu	a3,-1(a5)
    800047e4:	fff78793          	addi	a5,a5,-1
    800047e8:	fff70713          	addi	a4,a4,-1
    800047ec:	00d70023          	sb	a3,0(a4)
    800047f0:	fec798e3          	bne	a5,a2,800047e0 <__memmove+0x12c>
    800047f4:	00813403          	ld	s0,8(sp)
    800047f8:	01010113          	addi	sp,sp,16
    800047fc:	00008067          	ret
    80004800:	02069713          	slli	a4,a3,0x20
    80004804:	02075713          	srli	a4,a4,0x20
    80004808:	00170713          	addi	a4,a4,1
    8000480c:	00e50733          	add	a4,a0,a4
    80004810:	00050793          	mv	a5,a0
    80004814:	0005c683          	lbu	a3,0(a1)
    80004818:	00178793          	addi	a5,a5,1
    8000481c:	00158593          	addi	a1,a1,1
    80004820:	fed78fa3          	sb	a3,-1(a5)
    80004824:	fee798e3          	bne	a5,a4,80004814 <__memmove+0x160>
    80004828:	f89ff06f          	j	800047b0 <__memmove+0xfc>
	...
