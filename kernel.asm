
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	09813103          	ld	sp,152(sp) # 80006098 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	60d020ef          	jal	ra,80002e28 <start>

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
    80001084:	385000ef          	jal	ra,80001c08 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm>

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

0000000080001110 <_ZN7_thread13switchContextEPNS_7ContextES1_>:
.global _ZN7_thread13switchContextEPNS_7ContextES1_
.type _ZN7_thread13switchContextEPNS_7ContextES1_, @function
_ZN7_thread13switchContextEPNS_7ContextES1_:

   
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

0000000080001228 <_ZN8_console10ensureInitEv>:
_sem* _console::outSem = nullptr;

bool _console::initialized = false;

void _console::ensureInit() {
    if (initialized) return;
    80001228:	00005797          	auipc	a5,0x5
    8000122c:	fb87c783          	lbu	a5,-72(a5) # 800061e0 <_ZN8_console11initializedE>
    80001230:	00078463          	beqz	a5,80001238 <_ZN8_console10ensureInitEv+0x10>
    80001234:	00008067          	ret
void _console::ensureInit() {
    80001238:	fe010113          	addi	sp,sp,-32
    8000123c:	00113c23          	sd	ra,24(sp)
    80001240:	00813823          	sd	s0,16(sp)
    80001244:	00913423          	sd	s1,8(sp)
    80001248:	01213023          	sd	s2,0(sp)
    8000124c:	02010413          	addi	s0,sp,32
    inbuff  = new Buffer();
    80001250:	10c00513          	li	a0,268
    80001254:	00001097          	auipc	ra,0x1
    80001258:	520080e7          	jalr	1312(ra) # 80002774 <_Znwm>
    8000125c:	00050493          	mv	s1,a0
    80001260:	00000097          	auipc	ra,0x0
    80001264:	ec4080e7          	jalr	-316(ra) # 80001124 <_ZN6BufferC1Ev>
    80001268:	00005797          	auipc	a5,0x5
    8000126c:	f897bc23          	sd	s1,-104(a5) # 80006200 <_ZN8_console6inbuffE>
    outbuff = new Buffer();
    80001270:	10c00513          	li	a0,268
    80001274:	00001097          	auipc	ra,0x1
    80001278:	500080e7          	jalr	1280(ra) # 80002774 <_Znwm>
    8000127c:	00050493          	mv	s1,a0
    80001280:	00000097          	auipc	ra,0x0
    80001284:	ea4080e7          	jalr	-348(ra) # 80001124 <_ZN6BufferC1Ev>
    80001288:	00005797          	auipc	a5,0x5
    8000128c:	f697b823          	sd	s1,-144(a5) # 800061f8 <_ZN8_console7outbuffE>

class _sem {
public:

    void* operator new(size_t size){
        void* ptr = MemoryAllocator::kmalloc(size);
    80001290:	02000513          	li	a0,32
    80001294:	00000097          	auipc	ra,0x0
    80001298:	654080e7          	jalr	1620(ra) # 800018e8 <_ZN15MemoryAllocator7kmallocEm>
    8000129c:	00050493          	mv	s1,a0
    inSem   = new _sem(0);
    800012a0:	00000593          	li	a1,0
    800012a4:	00001097          	auipc	ra,0x1
    800012a8:	ec0080e7          	jalr	-320(ra) # 80002164 <_ZN4_semC1Ei>
    800012ac:	00005797          	auipc	a5,0x5
    800012b0:	f497b223          	sd	s1,-188(a5) # 800061f0 <_ZN8_console5inSemE>
    800012b4:	02000513          	li	a0,32
    800012b8:	00000097          	auipc	ra,0x0
    800012bc:	630080e7          	jalr	1584(ra) # 800018e8 <_ZN15MemoryAllocator7kmallocEm>
    800012c0:	00050493          	mv	s1,a0
    outSem  = new _sem(256);
    800012c4:	10000593          	li	a1,256
    800012c8:	00001097          	auipc	ra,0x1
    800012cc:	e9c080e7          	jalr	-356(ra) # 80002164 <_ZN4_semC1Ei>
    800012d0:	00005797          	auipc	a5,0x5
    800012d4:	f097bc23          	sd	s1,-232(a5) # 800061e8 <_ZN8_console6outSemE>
    initialized = true;
    800012d8:	00100793          	li	a5,1
    800012dc:	00005717          	auipc	a4,0x5
    800012e0:	f0f70223          	sb	a5,-252(a4) # 800061e0 <_ZN8_console11initializedE>
}
    800012e4:	01813083          	ld	ra,24(sp)
    800012e8:	01013403          	ld	s0,16(sp)
    800012ec:	00813483          	ld	s1,8(sp)
    800012f0:	00013903          	ld	s2,0(sp)
    800012f4:	02010113          	addi	sp,sp,32
    800012f8:	00008067          	ret
    inbuff  = new Buffer();
    800012fc:	00050913          	mv	s2,a0
    80001300:	00048513          	mv	a0,s1
    80001304:	00001097          	auipc	ra,0x1
    80001308:	498080e7          	jalr	1176(ra) # 8000279c <_ZdlPv>
    8000130c:	00090513          	mv	a0,s2
    80001310:	00006097          	auipc	ra,0x6
    80001314:	028080e7          	jalr	40(ra) # 80007338 <_Unwind_Resume>
    outbuff = new Buffer();
    80001318:	00050913          	mv	s2,a0
    8000131c:	00048513          	mv	a0,s1
    80001320:	00001097          	auipc	ra,0x1
    80001324:	47c080e7          	jalr	1148(ra) # 8000279c <_ZdlPv>
    80001328:	00090513          	mv	a0,s2
    8000132c:	00006097          	auipc	ra,0x6
    80001330:	00c080e7          	jalr	12(ra) # 80007338 <_Unwind_Resume>
    inSem   = new _sem(0);
    80001334:	00050913          	mv	s2,a0
    80001338:	00048513          	mv	a0,s1
    8000133c:	00001097          	auipc	ra,0x1
    80001340:	460080e7          	jalr	1120(ra) # 8000279c <_ZdlPv>
    80001344:	00090513          	mv	a0,s2
    80001348:	00006097          	auipc	ra,0x6
    8000134c:	ff0080e7          	jalr	-16(ra) # 80007338 <_Unwind_Resume>
    outSem  = new _sem(256);
    80001350:	00050913          	mv	s2,a0
    80001354:	00048513          	mv	a0,s1
    80001358:	00001097          	auipc	ra,0x1
    8000135c:	444080e7          	jalr	1092(ra) # 8000279c <_ZdlPv>
    80001360:	00090513          	mv	a0,s2
    80001364:	00006097          	auipc	ra,0x6
    80001368:	fd4080e7          	jalr	-44(ra) # 80007338 <_Unwind_Resume>

000000008000136c <_ZN8_console4getcEv>:



char _console::getc() {
    8000136c:	ff010113          	addi	sp,sp,-16
    80001370:	00113423          	sd	ra,8(sp)
    80001374:	00813023          	sd	s0,0(sp)
    80001378:	01010413          	addi	s0,sp,16
    ensureInit();
    8000137c:	00000097          	auipc	ra,0x0
    80001380:	eac080e7          	jalr	-340(ra) # 80001228 <_ZN8_console10ensureInitEv>

    return inbuff->get();
    80001384:	00005517          	auipc	a0,0x5
    80001388:	e7c53503          	ld	a0,-388(a0) # 80006200 <_ZN8_console6inbuffE>
    8000138c:	00000097          	auipc	ra,0x0
    80001390:	e08080e7          	jalr	-504(ra) # 80001194 <_ZN6Buffer3getEv>
}
    80001394:	00813083          	ld	ra,8(sp)
    80001398:	00013403          	ld	s0,0(sp)
    8000139c:	01010113          	addi	sp,sp,16
    800013a0:	00008067          	ret

00000000800013a4 <_ZN8_console4putcEc>:

void _console::putc(char c) {
    800013a4:	fe010113          	addi	sp,sp,-32
    800013a8:	00113c23          	sd	ra,24(sp)
    800013ac:	00813823          	sd	s0,16(sp)
    800013b0:	00913423          	sd	s1,8(sp)
    800013b4:	02010413          	addi	s0,sp,32
    800013b8:	00050493          	mv	s1,a0
    ensureInit();
    800013bc:	00000097          	auipc	ra,0x0
    800013c0:	e6c080e7          	jalr	-404(ra) # 80001228 <_ZN8_console10ensureInitEv>
    outbuff->put(c);
    800013c4:	00048593          	mv	a1,s1
    800013c8:	00005517          	auipc	a0,0x5
    800013cc:	e3053503          	ld	a0,-464(a0) # 800061f8 <_ZN8_console7outbuffE>
    800013d0:	00000097          	auipc	ra,0x0
    800013d4:	d78080e7          	jalr	-648(ra) # 80001148 <_ZN6Buffer3putEc>

    	while ((*((volatile uint8*)CONSOLE_STATUS) & 0x01) && !_console::getInBuff()->isFull()) {
    800013d8:	00004497          	auipc	s1,0x4
    800013dc:	c384b483          	ld	s1,-968(s1) # 80005010 <CONSOLE_STATUS>
    800013e0:	0004c783          	lbu	a5,0(s1)
    800013e4:	0017f793          	andi	a5,a5,1
    800013e8:	06078463          	beqz	a5,80001450 <_ZN8_console4putcEc+0xac>
    // Sistemski pozivi (0x41 i 0x42)
    static char getc();
    static void putc(char c);

    // Geteri za prekidnu rutinu (console_handler)
    static Buffer* getInBuff() { ensureInit(); return inbuff; }
    800013ec:	00000097          	auipc	ra,0x0
    800013f0:	e3c080e7          	jalr	-452(ra) # 80001228 <_ZN8_console10ensureInitEv>
    800013f4:	00005517          	auipc	a0,0x5
    800013f8:	e0c53503          	ld	a0,-500(a0) # 80006200 <_ZN8_console6inbuffE>
    800013fc:	00000097          	auipc	ra,0x0
    80001400:	de8080e7          	jalr	-536(ra) # 800011e4 <_ZN6Buffer6isFullEv>
    80001404:	04051663          	bnez	a0,80001450 <_ZN8_console4putcEc+0xac>
    		char c = *((volatile uint8*)CONSOLE_RX_DATA);
    80001408:	00004797          	auipc	a5,0x4
    8000140c:	bf87b783          	ld	a5,-1032(a5) # 80005000 <CONSOLE_RX_DATA>
    80001410:	0007c483          	lbu	s1,0(a5)
    80001414:	0ff4f493          	andi	s1,s1,255
    80001418:	00000097          	auipc	ra,0x0
    8000141c:	e10080e7          	jalr	-496(ra) # 80001228 <_ZN8_console10ensureInitEv>
    		_console::getInBuff()->put(c);
    80001420:	00048593          	mv	a1,s1
    80001424:	00005517          	auipc	a0,0x5
    80001428:	ddc53503          	ld	a0,-548(a0) # 80006200 <_ZN8_console6inbuffE>
    8000142c:	00000097          	auipc	ra,0x0
    80001430:	d1c080e7          	jalr	-740(ra) # 80001148 <_ZN6Buffer3putEc>
    static Buffer* getOutBuff() { ensureInit(); return outbuff; }
    static _sem* getInSem() { ensureInit(); return inSem; }
    80001434:	00000097          	auipc	ra,0x0
    80001438:	df4080e7          	jalr	-524(ra) # 80001228 <_ZN8_console10ensureInitEv>
    		_console::getInSem()->signal();
    8000143c:	00005517          	auipc	a0,0x5
    80001440:	db453503          	ld	a0,-588(a0) # 800061f0 <_ZN8_console5inSemE>
    80001444:	00001097          	auipc	ra,0x1
    80001448:	e40080e7          	jalr	-448(ra) # 80002284 <_ZN4_sem6signalEv>
    	while ((*((volatile uint8*)CONSOLE_STATUS) & 0x01) && !_console::getInBuff()->isFull()) {
    8000144c:	f8dff06f          	j	800013d8 <_ZN8_console4putcEc+0x34>
    	}

    	// TX deo: Šaljemo sve dok je hardver spreman I dok imamo šta da pošaljemo
    	while ((*((volatile uint8*)CONSOLE_STATUS) & 0x20) && !_console::getOutBuff()->isEmpty()) {
    80001450:	0004c783          	lbu	a5,0(s1)
    80001454:	0207f793          	andi	a5,a5,32
    80001458:	06078063          	beqz	a5,800014b8 <_ZN8_console4putcEc+0x114>
    static Buffer* getOutBuff() { ensureInit(); return outbuff; }
    8000145c:	00000097          	auipc	ra,0x0
    80001460:	dcc080e7          	jalr	-564(ra) # 80001228 <_ZN8_console10ensureInitEv>
    80001464:	00005517          	auipc	a0,0x5
    80001468:	d9453503          	ld	a0,-620(a0) # 800061f8 <_ZN8_console7outbuffE>
    8000146c:	00000097          	auipc	ra,0x0
    80001470:	d9c080e7          	jalr	-612(ra) # 80001208 <_ZN6Buffer7isEmptyEv>
    80001474:	04051263          	bnez	a0,800014b8 <_ZN8_console4putcEc+0x114>
    80001478:	00000097          	auipc	ra,0x0
    8000147c:	db0080e7          	jalr	-592(ra) # 80001228 <_ZN8_console10ensureInitEv>
    		char c = _console::getOutBuff()->get();
    80001480:	00005517          	auipc	a0,0x5
    80001484:	d7853503          	ld	a0,-648(a0) # 800061f8 <_ZN8_console7outbuffE>
    80001488:	00000097          	auipc	ra,0x0
    8000148c:	d0c080e7          	jalr	-756(ra) # 80001194 <_ZN6Buffer3getEv>
    		*((volatile uint8*)CONSOLE_TX_DATA) = (uint8)c;
    80001490:	00004797          	auipc	a5,0x4
    80001494:	b787b783          	ld	a5,-1160(a5) # 80005008 <CONSOLE_TX_DATA>
    80001498:	00a78023          	sb	a0,0(a5)
    static _sem* getOutSem() { ensureInit(); return outSem; }
    8000149c:	00000097          	auipc	ra,0x0
    800014a0:	d8c080e7          	jalr	-628(ra) # 80001228 <_ZN8_console10ensureInitEv>
    		_console::getOutSem()->signal();
    800014a4:	00005517          	auipc	a0,0x5
    800014a8:	d4453503          	ld	a0,-700(a0) # 800061e8 <_ZN8_console6outSemE>
    800014ac:	00001097          	auipc	ra,0x1
    800014b0:	dd8080e7          	jalr	-552(ra) # 80002284 <_ZN4_sem6signalEv>
    	while ((*((volatile uint8*)CONSOLE_STATUS) & 0x20) && !_console::getOutBuff()->isEmpty()) {
    800014b4:	f9dff06f          	j	80001450 <_ZN8_console4putcEc+0xac>
    	}
    	
    800014b8:	01813083          	ld	ra,24(sp)
    800014bc:	01013403          	ld	s0,16(sp)
    800014c0:	00813483          	ld	s1,8(sp)
    800014c4:	02010113          	addi	sp,sp,32
    800014c8:	00008067          	ret

00000000800014cc <_Z5idlefPv>:
            Thread::sleep(5);
        }
    }
};

void idlef(void*) {
    800014cc:	ff010113          	addi	sp,sp,-16
    800014d0:	00113423          	sd	ra,8(sp)
    800014d4:	00813023          	sd	s0,0(sp)
    800014d8:	01010413          	addi	s0,sp,16
    while (1) Thread::dispatch();
    800014dc:	00001097          	auipc	ra,0x1
    800014e0:	3cc080e7          	jalr	972(ra) # 800028a8 <_ZN6Thread8dispatchEv>
    800014e4:	ff9ff06f          	j	800014dc <_Z5idlefPv+0x10>

00000000800014e8 <main>:
}

int main() {
    800014e8:	fc010113          	addi	sp,sp,-64
    800014ec:	02113c23          	sd	ra,56(sp)
    800014f0:	02813823          	sd	s0,48(sp)
    800014f4:	02913423          	sd	s1,40(sp)
    800014f8:	03213023          	sd	s2,32(sp)
    800014fc:	01313c23          	sd	s3,24(sp)
    80001500:	01413823          	sd	s4,16(sp)
    80001504:	04010413          	addi	s0,sp,64
    // --- INICIJALIZACIJA PRE UPALJENIH PREKIDA ---
    
    // Postavi trap handler
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001508:	00000797          	auipc	a5,0x0
    8000150c:	af878793          	addi	a5,a5,-1288 # 80001000 <_ZN5Riscv14supervisorTrapEv>
        return stvec;
    }

    inline void Riscv::w_stvec(uint64 stvec)
    {
        __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001510:	10579073          	csrw	stvec,a5

    // Registruj main nit
    thread_t mainHandle;
    thread_create(&mainHandle, nullptr, nullptr);
    80001514:	00000613          	li	a2,0
    80001518:	00000593          	li	a1,0
    8000151c:	fc840513          	addi	a0,s0,-56
    80001520:	00001097          	auipc	ra,0x1
    80001524:	f08080e7          	jalr	-248(ra) # 80002428 <_Z13thread_createPP7_threadPFvPvES2_>
    _thread::running = (_thread*)mainHandle;
    80001528:	fc843783          	ld	a5,-56(s0)
    8000152c:	00005717          	auipc	a4,0x5
    80001530:	d0f73223          	sd	a5,-764(a4) # 80006230 <_ZN7_thread7runningE>

    // Kreiraj idle nit
    thread_t idleHandle;
    thread_create(&idleHandle, idlef, nullptr);
    80001534:	00000613          	li	a2,0
    80001538:	00000597          	auipc	a1,0x0
    8000153c:	f9458593          	addi	a1,a1,-108 # 800014cc <_Z5idlefPv>
    80001540:	fc040513          	addi	a0,s0,-64
    80001544:	00001097          	auipc	ra,0x1
    80001548:	ee4080e7          	jalr	-284(ra) # 80002428 <_Z13thread_createPP7_threadPFvPvES2_>

    printString("--- Testiranje C++ API (Semaphore & Inheritance) ---\n");
    8000154c:	00004517          	auipc	a0,0x4
    80001550:	b2450513          	addi	a0,a0,-1244 # 80005070 <CONSOLE_STATUS+0x60>
    80001554:	00000097          	auipc	ra,0x0
    80001558:	5b8080e7          	jalr	1464(ra) # 80001b0c <_Z11printStringPKc>

    // Kreiraj semafor (vrednost 0 znači da će prvi wait() odmah blokirati)
    Semaphore* testSem = new Semaphore(0);
    8000155c:	01000513          	li	a0,16
    80001560:	00001097          	auipc	ra,0x1
    80001564:	214080e7          	jalr	532(ra) # 80002774 <_Znwm>
    80001568:	00050a13          	mv	s4,a0
    8000156c:	00000593          	li	a1,0
    80001570:	00001097          	auipc	ra,0x1
    80001574:	414080e7          	jalr	1044(ra) # 80002984 <_ZN9SemaphoreC1Ej>

    // Kreiraj niti preko nasleđivanja (ovo testira tvoj 'wrapper')
    WorkerThread* thr1 = new WorkerThread("NIT_1", testSem);
    80001578:	03000513          	li	a0,48
    8000157c:	00001097          	auipc	ra,0x1
    80001580:	1f8080e7          	jalr	504(ra) # 80002774 <_Znwm>
    80001584:	00050993          	mv	s3,a0
    WorkerThread(const char* n, Semaphore* s) : Thread(), sem(s), name(n) {}
    80001588:	00001097          	auipc	ra,0x1
    8000158c:	3c4080e7          	jalr	964(ra) # 8000294c <_ZN6ThreadC1Ev>
    80001590:	00004797          	auipc	a5,0x4
    80001594:	bc878793          	addi	a5,a5,-1080 # 80005158 <_ZTV12WorkerThread+0x10>
    80001598:	00f9b023          	sd	a5,0(s3)
    8000159c:	0349b023          	sd	s4,32(s3)
    800015a0:	00004797          	auipc	a5,0x4
    800015a4:	b0878793          	addi	a5,a5,-1272 # 800050a8 <CONSOLE_STATUS+0x98>
    800015a8:	02f9b423          	sd	a5,40(s3)
    WorkerThread* thr2 = new WorkerThread("NIT_2", testSem);
    800015ac:	03000513          	li	a0,48
    800015b0:	00001097          	auipc	ra,0x1
    800015b4:	1c4080e7          	jalr	452(ra) # 80002774 <_Znwm>
    800015b8:	00050913          	mv	s2,a0
    WorkerThread(const char* n, Semaphore* s) : Thread(), sem(s), name(n) {}
    800015bc:	00001097          	auipc	ra,0x1
    800015c0:	390080e7          	jalr	912(ra) # 8000294c <_ZN6ThreadC1Ev>
    800015c4:	00004797          	auipc	a5,0x4
    800015c8:	b9478793          	addi	a5,a5,-1132 # 80005158 <_ZTV12WorkerThread+0x10>
    800015cc:	00f93023          	sd	a5,0(s2)
    800015d0:	03493023          	sd	s4,32(s2)
    800015d4:	00004797          	auipc	a5,0x4
    800015d8:	adc78793          	addi	a5,a5,-1316 # 800050b0 <CONSOLE_STATUS+0xa0>
    800015dc:	02f93423          	sd	a5,40(s2)

    // Startuj niti (one će se odmah blokirati na semaforu)
    thr1->start();
    800015e0:	00098513          	mv	a0,s3
    800015e4:	00001097          	auipc	ra,0x1
    800015e8:	290080e7          	jalr	656(ra) # 80002874 <_ZN6Thread5startEv>
    thr2->start();
    800015ec:	00090513          	mv	a0,s2
    800015f0:	00001097          	auipc	ra,0x1
    800015f4:	284080e7          	jalr	644(ra) # 80002874 <_ZN6Thread5startEv>
        __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
    }

    inline void Riscv::ms_sstatus(uint64 mask)
    {
        __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800015f8:	00200793          	li	a5,2
    800015fc:	1007a073          	csrs	sstatus,a5

    // --- PALJENJE PREKIDA ---
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    // Main malo spava dok niti čekaju
    for(int i = 0; i < 2; i++) {
    80001600:	00000493          	li	s1,0
    80001604:	00100793          	li	a5,1
    80001608:	0297c463          	blt	a5,s1,80001630 <main+0x148>
        printString("Main: Niti bi trebalo da su blokirane, ja spavam...\n");
    8000160c:	00004517          	auipc	a0,0x4
    80001610:	aac50513          	addi	a0,a0,-1364 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001614:	00000097          	auipc	ra,0x0
    80001618:	4f8080e7          	jalr	1272(ra) # 80001b0c <_Z11printStringPKc>
        Thread::sleep(15);
    8000161c:	00f00513          	li	a0,15
    80001620:	00001097          	auipc	ra,0x1
    80001624:	2b0080e7          	jalr	688(ra) # 800028d0 <_ZN6Thread5sleepEm>
    for(int i = 0; i < 2; i++) {
    80001628:	0014849b          	addiw	s1,s1,1
    8000162c:	fd9ff06f          	j	80001604 <main+0x11c>
    }

    // Puštamo prvu nit
    printString("Main: Signaliziram prvi put...\n");
    80001630:	00004517          	auipc	a0,0x4
    80001634:	ac050513          	addi	a0,a0,-1344 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001638:	00000097          	auipc	ra,0x0
    8000163c:	4d4080e7          	jalr	1236(ra) # 80001b0c <_Z11printStringPKc>
    testSem->signal();
    80001640:	000a0513          	mv	a0,s4
    80001644:	00001097          	auipc	ra,0x1
    80001648:	3a4080e7          	jalr	932(ra) # 800029e8 <_ZN9Semaphore6signalEv>
    Thread::sleep(10);
    8000164c:	00a00513          	li	a0,10
    80001650:	00001097          	auipc	ra,0x1
    80001654:	280080e7          	jalr	640(ra) # 800028d0 <_ZN6Thread5sleepEm>

    // Puštamo drugu nit
    printString("Main: Signaliziram drugi put...\n");
    80001658:	00004517          	auipc	a0,0x4
    8000165c:	ab850513          	addi	a0,a0,-1352 # 80005110 <CONSOLE_STATUS+0x100>
    80001660:	00000097          	auipc	ra,0x0
    80001664:	4ac080e7          	jalr	1196(ra) # 80001b0c <_Z11printStringPKc>
    testSem->signal();
    80001668:	000a0513          	mv	a0,s4
    8000166c:	00001097          	auipc	ra,0x1
    80001670:	37c080e7          	jalr	892(ra) # 800029e8 <_ZN9Semaphore6signalEv>

    // Čekamo da sve završe
    for(int i = 0; i < 5; i++) {
    80001674:	00000493          	li	s1,0
    80001678:	0140006f          	j	8000168c <main+0x1a4>
        Thread::sleep(10);
    8000167c:	00a00513          	li	a0,10
    80001680:	00001097          	auipc	ra,0x1
    80001684:	250080e7          	jalr	592(ra) # 800028d0 <_ZN6Thread5sleepEm>
    for(int i = 0; i < 5; i++) {
    80001688:	0014849b          	addiw	s1,s1,1
    8000168c:	00400793          	li	a5,4
    80001690:	fe97d6e3          	bge	a5,s1,8000167c <main+0x194>
    }

    printString("Test zavrsen.\n");
    80001694:	00004517          	auipc	a0,0x4
    80001698:	aa450513          	addi	a0,a0,-1372 # 80005138 <CONSOLE_STATUS+0x128>
    8000169c:	00000097          	auipc	ra,0x0
    800016a0:	470080e7          	jalr	1136(ra) # 80001b0c <_Z11printStringPKc>

    // Čišćenje memorije
    delete thr1;
    800016a4:	00098a63          	beqz	s3,800016b8 <main+0x1d0>
    800016a8:	0009b783          	ld	a5,0(s3)
    800016ac:	0087b783          	ld	a5,8(a5)
    800016b0:	00098513          	mv	a0,s3
    800016b4:	000780e7          	jalr	a5
    delete thr2;
    800016b8:	00090a63          	beqz	s2,800016cc <main+0x1e4>
    800016bc:	00093783          	ld	a5,0(s2)
    800016c0:	0087b783          	ld	a5,8(a5)
    800016c4:	00090513          	mv	a0,s2
    800016c8:	000780e7          	jalr	a5
    delete testSem;
    800016cc:	000a0a63          	beqz	s4,800016e0 <main+0x1f8>
    800016d0:	000a3783          	ld	a5,0(s4)
    800016d4:	0087b783          	ld	a5,8(a5)
    800016d8:	000a0513          	mv	a0,s4
    800016dc:	000780e7          	jalr	a5

    return 0;
    800016e0:	00000513          	li	a0,0
    800016e4:	03813083          	ld	ra,56(sp)
    800016e8:	03013403          	ld	s0,48(sp)
    800016ec:	02813483          	ld	s1,40(sp)
    800016f0:	02013903          	ld	s2,32(sp)
    800016f4:	01813983          	ld	s3,24(sp)
    800016f8:	01013a03          	ld	s4,16(sp)
    800016fc:	04010113          	addi	sp,sp,64
    80001700:	00008067          	ret
    Semaphore* testSem = new Semaphore(0);
    80001704:	00050493          	mv	s1,a0
    80001708:	000a0513          	mv	a0,s4
    8000170c:	00001097          	auipc	ra,0x1
    80001710:	090080e7          	jalr	144(ra) # 8000279c <_ZdlPv>
    80001714:	00048513          	mv	a0,s1
    80001718:	00006097          	auipc	ra,0x6
    8000171c:	c20080e7          	jalr	-992(ra) # 80007338 <_Unwind_Resume>
    WorkerThread* thr1 = new WorkerThread("NIT_1", testSem);
    80001720:	00050493          	mv	s1,a0
    80001724:	00098513          	mv	a0,s3
    80001728:	00001097          	auipc	ra,0x1
    8000172c:	074080e7          	jalr	116(ra) # 8000279c <_ZdlPv>
    80001730:	00048513          	mv	a0,s1
    80001734:	00006097          	auipc	ra,0x6
    80001738:	c04080e7          	jalr	-1020(ra) # 80007338 <_Unwind_Resume>
    WorkerThread* thr2 = new WorkerThread("NIT_2", testSem);
    8000173c:	00050493          	mv	s1,a0
    80001740:	00090513          	mv	a0,s2
    80001744:	00001097          	auipc	ra,0x1
    80001748:	058080e7          	jalr	88(ra) # 8000279c <_ZdlPv>
    8000174c:	00048513          	mv	a0,s1
    80001750:	00006097          	auipc	ra,0x6
    80001754:	be8080e7          	jalr	-1048(ra) # 80007338 <_Unwind_Resume>

0000000080001758 <_ZN12WorkerThread3runEv>:
    void run() override {
    80001758:	fe010113          	addi	sp,sp,-32
    8000175c:	00113c23          	sd	ra,24(sp)
    80001760:	00813823          	sd	s0,16(sp)
    80001764:	00913423          	sd	s1,8(sp)
    80001768:	01213023          	sd	s2,0(sp)
    8000176c:	02010413          	addi	s0,sp,32
    80001770:	00050913          	mv	s2,a0
        printString(name);
    80001774:	02853503          	ld	a0,40(a0)
    80001778:	00000097          	auipc	ra,0x0
    8000177c:	394080e7          	jalr	916(ra) # 80001b0c <_Z11printStringPKc>
        printString(": Cekam na semaforu...\n");
    80001780:	00004517          	auipc	a0,0x4
    80001784:	8a050513          	addi	a0,a0,-1888 # 80005020 <CONSOLE_STATUS+0x10>
    80001788:	00000097          	auipc	ra,0x0
    8000178c:	384080e7          	jalr	900(ra) # 80001b0c <_Z11printStringPKc>
        sem->wait(); // Ovde nit mora da stane!
    80001790:	02093503          	ld	a0,32(s2)
    80001794:	00001097          	auipc	ra,0x1
    80001798:	228080e7          	jalr	552(ra) # 800029bc <_ZN9Semaphore4waitEv>
        printString(name);
    8000179c:	02893503          	ld	a0,40(s2)
    800017a0:	00000097          	auipc	ra,0x0
    800017a4:	36c080e7          	jalr	876(ra) # 80001b0c <_Z11printStringPKc>
        printString(": Docekao signal i nastavljam rad!\n");
    800017a8:	00004517          	auipc	a0,0x4
    800017ac:	89050513          	addi	a0,a0,-1904 # 80005038 <CONSOLE_STATUS+0x28>
    800017b0:	00000097          	auipc	ra,0x0
    800017b4:	35c080e7          	jalr	860(ra) # 80001b0c <_Z11printStringPKc>
        for(int i = 0; i < 3; i++) {
    800017b8:	00000493          	li	s1,0
    800017bc:	0300006f          	j	800017ec <_ZN12WorkerThread3runEv+0x94>
            printString(name);
    800017c0:	02893503          	ld	a0,40(s2)
    800017c4:	00000097          	auipc	ra,0x0
    800017c8:	348080e7          	jalr	840(ra) # 80001b0c <_Z11printStringPKc>
            printString(": Radi...\n");
    800017cc:	00004517          	auipc	a0,0x4
    800017d0:	89450513          	addi	a0,a0,-1900 # 80005060 <CONSOLE_STATUS+0x50>
    800017d4:	00000097          	auipc	ra,0x0
    800017d8:	338080e7          	jalr	824(ra) # 80001b0c <_Z11printStringPKc>
            Thread::sleep(5);
    800017dc:	00500513          	li	a0,5
    800017e0:	00001097          	auipc	ra,0x1
    800017e4:	0f0080e7          	jalr	240(ra) # 800028d0 <_ZN6Thread5sleepEm>
        for(int i = 0; i < 3; i++) {
    800017e8:	0014849b          	addiw	s1,s1,1
    800017ec:	00200793          	li	a5,2
    800017f0:	fc97d8e3          	bge	a5,s1,800017c0 <_ZN12WorkerThread3runEv+0x68>
    }
    800017f4:	01813083          	ld	ra,24(sp)
    800017f8:	01013403          	ld	s0,16(sp)
    800017fc:	00813483          	ld	s1,8(sp)
    80001800:	00013903          	ld	s2,0(sp)
    80001804:	02010113          	addi	sp,sp,32
    80001808:	00008067          	ret

000000008000180c <_ZN12WorkerThreadD1Ev>:
class WorkerThread : public Thread {
    8000180c:	ff010113          	addi	sp,sp,-16
    80001810:	00113423          	sd	ra,8(sp)
    80001814:	00813023          	sd	s0,0(sp)
    80001818:	01010413          	addi	s0,sp,16
    8000181c:	00004797          	auipc	a5,0x4
    80001820:	93c78793          	addi	a5,a5,-1732 # 80005158 <_ZTV12WorkerThread+0x10>
    80001824:	00f53023          	sd	a5,0(a0)
    80001828:	00001097          	auipc	ra,0x1
    8000182c:	eb0080e7          	jalr	-336(ra) # 800026d8 <_ZN6ThreadD1Ev>
    80001830:	00813083          	ld	ra,8(sp)
    80001834:	00013403          	ld	s0,0(sp)
    80001838:	01010113          	addi	sp,sp,16
    8000183c:	00008067          	ret

0000000080001840 <_ZN12WorkerThreadD0Ev>:
    80001840:	fe010113          	addi	sp,sp,-32
    80001844:	00113c23          	sd	ra,24(sp)
    80001848:	00813823          	sd	s0,16(sp)
    8000184c:	00913423          	sd	s1,8(sp)
    80001850:	02010413          	addi	s0,sp,32
    80001854:	00050493          	mv	s1,a0
    80001858:	00004797          	auipc	a5,0x4
    8000185c:	90078793          	addi	a5,a5,-1792 # 80005158 <_ZTV12WorkerThread+0x10>
    80001860:	00f53023          	sd	a5,0(a0)
    80001864:	00001097          	auipc	ra,0x1
    80001868:	e74080e7          	jalr	-396(ra) # 800026d8 <_ZN6ThreadD1Ev>
    8000186c:	00048513          	mv	a0,s1
    80001870:	00001097          	auipc	ra,0x1
    80001874:	f2c080e7          	jalr	-212(ra) # 8000279c <_ZdlPv>
    80001878:	01813083          	ld	ra,24(sp)
    8000187c:	01013403          	ld	s0,16(sp)
    80001880:	00813483          	ld	s1,8(sp)
    80001884:	02010113          	addi	sp,sp,32
    80001888:	00008067          	ret

000000008000188c <_ZN15MemoryAllocator4initEv>:
    }

    return address;
}

void MemoryAllocator::init() {
    8000188c:	ff010113          	addi	sp,sp,-16
    80001890:	00813423          	sd	s0,8(sp)
    80001894:	01010413          	addi	s0,sp,16
    size_t start = (size_t)HEAP_START_ADDR;
    80001898:	00004797          	auipc	a5,0x4
    8000189c:	7e87b783          	ld	a5,2024(a5) # 80006080 <HEAP_START_ADDR>
    size_t end = (size_t)HEAP_END_ADDR;
    800018a0:	00004717          	auipc	a4,0x4
    800018a4:	7d873703          	ld	a4,2008(a4) # 80006078 <HEAP_END_ADDR>

    start = start % MEM_BLOCK_SIZE == 0 ? start :   (start - start % MEM_BLOCK_SIZE) + MEM_BLOCK_SIZE;
    800018a8:	03f7f693          	andi	a3,a5,63
    800018ac:	00068663          	beqz	a3,800018b8 <_ZN15MemoryAllocator4initEv+0x2c>
    800018b0:	fc07f793          	andi	a5,a5,-64
    800018b4:	04078793          	addi	a5,a5,64
    end = end % MEM_BLOCK_SIZE == 0 ? end : (end - end % MEM_BLOCK_SIZE);
    800018b8:	03f77693          	andi	a3,a4,63
    800018bc:	00068463          	beqz	a3,800018c4 <_ZN15MemoryAllocator4initEv+0x38>
    800018c0:	fc077713          	andi	a4,a4,-64

    head = (segmentHeader*) start;
    800018c4:	00005697          	auipc	a3,0x5
    800018c8:	94f6b223          	sd	a5,-1724(a3) # 80006208 <_ZN15MemoryAllocator4headE>
    head->size = end - start - MEM_BLOCK_SIZE;
    800018cc:	40f70733          	sub	a4,a4,a5
    800018d0:	fc070713          	addi	a4,a4,-64
    800018d4:	00e7b423          	sd	a4,8(a5)
    head -> next = nullptr;
    800018d8:	0007b023          	sd	zero,0(a5)
}
    800018dc:	00813403          	ld	s0,8(sp)
    800018e0:	01010113          	addi	sp,sp,16
    800018e4:	00008067          	ret

00000000800018e8 <_ZN15MemoryAllocator7kmallocEm>:
void *MemoryAllocator::kmalloc(size_t size) {  // argument is in bytes
    800018e8:	fe010113          	addi	sp,sp,-32
    800018ec:	00113c23          	sd	ra,24(sp)
    800018f0:	00813823          	sd	s0,16(sp)
    800018f4:	00913423          	sd	s1,8(sp)
    800018f8:	02010413          	addi	s0,sp,32
    800018fc:	00050493          	mv	s1,a0
    if(!isinit){
    80001900:	00005797          	auipc	a5,0x5
    80001904:	9107c783          	lbu	a5,-1776(a5) # 80006210 <_ZN15MemoryAllocator6isinitE>
    80001908:	00078e63          	beqz	a5,80001924 <_ZN15MemoryAllocator7kmallocEm+0x3c>
    size_t bytes_needed = (size_t)((size + MEM_BLOCK_SIZE - 1 ) / MEM_BLOCK_SIZE)*MEM_BLOCK_SIZE;
    8000190c:	03f48713          	addi	a4,s1,63
    80001910:	fc077713          	andi	a4,a4,-64
    segmentHeader* curr = head;
    80001914:	00005797          	auipc	a5,0x5
    80001918:	8f47b783          	ld	a5,-1804(a5) # 80006208 <_ZN15MemoryAllocator4headE>
    segmentHeader* prev = nullptr;
    8000191c:	00000613          	li	a2,0
    80001920:	0240006f          	j	80001944 <_ZN15MemoryAllocator7kmallocEm+0x5c>
        isinit = true;
    80001924:	00100793          	li	a5,1
    80001928:	00005717          	auipc	a4,0x5
    8000192c:	8ef70423          	sb	a5,-1816(a4) # 80006210 <_ZN15MemoryAllocator6isinitE>
        init();
    80001930:	00000097          	auipc	ra,0x0
    80001934:	f5c080e7          	jalr	-164(ra) # 8000188c <_ZN15MemoryAllocator4initEv>
    80001938:	fd5ff06f          	j	8000190c <_ZN15MemoryAllocator7kmallocEm+0x24>
        prev = curr;
    8000193c:	00078613          	mv	a2,a5
    for(;curr; curr = curr -> next){
    80001940:	0007b783          	ld	a5,0(a5)
    80001944:	00078a63          	beqz	a5,80001958 <_ZN15MemoryAllocator7kmallocEm+0x70>
        if(curr -> size >= bytes_needed) {
    80001948:	0087b683          	ld	a3,8(a5)
    8000194c:	fee6e8e3          	bltu	a3,a4,8000193c <_ZN15MemoryAllocator7kmallocEm+0x54>
            address = (void*) ((size_t) curr + MEM_BLOCK_SIZE);
    80001950:	04078513          	addi	a0,a5,64
            break;
    80001954:	0080006f          	j	8000195c <_ZN15MemoryAllocator7kmallocEm+0x74>
    void* address = nullptr;
    80001958:	00078513          	mv	a0,a5
    if(!curr) return nullptr;
    8000195c:	06078063          	beqz	a5,800019bc <_ZN15MemoryAllocator7kmallocEm+0xd4>
    size_t remaining_bytes = curr->size - bytes_needed;
    80001960:	0087b683          	ld	a3,8(a5)
    80001964:	40e686b3          	sub	a3,a3,a4
    if(remaining_bytes >= 2*MEM_BLOCK_SIZE){  //there is enough space for header and minimum one block
    80001968:	07f00593          	li	a1,127
    8000196c:	02d5fe63          	bgeu	a1,a3,800019a8 <_ZN15MemoryAllocator7kmallocEm+0xc0>
        next_free_node = (segmentHeader*)((char*)curr + bytes_needed + MEM_BLOCK_SIZE);
    80001970:	04070593          	addi	a1,a4,64
    80001974:	00b785b3          	add	a1,a5,a1
        next_free_node -> next = curr -> next;
    80001978:	0007b803          	ld	a6,0(a5)
    8000197c:	0105b023          	sd	a6,0(a1)
        next_free_node -> size = remaining_bytes - MEM_BLOCK_SIZE;
    80001980:	fc068693          	addi	a3,a3,-64
    80001984:	00d5b423          	sd	a3,8(a1)
        curr -> size = bytes_needed;
    80001988:	00e7b423          	sd	a4,8(a5)
    if(prev){
    8000198c:	02060263          	beqz	a2,800019b0 <_ZN15MemoryAllocator7kmallocEm+0xc8>
        prev -> next = next_free_node;
    80001990:	00b63023          	sd	a1,0(a2)
}
    80001994:	01813083          	ld	ra,24(sp)
    80001998:	01013403          	ld	s0,16(sp)
    8000199c:	00813483          	ld	s1,8(sp)
    800019a0:	02010113          	addi	sp,sp,32
    800019a4:	00008067          	ret
        next_free_node = curr -> next;
    800019a8:	0007b583          	ld	a1,0(a5)
    800019ac:	fe1ff06f          	j	8000198c <_ZN15MemoryAllocator7kmallocEm+0xa4>
        head = next_free_node;
    800019b0:	00005797          	auipc	a5,0x5
    800019b4:	84b7bc23          	sd	a1,-1960(a5) # 80006208 <_ZN15MemoryAllocator4headE>
    800019b8:	fddff06f          	j	80001994 <_ZN15MemoryAllocator7kmallocEm+0xac>
    if(!curr) return nullptr;
    800019bc:	00078513          	mv	a0,a5
    800019c0:	fd5ff06f          	j	80001994 <_ZN15MemoryAllocator7kmallocEm+0xac>

00000000800019c4 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE>:



void MemoryAllocator::tryMerge(segmentHeader *block) {
    800019c4:	ff010113          	addi	sp,sp,-16
    800019c8:	00813423          	sd	s0,8(sp)
    800019cc:	01010413          	addi	s0,sp,16
    if(!block) return;
    800019d0:	00050e63          	beqz	a0,800019ec <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x28>

    segmentHeader* next_seg = block -> next;
    800019d4:	00053783          	ld	a5,0(a0)

    if(!next_seg) return;
    800019d8:	00078a63          	beqz	a5,800019ec <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x28>

    if((char*) block +  MEM_BLOCK_SIZE + block -> size == (char*) next_seg){
    800019dc:	00853683          	ld	a3,8(a0)
    800019e0:	04068713          	addi	a4,a3,64
    800019e4:	00e50733          	add	a4,a0,a4
    800019e8:	00f70863          	beq	a4,a5,800019f8 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x34>
        block -> next = next_seg -> next;
        block -> size += next_seg -> size +  MEM_BLOCK_SIZE;
    }
}
    800019ec:	00813403          	ld	s0,8(sp)
    800019f0:	01010113          	addi	sp,sp,16
    800019f4:	00008067          	ret
        block -> next = next_seg -> next;
    800019f8:	0007b703          	ld	a4,0(a5)
    800019fc:	00e53023          	sd	a4,0(a0)
        block -> size += next_seg -> size +  MEM_BLOCK_SIZE;
    80001a00:	0087b783          	ld	a5,8(a5)
    80001a04:	00f686b3          	add	a3,a3,a5
    80001a08:	04068693          	addi	a3,a3,64
    80001a0c:	00d53423          	sd	a3,8(a0)
    80001a10:	fddff06f          	j	800019ec <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x28>

0000000080001a14 <_ZN15MemoryAllocator5kfreeEPv>:
int MemoryAllocator::kfree(void *addr) {
    80001a14:	fe010113          	addi	sp,sp,-32
    80001a18:	00113c23          	sd	ra,24(sp)
    80001a1c:	00813823          	sd	s0,16(sp)
    80001a20:	00913423          	sd	s1,8(sp)
    80001a24:	01213023          	sd	s2,0(sp)
    80001a28:	02010413          	addi	s0,sp,32
    80001a2c:	00050913          	mv	s2,a0
    if(!isinit){ isinit = true; init(); }
    80001a30:	00004797          	auipc	a5,0x4
    80001a34:	7e07c783          	lbu	a5,2016(a5) # 80006210 <_ZN15MemoryAllocator6isinitE>
    80001a38:	04078663          	beqz	a5,80001a84 <_ZN15MemoryAllocator5kfreeEPv+0x70>
    if(!addr) return -1;
    80001a3c:	0a090863          	beqz	s2,80001aec <_ZN15MemoryAllocator5kfreeEPv+0xd8>
    segmentHeader* newFree = (segmentHeader*)((char*)addr - MEM_BLOCK_SIZE);
    80001a40:	fc090513          	addi	a0,s2,-64
    if((size_t)newFree < (size_t)HEAP_START_ADDR || (size_t)newFree >= (size_t)HEAP_END_ADDR) {
    80001a44:	00004797          	auipc	a5,0x4
    80001a48:	63c7b783          	ld	a5,1596(a5) # 80006080 <HEAP_START_ADDR>
    80001a4c:	0af56463          	bltu	a0,a5,80001af4 <_ZN15MemoryAllocator5kfreeEPv+0xe0>
    80001a50:	00004797          	auipc	a5,0x4
    80001a54:	6287b783          	ld	a5,1576(a5) # 80006078 <HEAP_END_ADDR>
    80001a58:	0af57263          	bgeu	a0,a5,80001afc <_ZN15MemoryAllocator5kfreeEPv+0xe8>
    segmentHeader* curr = head;
    80001a5c:	00004717          	auipc	a4,0x4
    80001a60:	7ac73703          	ld	a4,1964(a4) # 80006208 <_ZN15MemoryAllocator4headE>
    80001a64:	00070793          	mv	a5,a4
    segmentHeader* prev = nullptr;
    80001a68:	00000493          	li	s1,0
    while(curr) {
    80001a6c:	02078863          	beqz	a5,80001a9c <_ZN15MemoryAllocator5kfreeEPv+0x88>
        if(curr == newFree) {
    80001a70:	08a78a63          	beq	a5,a0,80001b04 <_ZN15MemoryAllocator5kfreeEPv+0xf0>
        if(curr > newFree) break;
    80001a74:	02f56463          	bltu	a0,a5,80001a9c <_ZN15MemoryAllocator5kfreeEPv+0x88>
        prev = curr;
    80001a78:	00078493          	mv	s1,a5
        curr = curr->next;
    80001a7c:	0007b783          	ld	a5,0(a5)
    while(curr) {
    80001a80:	fedff06f          	j	80001a6c <_ZN15MemoryAllocator5kfreeEPv+0x58>
    if(!isinit){ isinit = true; init(); }
    80001a84:	00100793          	li	a5,1
    80001a88:	00004717          	auipc	a4,0x4
    80001a8c:	78f70423          	sb	a5,1928(a4) # 80006210 <_ZN15MemoryAllocator6isinitE>
    80001a90:	00000097          	auipc	ra,0x0
    80001a94:	dfc080e7          	jalr	-516(ra) # 8000188c <_ZN15MemoryAllocator4initEv>
    80001a98:	fa5ff06f          	j	80001a3c <_ZN15MemoryAllocator5kfreeEPv+0x28>
    if(prev) {
    80001a9c:	04048063          	beqz	s1,80001adc <_ZN15MemoryAllocator5kfreeEPv+0xc8>
        newFree->next = prev->next;
    80001aa0:	0004b783          	ld	a5,0(s1)
    80001aa4:	fcf93023          	sd	a5,-64(s2)
        prev->next = newFree;
    80001aa8:	00a4b023          	sd	a0,0(s1)
    tryMerge(newFree);
    80001aac:	00000097          	auipc	ra,0x0
    80001ab0:	f18080e7          	jalr	-232(ra) # 800019c4 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE>
    tryMerge(prev);
    80001ab4:	00048513          	mv	a0,s1
    80001ab8:	00000097          	auipc	ra,0x0
    80001abc:	f0c080e7          	jalr	-244(ra) # 800019c4 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE>
    return 0;
    80001ac0:	00000513          	li	a0,0
}
    80001ac4:	01813083          	ld	ra,24(sp)
    80001ac8:	01013403          	ld	s0,16(sp)
    80001acc:	00813483          	ld	s1,8(sp)
    80001ad0:	00013903          	ld	s2,0(sp)
    80001ad4:	02010113          	addi	sp,sp,32
    80001ad8:	00008067          	ret
        newFree->next = head;
    80001adc:	fce93023          	sd	a4,-64(s2)
        head = newFree;
    80001ae0:	00004797          	auipc	a5,0x4
    80001ae4:	72a7b423          	sd	a0,1832(a5) # 80006208 <_ZN15MemoryAllocator4headE>
    80001ae8:	fc5ff06f          	j	80001aac <_ZN15MemoryAllocator5kfreeEPv+0x98>
    if(!addr) return -1;
    80001aec:	fff00513          	li	a0,-1
    80001af0:	fd5ff06f          	j	80001ac4 <_ZN15MemoryAllocator5kfreeEPv+0xb0>
        return -1;
    80001af4:	fff00513          	li	a0,-1
    80001af8:	fcdff06f          	j	80001ac4 <_ZN15MemoryAllocator5kfreeEPv+0xb0>
    80001afc:	fff00513          	li	a0,-1
    80001b00:	fc5ff06f          	j	80001ac4 <_ZN15MemoryAllocator5kfreeEPv+0xb0>
            return -1;
    80001b04:	fff00513          	li	a0,-1
    80001b08:	fbdff06f          	j	80001ac4 <_ZN15MemoryAllocator5kfreeEPv+0xb0>

0000000080001b0c <_Z11printStringPKc>:
#include "../h/printer.h"
#include "../h/syscall_c.hpp" // Koristimo tvoj javni API
#include "../h/riscv.h"

void printString(char const *string)
{
    80001b0c:	fe010113          	addi	sp,sp,-32
    80001b10:	00113c23          	sd	ra,24(sp)
    80001b14:	00813823          	sd	s0,16(sp)
    80001b18:	00913423          	sd	s1,8(sp)
    80001b1c:	02010413          	addi	s0,sp,32
    80001b20:	00050493          	mv	s1,a0
    80001b24:	0100006f          	j	80001b34 <_Z11printStringPKc+0x28>
    // NEMOJ gasiti prekide ovde! 
    // Tvoj novi Console::putc je thread-safe i koristi semafore.
    while (*string != '\0')
    {
        putc(*string); // Koristi sistemski poziv (0x42)
    80001b28:	00001097          	auipc	ra,0x1
    80001b2c:	b5c080e7          	jalr	-1188(ra) # 80002684 <_Z4putcc>
        string++;
    80001b30:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001b34:	0004c503          	lbu	a0,0(s1)
    80001b38:	fe0518e3          	bnez	a0,80001b28 <_Z11printStringPKc+0x1c>
    }
}
    80001b3c:	01813083          	ld	ra,24(sp)
    80001b40:	01013403          	ld	s0,16(sp)
    80001b44:	00813483          	ld	s1,8(sp)
    80001b48:	02010113          	addi	sp,sp,32
    80001b4c:	00008067          	ret

0000000080001b50 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{   
    80001b50:	fc010113          	addi	sp,sp,-64
    80001b54:	02113c23          	sd	ra,56(sp)
    80001b58:	02813823          	sd	s0,48(sp)
    80001b5c:	02913423          	sd	s1,40(sp)
    80001b60:	04010413          	addi	s0,sp,64
    char buf[20]; // Povećaj malo za svaki slučaj (uint64 može biti dug)
    int i;
    uint64 x = integer;

    // Obrada nule
    if (x == 0) {
    80001b64:	04050263          	beqz	a0,80001ba8 <_Z12printIntegerm+0x58>
        putc('0');
        return;
    }

    i = 0;
    80001b68:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001b6c:	00a00693          	li	a3,10
    80001b70:	02d57633          	remu	a2,a0,a3
    80001b74:	00003717          	auipc	a4,0x3
    80001b78:	5fc70713          	addi	a4,a4,1532 # 80005170 <_ZZ12printIntegermE6digits>
    80001b7c:	00c70733          	add	a4,a4,a2
    80001b80:	00074703          	lbu	a4,0(a4)
    80001b84:	fe040613          	addi	a2,s0,-32
    80001b88:	009607b3          	add	a5,a2,s1
    80001b8c:	0014849b          	addiw	s1,s1,1
    80001b90:	fee78423          	sb	a4,-24(a5)
    } while ((x /= 10) != 0);
    80001b94:	00050713          	mv	a4,a0
    80001b98:	02d55533          	divu	a0,a0,a3
    80001b9c:	00900793          	li	a5,9
    80001ba0:	fce7e6e3          	bltu	a5,a4,80001b6c <_Z12printIntegerm+0x1c>
    80001ba4:	0280006f          	j	80001bcc <_Z12printIntegerm+0x7c>
        putc('0');
    80001ba8:	03000513          	li	a0,48
    80001bac:	00001097          	auipc	ra,0x1
    80001bb0:	ad8080e7          	jalr	-1320(ra) # 80002684 <_Z4putcc>
        return;
    80001bb4:	0200006f          	j	80001bd4 <_Z12printIntegerm+0x84>

    // Ispis unazad
    while (--i >= 0) {
        putc(buf[i]);
    80001bb8:	fe040793          	addi	a5,s0,-32
    80001bbc:	009787b3          	add	a5,a5,s1
    80001bc0:	fe87c503          	lbu	a0,-24(a5)
    80001bc4:	00001097          	auipc	ra,0x1
    80001bc8:	ac0080e7          	jalr	-1344(ra) # 80002684 <_Z4putcc>
    while (--i >= 0) {
    80001bcc:	fff4849b          	addiw	s1,s1,-1
    80001bd0:	fe04d4e3          	bgez	s1,80001bb8 <_Z12printIntegerm+0x68>
    }
    80001bd4:	03813083          	ld	ra,56(sp)
    80001bd8:	03013403          	ld	s0,48(sp)
    80001bdc:	02813483          	ld	s1,40(sp)
    80001be0:	04010113          	addi	sp,sp,64
    80001be4:	00008067          	ret

0000000080001be8 <_ZN5Riscv10popSppSpieEv>:
#include "../h/MemoryAllocator.h"
#include "../h/Thread.h"
#include  "../h/Semaphore.h"
#include "../h/Console.h"
void Riscv::popSppSpie()
{
    80001be8:	ff010113          	addi	sp,sp,-16
    80001bec:	00813423          	sd	s0,8(sp)
    80001bf0:	01010413          	addi	s0,sp,16
	__asm__ volatile("csrw sepc, ra");
    80001bf4:	14109073          	csrw	sepc,ra
	__asm__ volatile("sret");
    80001bf8:	10200073          	sret
}
    80001bfc:	00813403          	ld	s0,8(sp)
    80001c00:	01010113          	addi	sp,sp,16
    80001c04:	00008067          	ret

0000000080001c08 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm>:
void Riscv::handleSupervisorTrap(uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5, uint64 a6, uint64 a7){
    80001c08:	f7010113          	addi	sp,sp,-144
    80001c0c:	08113423          	sd	ra,136(sp)
    80001c10:	08813023          	sd	s0,128(sp)
    80001c14:	06913c23          	sd	s1,120(sp)
    80001c18:	07213823          	sd	s2,112(sp)
    80001c1c:	07313423          	sd	s3,104(sp)
    80001c20:	09010413          	addi	s0,sp,144
    80001c24:	00058493          	mv	s1,a1
    80001c28:	00060913          	mv	s2,a2
        __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001c2c:	142027f3          	csrr	a5,scause
    80001c30:	faf43423          	sd	a5,-88(s0)
        return scause;
    80001c34:	fa843603          	ld	a2,-88(s0)

	uint64 scause = r_scause();

	if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
    80001c38:	ff860593          	addi	a1,a2,-8
    80001c3c:	00100793          	li	a5,1
    80001c40:	04b7fc63          	bgeu	a5,a1,80001c98 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x90>
		}

		w_sstatus(sstatus);
		w_sepc(sepc);

    } else if (scause == 0x8000000000000009UL) {
    80001c44:	fff00793          	li	a5,-1
    80001c48:	03f79793          	slli	a5,a5,0x3f
    80001c4c:	00978793          	addi	a5,a5,9
    80001c50:	2af60863          	beq	a2,a5,80001f00 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x2f8>
    		_console::getOutSem()->signal();
    	}
    	}

    	plic_complete(irq); // Obaveštavamo PLIC da je obrada završena
    } else if (scause == 0x8000000000000001UL) {
    80001c54:	fff00793          	li	a5,-1
    80001c58:	03f79793          	slli	a5,a5,0x3f
    80001c5c:	00178793          	addi	a5,a5,1
    80001c60:	0af61063          	bne	a2,a5,80001d00 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xf8>
    	_thread::timeSliceCounter++;
    80001c64:	00004717          	auipc	a4,0x4
    80001c68:	5c470713          	addi	a4,a4,1476 # 80006228 <_ZN7_thread16timeSliceCounterE>
    80001c6c:	00073783          	ld	a5,0(a4)
    80001c70:	00178793          	addi	a5,a5,1
    80001c74:	00f73023          	sd	a5,0(a4)
    	if (_thread::sleepingHead) {
    80001c78:	00004797          	auipc	a5,0x4
    80001c7c:	5a87b783          	ld	a5,1448(a5) # 80006220 <_ZN7_thread12sleepingHeadE>
    80001c80:	3e078463          	beqz	a5,80002068 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x460>
    		if (_thread::sleepingHead->timeSleeping > 0) {
    80001c84:	0487b703          	ld	a4,72(a5)
    80001c88:	38070463          	beqz	a4,80002010 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x408>
    			_thread::sleepingHead->timeSleeping--;
    80001c8c:	fff70713          	addi	a4,a4,-1
    80001c90:	04e7b423          	sd	a4,72(a5)
    80001c94:	37c0006f          	j	80002010 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x408>
        __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c98:	141027f3          	csrr	a5,sepc
    80001c9c:	faf43c23          	sd	a5,-72(s0)
        return sepc;
    80001ca0:	fb843783          	ld	a5,-72(s0)
		uint64 volatile sepc = r_sepc() + 4;
    80001ca4:	00478793          	addi	a5,a5,4
    80001ca8:	f6f43c23          	sd	a5,-136(s0)
    }

    inline uint64 Riscv::r_sstatus()
    {
        uint64 volatile sstatus;
        __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001cac:	100027f3          	csrr	a5,sstatus
    80001cb0:	faf43823          	sd	a5,-80(s0)
        return sstatus;
    80001cb4:	fb043783          	ld	a5,-80(s0)
		uint64 volatile sstatus = r_sstatus();
    80001cb8:	f8f43023          	sd	a5,-128(s0)
		switch(call) {
    80001cbc:	04200793          	li	a5,66
    80001cc0:	02a7e863          	bltu	a5,a0,80001cf0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
    80001cc4:	00251513          	slli	a0,a0,0x2
    80001cc8:	00003617          	auipc	a2,0x3
    80001ccc:	4b460613          	addi	a2,a2,1204 # 8000517c <_ZZ12printIntegermE6digits+0xc>
    80001cd0:	00c50533          	add	a0,a0,a2
    80001cd4:	00052783          	lw	a5,0(a0)
    80001cd8:	00c787b3          	add	a5,a5,a2
    80001cdc:	00078067          	jr	a5
				writeARegister(0, (uint64)MemoryAllocator::kmalloc(bytes));
    80001ce0:	00649513          	slli	a0,s1,0x6
    80001ce4:	00000097          	auipc	ra,0x0
    80001ce8:	c04080e7          	jalr	-1020(ra) # 800018e8 <_ZN15MemoryAllocator7kmallocEm>
        return value;
    }


inline void Riscv::writeARegister( int reg_number, uint64 value) {
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001cec:	00050513          	mv	a0,a0
		w_sstatus(sstatus);
    80001cf0:	f8043783          	ld	a5,-128(s0)
        __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001cf4:	10079073          	csrw	sstatus,a5
		w_sepc(sepc);
    80001cf8:	f7843783          	ld	a5,-136(s0)
        __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001cfc:	14179073          	csrw	sepc,a5
    	w_sepc(sepc);
    	
    }
        mc_sip(SIP_SSIP);
    }
}
    80001d00:	08813083          	ld	ra,136(sp)
    80001d04:	08013403          	ld	s0,128(sp)
    80001d08:	07813483          	ld	s1,120(sp)
    80001d0c:	07013903          	ld	s2,112(sp)
    80001d10:	06813983          	ld	s3,104(sp)
    80001d14:	09010113          	addi	sp,sp,144
    80001d18:	00008067          	ret
				writeARegister(0, (uint64)MemoryAllocator::kfree((void*)a1));
    80001d1c:	00048513          	mv	a0,s1
    80001d20:	00000097          	auipc	ra,0x0
    80001d24:	cf4080e7          	jalr	-780(ra) # 80001a14 <_ZN15MemoryAllocator5kfreeEPv>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001d28:	00050513          	mv	a0,a0
    }
    80001d2c:	fc5ff06f          	j	80001cf0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
				void* volatile arg = (void*) a3;
    80001d30:	f8d43423          	sd	a3,-120(s0)
				void* volatile stack_space = (void*) a4;
    80001d34:	f8e43823          	sd	a4,-112(s0)
				*handle =  _thread::createThread(body, arg, stack_space);
    80001d38:	f8843583          	ld	a1,-120(s0)
    80001d3c:	f9043603          	ld	a2,-112(s0)
    80001d40:	00090513          	mv	a0,s2
    80001d44:	00001097          	auipc	ra,0x1
    80001d48:	06c080e7          	jalr	108(ra) # 80002db0 <_ZN7_thread12createThreadEPFvPvES0_S0_>
    80001d4c:	00a4b023          	sd	a0,0(s1)
				if(*handle) {
    80001d50:	04050863          	beqz	a0,80001da0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x198>
					if (body!=nullptr) Scheduler::instance().put(*handle);
    80001d54:	04090063          	beqz	s2,80001d94 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x18c>

class _thread;

class Scheduler {
public:
    static Scheduler& instance(){static Scheduler instance; return instance;}
    80001d58:	00004797          	auipc	a5,0x4
    80001d5c:	4c07c783          	lbu	a5,1216(a5) # 80006218 <_ZGVZN9Scheduler8instanceEvE8instance>
    80001d60:	02079063          	bnez	a5,80001d80 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x178>

    void put(_thread* t);

    _thread* get();
private:
    Scheduler():head(nullptr), tail(nullptr){};
    80001d64:	00004797          	auipc	a5,0x4
    80001d68:	4fc78793          	addi	a5,a5,1276 # 80006260 <_ZZN9Scheduler8instanceEvE8instance>
    80001d6c:	0007b023          	sd	zero,0(a5)
    80001d70:	0007b423          	sd	zero,8(a5)
    static Scheduler& instance(){static Scheduler instance; return instance;}
    80001d74:	00100793          	li	a5,1
    80001d78:	00004717          	auipc	a4,0x4
    80001d7c:	4af70023          	sb	a5,1184(a4) # 80006218 <_ZGVZN9Scheduler8instanceEvE8instance>
    80001d80:	0004b583          	ld	a1,0(s1)
    80001d84:	00004517          	auipc	a0,0x4
    80001d88:	4dc50513          	addi	a0,a0,1244 # 80006260 <_ZZN9Scheduler8instanceEvE8instance>
    80001d8c:	00000097          	auipc	ra,0x0
    80001d90:	360080e7          	jalr	864(ra) # 800020ec <_ZN9Scheduler3putEP7_thread>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001d94:	00000793          	li	a5,0
    80001d98:	00078513          	mv	a0,a5
    }
    80001d9c:	f55ff06f          	j	80001cf0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001da0:	fff00793          	li	a5,-1
    80001da4:	00078513          	mv	a0,a5
    }
    80001da8:	f49ff06f          	j	80001cf0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
				_thread::timeSliceCounter = 0;
    80001dac:	00004797          	auipc	a5,0x4
    80001db0:	4607be23          	sd	zero,1148(a5) # 80006228 <_ZN7_thread16timeSliceCounterE>
				if (_thread::running) {
    80001db4:	00004797          	auipc	a5,0x4
    80001db8:	47c7b783          	ld	a5,1148(a5) # 80006230 <_ZN7_thread7runningE>
    80001dbc:	02078063          	beqz	a5,80001ddc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x1d4>
    bool isFinished(){return finished;};
	
	uint64 getTimeSlice() const {
		return timeSlice;
	}
    void setFinished(bool finished){_thread::finished = finished;};
    80001dc0:	00100713          	li	a4,1
    80001dc4:	04e780a3          	sb	a4,65(a5)
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001dc8:	00000793          	li	a5,0
    80001dcc:	00078513          	mv	a0,a5
				_thread::dispatch();
    80001dd0:	00001097          	auipc	ra,0x1
    80001dd4:	e0c080e7          	jalr	-500(ra) # 80002bdc <_ZN7_thread8dispatchEv>
				break;
    80001dd8:	f19ff06f          	j	80001cf0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
    80001ddc:	fff00793          	li	a5,-1
    80001de0:	00078513          	mv	a0,a5
    }
    80001de4:	fedff06f          	j	80001dd0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x1c8>
				_thread::timeSliceCounter = 0;
    80001de8:	00004797          	auipc	a5,0x4
    80001dec:	4407b023          	sd	zero,1088(a5) # 80006228 <_ZN7_thread16timeSliceCounterE>
				_thread::dispatch();
    80001df0:	00001097          	auipc	ra,0x1
    80001df4:	dec080e7          	jalr	-532(ra) # 80002bdc <_ZN7_thread8dispatchEv>
				break;
    80001df8:	ef9ff06f          	j	80001cf0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>

class _sem {
public:

    void* operator new(size_t size){
        void* ptr = MemoryAllocator::kmalloc(size);
    80001dfc:	02000513          	li	a0,32
    80001e00:	00000097          	auipc	ra,0x0
    80001e04:	ae8080e7          	jalr	-1304(ra) # 800018e8 <_ZN15MemoryAllocator7kmallocEm>
    80001e08:	00050993          	mv	s3,a0
				*handle = new _sem(a2);
    80001e0c:	0009059b          	sext.w	a1,s2
    80001e10:	00000097          	auipc	ra,0x0
    80001e14:	354080e7          	jalr	852(ra) # 80002164 <_ZN4_semC1Ei>
    80001e18:	0134b023          	sd	s3,0(s1)
				if(*handle) {
    80001e1c:	00098863          	beqz	s3,80001e2c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x224>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001e20:	00000793          	li	a5,0
    80001e24:	00078513          	mv	a0,a5
    }
    80001e28:	ec9ff06f          	j	80001cf0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001e2c:	fff00793          	li	a5,-1
    80001e30:	00078513          	mv	a0,a5
    }
    80001e34:	ebdff06f          	j	80001cf0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
				if (s == nullptr) {
    80001e38:	00049863          	bnez	s1,80001e48 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x240>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001e3c:	fff00793          	li	a5,-1
    80001e40:	00078513          	mv	a0,a5
    }
    80001e44:	eadff06f          	j	80001cf0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
					writeARegister(0, s->close());
    80001e48:	00048513          	mv	a0,s1
    80001e4c:	00000097          	auipc	ra,0x0
    80001e50:	4c8080e7          	jalr	1224(ra) # 80002314 <_ZN4_sem5closeEv>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001e54:	00050513          	mv	a0,a0
					delete s;
    80001e58:	00048513          	mv	a0,s1
    80001e5c:	00001097          	auipc	ra,0x1
    80001e60:	940080e7          	jalr	-1728(ra) # 8000279c <_ZdlPv>
    80001e64:	e8dff06f          	j	80001cf0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
				if (s == nullptr) {
    80001e68:	00049863          	bnez	s1,80001e78 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x270>
    80001e6c:	fff00793          	li	a5,-1
    80001e70:	00078513          	mv	a0,a5
    }
    80001e74:	e7dff06f          	j	80001cf0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
					writeARegister(0, s->wait());
    80001e78:	00048513          	mv	a0,s1
    80001e7c:	00000097          	auipc	ra,0x0
    80001e80:	34c080e7          	jalr	844(ra) # 800021c8 <_ZN4_sem4waitEv>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001e84:	00050513          	mv	a0,a0
    }
    80001e88:	e69ff06f          	j	80001cf0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
				if (s == nullptr) {
    80001e8c:	00049863          	bnez	s1,80001e9c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x294>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001e90:	fff00793          	li	a5,-1
    80001e94:	00078513          	mv	a0,a5
    }
    80001e98:	e59ff06f          	j	80001cf0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
					writeARegister(0, s->signal());
    80001e9c:	00048513          	mv	a0,s1
    80001ea0:	00000097          	auipc	ra,0x0
    80001ea4:	3e4080e7          	jalr	996(ra) # 80002284 <_ZN4_sem6signalEv>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001ea8:	00050513          	mv	a0,a0
    }
    80001eac:	e45ff06f          	j	80001cf0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
				if (_thread::running == nullptr) {
    80001eb0:	00004517          	auipc	a0,0x4
    80001eb4:	38053503          	ld	a0,896(a0) # 80006230 <_ZN7_thread7runningE>
    80001eb8:	00050e63          	beqz	a0,80001ed4 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x2cc>
					_thread::running -> time_sleep(a1);
    80001ebc:	00048593          	mv	a1,s1
    80001ec0:	00001097          	auipc	ra,0x1
    80001ec4:	df0080e7          	jalr	-528(ra) # 80002cb0 <_ZN7_thread10time_sleepEm>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001ec8:	00000793          	li	a5,0
    80001ecc:	00078513          	mv	a0,a5
    }
    80001ed0:	e21ff06f          	j	80001cf0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001ed4:	fff00793          	li	a5,-1
    80001ed8:	00078513          	mv	a0,a5
    }
    80001edc:	e15ff06f          	j	80001cf0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
				char c = _console::getc();
    80001ee0:	fffff097          	auipc	ra,0xfffff
    80001ee4:	48c080e7          	jalr	1164(ra) # 8000136c <_ZN8_console4getcEv>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80001ee8:	00050513          	mv	a0,a0
    }
    80001eec:	e05ff06f          	j	80001cf0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
				_console::putc(c);
    80001ef0:	0ff4f513          	andi	a0,s1,255
    80001ef4:	fffff097          	auipc	ra,0xfffff
    80001ef8:	4b0080e7          	jalr	1200(ra) # 800013a4 <_ZN8_console4putcEc>
				break;
    80001efc:	df5ff06f          	j	80001cf0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
    	int irq = plic_claim(); // Potvrđujemo prekid PLIC kontroleru
    80001f00:	00001097          	auipc	ra,0x1
    80001f04:	784080e7          	jalr	1924(ra) # 80003684 <plic_claim>
    80001f08:	00050913          	mv	s2,a0
    	if (irq == CONSOLE_IRQ) { // Proveravamo da li je prekid stigao baš sa konzole (obično 10)
    80001f0c:	00a00793          	li	a5,10
    80001f10:	04f50c63          	beq	a0,a5,80001f68 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x360>
    	plic_complete(irq); // Obaveštavamo PLIC da je obrada završena
    80001f14:	00090513          	mv	a0,s2
    80001f18:	00001097          	auipc	ra,0x1
    80001f1c:	7a4080e7          	jalr	1956(ra) # 800036bc <plic_complete>
    80001f20:	de1ff06f          	j	80001d00 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xf8>
    		char c = *((volatile uint8*)CONSOLE_RX_DATA);
    80001f24:	00003797          	auipc	a5,0x3
    80001f28:	0dc7b783          	ld	a5,220(a5) # 80005000 <CONSOLE_RX_DATA>
    80001f2c:	0007c483          	lbu	s1,0(a5)
    80001f30:	0ff4f493          	andi	s1,s1,255
    static Buffer* getInBuff() { ensureInit(); return inbuff; }
    80001f34:	fffff097          	auipc	ra,0xfffff
    80001f38:	2f4080e7          	jalr	756(ra) # 80001228 <_ZN8_console10ensureInitEv>
    		_console::getInBuff()->put(c);
    80001f3c:	00048593          	mv	a1,s1
    80001f40:	00004517          	auipc	a0,0x4
    80001f44:	2c053503          	ld	a0,704(a0) # 80006200 <_ZN8_console6inbuffE>
    80001f48:	fffff097          	auipc	ra,0xfffff
    80001f4c:	200080e7          	jalr	512(ra) # 80001148 <_ZN6Buffer3putEc>
    static _sem* getInSem() { ensureInit(); return inSem; }
    80001f50:	fffff097          	auipc	ra,0xfffff
    80001f54:	2d8080e7          	jalr	728(ra) # 80001228 <_ZN8_console10ensureInitEv>
    		_console::getInSem()->signal();
    80001f58:	00004517          	auipc	a0,0x4
    80001f5c:	29853503          	ld	a0,664(a0) # 800061f0 <_ZN8_console5inSemE>
    80001f60:	00000097          	auipc	ra,0x0
    80001f64:	324080e7          	jalr	804(ra) # 80002284 <_ZN4_sem6signalEv>
    	while ((*((volatile uint8*)CONSOLE_STATUS) & 0x01) && !_console::getInBuff()->isFull()) {
    80001f68:	00003497          	auipc	s1,0x3
    80001f6c:	0a84b483          	ld	s1,168(s1) # 80005010 <CONSOLE_STATUS>
    80001f70:	0004c783          	lbu	a5,0(s1)
    80001f74:	0017f793          	andi	a5,a5,1
    80001f78:	02078063          	beqz	a5,80001f98 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x390>
    static Buffer* getInBuff() { ensureInit(); return inbuff; }
    80001f7c:	fffff097          	auipc	ra,0xfffff
    80001f80:	2ac080e7          	jalr	684(ra) # 80001228 <_ZN8_console10ensureInitEv>
    80001f84:	00004517          	auipc	a0,0x4
    80001f88:	27c53503          	ld	a0,636(a0) # 80006200 <_ZN8_console6inbuffE>
    80001f8c:	fffff097          	auipc	ra,0xfffff
    80001f90:	258080e7          	jalr	600(ra) # 800011e4 <_ZN6Buffer6isFullEv>
    80001f94:	f80508e3          	beqz	a0,80001f24 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x31c>
    	while ((*((volatile uint8*)CONSOLE_STATUS) & 0x20) && !_console::getOutBuff()->isEmpty()) {
    80001f98:	0004c783          	lbu	a5,0(s1)
    80001f9c:	0207f793          	andi	a5,a5,32
    80001fa0:	f6078ae3          	beqz	a5,80001f14 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x30c>
    static Buffer* getOutBuff() { ensureInit(); return outbuff; }
    80001fa4:	fffff097          	auipc	ra,0xfffff
    80001fa8:	284080e7          	jalr	644(ra) # 80001228 <_ZN8_console10ensureInitEv>
    80001fac:	00004517          	auipc	a0,0x4
    80001fb0:	24c53503          	ld	a0,588(a0) # 800061f8 <_ZN8_console7outbuffE>
    80001fb4:	fffff097          	auipc	ra,0xfffff
    80001fb8:	254080e7          	jalr	596(ra) # 80001208 <_ZN6Buffer7isEmptyEv>
    80001fbc:	f4051ce3          	bnez	a0,80001f14 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x30c>
    80001fc0:	fffff097          	auipc	ra,0xfffff
    80001fc4:	268080e7          	jalr	616(ra) # 80001228 <_ZN8_console10ensureInitEv>
    		char c = _console::getOutBuff()->get();
    80001fc8:	00004517          	auipc	a0,0x4
    80001fcc:	23053503          	ld	a0,560(a0) # 800061f8 <_ZN8_console7outbuffE>
    80001fd0:	fffff097          	auipc	ra,0xfffff
    80001fd4:	1c4080e7          	jalr	452(ra) # 80001194 <_ZN6Buffer3getEv>
    		*((volatile uint8*)CONSOLE_TX_DATA) = (uint8)c;
    80001fd8:	00003797          	auipc	a5,0x3
    80001fdc:	0307b783          	ld	a5,48(a5) # 80005008 <CONSOLE_TX_DATA>
    80001fe0:	00a78023          	sb	a0,0(a5)
    static _sem* getOutSem() { ensureInit(); return outSem; }
    80001fe4:	fffff097          	auipc	ra,0xfffff
    80001fe8:	244080e7          	jalr	580(ra) # 80001228 <_ZN8_console10ensureInitEv>
    		_console::getOutSem()->signal();
    80001fec:	00004517          	auipc	a0,0x4
    80001ff0:	1fc53503          	ld	a0,508(a0) # 800061e8 <_ZN8_console6outSemE>
    80001ff4:	00000097          	auipc	ra,0x0
    80001ff8:	290080e7          	jalr	656(ra) # 80002284 <_ZN4_sem6signalEv>
    	while ((*((volatile uint8*)CONSOLE_STATUS) & 0x20) && !_console::getOutBuff()->isEmpty()) {
    80001ffc:	f9dff06f          	j	80001f98 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x390>
    			Scheduler::instance().put(t);
    80002000:	00004517          	auipc	a0,0x4
    80002004:	26050513          	addi	a0,a0,608 # 80006260 <_ZZN9Scheduler8instanceEvE8instance>
    80002008:	00000097          	auipc	ra,0x0
    8000200c:	0e4080e7          	jalr	228(ra) # 800020ec <_ZN9Scheduler3putEP7_thread>
    		while (_thread::sleepingHead && _thread::sleepingHead -> timeSleeping == 0) {
    80002010:	00004597          	auipc	a1,0x4
    80002014:	2105b583          	ld	a1,528(a1) # 80006220 <_ZN7_thread12sleepingHeadE>
    80002018:	04058863          	beqz	a1,80002068 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x460>
    8000201c:	0485b783          	ld	a5,72(a1)
    80002020:	04079463          	bnez	a5,80002068 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x460>
    			_thread::sleepingHead = t->waitnext;
    80002024:	0085b783          	ld	a5,8(a1)
    80002028:	00004717          	auipc	a4,0x4
    8000202c:	1ef73c23          	sd	a5,504(a4) # 80006220 <_ZN7_thread12sleepingHeadE>
    			t->waitnext = nullptr;
    80002030:	0005b423          	sd	zero,8(a1)
    			t->isReady = true;
    80002034:	00100793          	li	a5,1
    80002038:	04f58023          	sb	a5,64(a1)
    8000203c:	00004797          	auipc	a5,0x4
    80002040:	1dc7c783          	lbu	a5,476(a5) # 80006218 <_ZGVZN9Scheduler8instanceEvE8instance>
    80002044:	fa079ee3          	bnez	a5,80002000 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x3f8>
    Scheduler():head(nullptr), tail(nullptr){};
    80002048:	00004797          	auipc	a5,0x4
    8000204c:	21878793          	addi	a5,a5,536 # 80006260 <_ZZN9Scheduler8instanceEvE8instance>
    80002050:	0007b023          	sd	zero,0(a5)
    80002054:	0007b423          	sd	zero,8(a5)
    static Scheduler& instance(){static Scheduler instance; return instance;}
    80002058:	00100793          	li	a5,1
    8000205c:	00004717          	auipc	a4,0x4
    80002060:	1af70e23          	sb	a5,444(a4) # 80006218 <_ZGVZN9Scheduler8instanceEvE8instance>
    80002064:	f9dff06f          	j	80002000 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x3f8>
    if(_thread::timeSliceCounter >= _thread::running -> getTimeSlice())
    80002068:	00004797          	auipc	a5,0x4
    8000206c:	1c87b783          	ld	a5,456(a5) # 80006230 <_ZN7_thread7runningE>
		return timeSlice;
    80002070:	0387b783          	ld	a5,56(a5)
    80002074:	00004717          	auipc	a4,0x4
    80002078:	1b473703          	ld	a4,436(a4) # 80006228 <_ZN7_thread16timeSliceCounterE>
    8000207c:	00f77863          	bgeu	a4,a5,8000208c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x484>
        __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002080:	00200793          	li	a5,2
    80002084:	1447b073          	csrc	sip,a5
}
    80002088:	c79ff06f          	j	80001d00 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xf8>
        __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000208c:	141027f3          	csrr	a5,sepc
    80002090:	fcf43423          	sd	a5,-56(s0)
        return sepc;
    80002094:	fc843783          	ld	a5,-56(s0)
    	uint64 volatile sepc = r_sepc();
    80002098:	f8f43c23          	sd	a5,-104(s0)
        __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000209c:	100027f3          	csrr	a5,sstatus
    800020a0:	fcf43023          	sd	a5,-64(s0)
        return sstatus;
    800020a4:	fc043783          	ld	a5,-64(s0)
    	uint64 volatile sstatus = r_sstatus();
    800020a8:	faf43023          	sd	a5,-96(s0)
    	_thread::timeSliceCounter = 0;
    800020ac:	00004797          	auipc	a5,0x4
    800020b0:	1607be23          	sd	zero,380(a5) # 80006228 <_ZN7_thread16timeSliceCounterE>
    	_thread::dispatch();
    800020b4:	00001097          	auipc	ra,0x1
    800020b8:	b28080e7          	jalr	-1240(ra) # 80002bdc <_ZN7_thread8dispatchEv>
    	w_sstatus(sstatus);
    800020bc:	fa043783          	ld	a5,-96(s0)
        __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800020c0:	10079073          	csrw	sstatus,a5
    	w_sepc(sepc);
    800020c4:	f9843783          	ld	a5,-104(s0)
        __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800020c8:	14179073          	csrw	sepc,a5
    }
    800020cc:	fb5ff06f          	j	80002080 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x478>
				*handle = new _sem(a2);
    800020d0:	00050493          	mv	s1,a0
    800020d4:	00098513          	mv	a0,s3
    800020d8:	00000097          	auipc	ra,0x0
    800020dc:	6c4080e7          	jalr	1732(ra) # 8000279c <_ZdlPv>
    800020e0:	00048513          	mv	a0,s1
    800020e4:	00005097          	auipc	ra,0x5
    800020e8:	254080e7          	jalr	596(ra) # 80007338 <_Unwind_Resume>

00000000800020ec <_ZN9Scheduler3putEP7_thread>:
#include "../h/Scheduler.h"

#include "../h/Thread.h"
#include "../h/printer.h"

void Scheduler::put(_thread* t) {
    800020ec:	ff010113          	addi	sp,sp,-16
    800020f0:	00813423          	sd	s0,8(sp)
    800020f4:	01010413          	addi	s0,sp,16
    if (!t) return;
    800020f8:	00058e63          	beqz	a1,80002114 <_ZN9Scheduler3putEP7_thread+0x28>
    t->next = nullptr;
    800020fc:	0005b023          	sd	zero,0(a1)

    if (!head) {
    80002100:	00053783          	ld	a5,0(a0)
    80002104:	00078e63          	beqz	a5,80002120 <_ZN9Scheduler3putEP7_thread+0x34>
        head = t;
    } else {
        tail->next = t;
    80002108:	00853783          	ld	a5,8(a0)
    8000210c:	00b7b023          	sd	a1,0(a5)
    }
    tail = t;
    80002110:	00b53423          	sd	a1,8(a0)
}
    80002114:	00813403          	ld	s0,8(sp)
    80002118:	01010113          	addi	sp,sp,16
    8000211c:	00008067          	ret
        head = t;
    80002120:	00b53023          	sd	a1,0(a0)
    80002124:	fedff06f          	j	80002110 <_ZN9Scheduler3putEP7_thread+0x24>

0000000080002128 <_ZN9Scheduler3getEv>:

_thread* Scheduler::get() {
    80002128:	ff010113          	addi	sp,sp,-16
    8000212c:	00813423          	sd	s0,8(sp)
    80002130:	01010413          	addi	s0,sp,16
    80002134:	00050793          	mv	a5,a0
    if (!head) {
    80002138:	00053503          	ld	a0,0(a0)
    8000213c:	00050a63          	beqz	a0,80002150 <_ZN9Scheduler3getEv+0x28>
        return nullptr;
    }

    _thread* t = head;
    head = head->next;
    80002140:	00053703          	ld	a4,0(a0)
    80002144:	00e7b023          	sd	a4,0(a5)

    if (!head) {
    80002148:	00070a63          	beqz	a4,8000215c <_ZN9Scheduler3getEv+0x34>
        tail = nullptr;
    }

    t->next = nullptr;
    8000214c:	00053023          	sd	zero,0(a0)
    return t;
    80002150:	00813403          	ld	s0,8(sp)
    80002154:	01010113          	addi	sp,sp,16
    80002158:	00008067          	ret
        tail = nullptr;
    8000215c:	0007b423          	sd	zero,8(a5)
    80002160:	fedff06f          	j	8000214c <_ZN9Scheduler3getEv+0x24>

0000000080002164 <_ZN4_semC1Ei>:
#include "../h/Semaphore.h"
#include "../h/Thread.h"

_sem::_sem(int init):val(init), head(nullptr), tail(nullptr), closed(false) {
    80002164:	ff010113          	addi	sp,sp,-16
    80002168:	00813423          	sd	s0,8(sp)
    8000216c:	01010413          	addi	s0,sp,16
    80002170:	00b52023          	sw	a1,0(a0)
    80002174:	00053423          	sd	zero,8(a0)
    80002178:	00053823          	sd	zero,16(a0)
    8000217c:	00050c23          	sb	zero,24(a0)
}
    80002180:	00813403          	ld	s0,8(sp)
    80002184:	01010113          	addi	sp,sp,16
    80002188:	00008067          	ret

000000008000218c <_ZN4_sem3addEP7_thread>:
    }

    return 0;
}

void _sem::add(_thread* t) {
    8000218c:	ff010113          	addi	sp,sp,-16
    80002190:	00813423          	sd	s0,8(sp)
    80002194:	01010413          	addi	s0,sp,16
    if (!t) return;
    80002198:	00058e63          	beqz	a1,800021b4 <_ZN4_sem3addEP7_thread+0x28>
    t->waitnext = nullptr;
    8000219c:	0005b423          	sd	zero,8(a1)

    if (!head) {
    800021a0:	00853783          	ld	a5,8(a0)
    800021a4:	00078e63          	beqz	a5,800021c0 <_ZN4_sem3addEP7_thread+0x34>
        head = t;
    } else {
        tail->waitnext = t;
    800021a8:	01053783          	ld	a5,16(a0)
    800021ac:	00b7b423          	sd	a1,8(a5)
    }
    tail = t;
    800021b0:	00b53823          	sd	a1,16(a0)
}
    800021b4:	00813403          	ld	s0,8(sp)
    800021b8:	01010113          	addi	sp,sp,16
    800021bc:	00008067          	ret
        head = t;
    800021c0:	00b53423          	sd	a1,8(a0)
    800021c4:	fedff06f          	j	800021b0 <_ZN4_sem3addEP7_thread+0x24>

00000000800021c8 <_ZN4_sem4waitEv>:
    if (!_thread::running) return -1;
    800021c8:	00004597          	auipc	a1,0x4
    800021cc:	0685b583          	ld	a1,104(a1) # 80006230 <_ZN7_thread7runningE>
    800021d0:	06058463          	beqz	a1,80002238 <_ZN4_sem4waitEv+0x70>
    if (val > 0) {
    800021d4:	00052783          	lw	a5,0(a0)
    800021d8:	00f05a63          	blez	a5,800021ec <_ZN4_sem4waitEv+0x24>
        val--;
    800021dc:	fff7879b          	addiw	a5,a5,-1
    800021e0:	00f52023          	sw	a5,0(a0)
    return 0;
    800021e4:	00000513          	li	a0,0
    800021e8:	00008067          	ret
int _sem::wait() {
    800021ec:	ff010113          	addi	sp,sp,-16
    800021f0:	00113423          	sd	ra,8(sp)
    800021f4:	00813023          	sd	s0,0(sp)
    800021f8:	01010413          	addi	s0,sp,16
        _thread::running->isReady = false;
    800021fc:	04058023          	sb	zero,64(a1)
        _thread::running->semStatus = 0;
    80002200:	0405a223          	sw	zero,68(a1)
        add(_thread::running);
    80002204:	00000097          	auipc	ra,0x0
    80002208:	f88080e7          	jalr	-120(ra) # 8000218c <_ZN4_sem3addEP7_thread>
        _thread::dispatch();
    8000220c:	00001097          	auipc	ra,0x1
    80002210:	9d0080e7          	jalr	-1584(ra) # 80002bdc <_ZN7_thread8dispatchEv>
        if (_thread::running->semStatus < 0) {
    80002214:	00004797          	auipc	a5,0x4
    80002218:	01c7b783          	ld	a5,28(a5) # 80006230 <_ZN7_thread7runningE>
    8000221c:	0447a783          	lw	a5,68(a5)
    80002220:	0207c063          	bltz	a5,80002240 <_ZN4_sem4waitEv+0x78>
    return 0;
    80002224:	00000513          	li	a0,0
}
    80002228:	00813083          	ld	ra,8(sp)
    8000222c:	00013403          	ld	s0,0(sp)
    80002230:	01010113          	addi	sp,sp,16
    80002234:	00008067          	ret
    if (!_thread::running) return -1;
    80002238:	fff00513          	li	a0,-1
}
    8000223c:	00008067          	ret
            return -1;
    80002240:	fff00513          	li	a0,-1
    80002244:	fe5ff06f          	j	80002228 <_ZN4_sem4waitEv+0x60>

0000000080002248 <_ZN4_sem3getEv>:
_thread* _sem::get() {
    80002248:	ff010113          	addi	sp,sp,-16
    8000224c:	00813423          	sd	s0,8(sp)
    80002250:	01010413          	addi	s0,sp,16
    80002254:	00050793          	mv	a5,a0
    if (!head) {
    80002258:	00853503          	ld	a0,8(a0)
    8000225c:	00050a63          	beqz	a0,80002270 <_ZN4_sem3getEv+0x28>
        return nullptr;
    }

    _thread* t = head;
    head = head->waitnext;
    80002260:	00853703          	ld	a4,8(a0)
    80002264:	00e7b423          	sd	a4,8(a5)

    if (!head) {
    80002268:	00070a63          	beqz	a4,8000227c <_ZN4_sem3getEv+0x34>
        tail = nullptr;
    }

    t->waitnext = nullptr;
    8000226c:	00053423          	sd	zero,8(a0)
    return t;
}
    80002270:	00813403          	ld	s0,8(sp)
    80002274:	01010113          	addi	sp,sp,16
    80002278:	00008067          	ret
        tail = nullptr;
    8000227c:	0007b823          	sd	zero,16(a5)
    80002280:	fedff06f          	j	8000226c <_ZN4_sem3getEv+0x24>

0000000080002284 <_ZN4_sem6signalEv>:
int _sem::signal() {
    80002284:	fe010113          	addi	sp,sp,-32
    80002288:	00113c23          	sd	ra,24(sp)
    8000228c:	00813823          	sd	s0,16(sp)
    80002290:	00913423          	sd	s1,8(sp)
    80002294:	02010413          	addi	s0,sp,32
    80002298:	00050493          	mv	s1,a0
    _thread* t = get();
    8000229c:	00000097          	auipc	ra,0x0
    800022a0:	fac080e7          	jalr	-84(ra) # 80002248 <_ZN4_sem3getEv>
    if (t) {
    800022a4:	06050063          	beqz	a0,80002304 <_ZN4_sem6signalEv+0x80>
    800022a8:	00050593          	mv	a1,a0
        t->isReady = true;
    800022ac:	00100793          	li	a5,1
    800022b0:	04f50023          	sb	a5,64(a0)
    800022b4:	00004797          	auipc	a5,0x4
    800022b8:	f647c783          	lbu	a5,-156(a5) # 80006218 <_ZGVZN9Scheduler8instanceEvE8instance>
    800022bc:	02079063          	bnez	a5,800022dc <_ZN4_sem6signalEv+0x58>
    Scheduler():head(nullptr), tail(nullptr){};
    800022c0:	00004797          	auipc	a5,0x4
    800022c4:	fa078793          	addi	a5,a5,-96 # 80006260 <_ZZN9Scheduler8instanceEvE8instance>
    800022c8:	0007b023          	sd	zero,0(a5)
    800022cc:	0007b423          	sd	zero,8(a5)
    static Scheduler& instance(){static Scheduler instance; return instance;}
    800022d0:	00100793          	li	a5,1
    800022d4:	00004717          	auipc	a4,0x4
    800022d8:	f4f70223          	sb	a5,-188(a4) # 80006218 <_ZGVZN9Scheduler8instanceEvE8instance>
        Scheduler::instance().put(t);
    800022dc:	00004517          	auipc	a0,0x4
    800022e0:	f8450513          	addi	a0,a0,-124 # 80006260 <_ZZN9Scheduler8instanceEvE8instance>
    800022e4:	00000097          	auipc	ra,0x0
    800022e8:	e08080e7          	jalr	-504(ra) # 800020ec <_ZN9Scheduler3putEP7_thread>
}
    800022ec:	00000513          	li	a0,0
    800022f0:	01813083          	ld	ra,24(sp)
    800022f4:	01013403          	ld	s0,16(sp)
    800022f8:	00813483          	ld	s1,8(sp)
    800022fc:	02010113          	addi	sp,sp,32
    80002300:	00008067          	ret
        val++;
    80002304:	0004a783          	lw	a5,0(s1)
    80002308:	0017879b          	addiw	a5,a5,1
    8000230c:	00f4a023          	sw	a5,0(s1)
    80002310:	fddff06f          	j	800022ec <_ZN4_sem6signalEv+0x68>

0000000080002314 <_ZN4_sem5closeEv>:

int _sem::close() {
    80002314:	fe010113          	addi	sp,sp,-32
    80002318:	00113c23          	sd	ra,24(sp)
    8000231c:	00813823          	sd	s0,16(sp)
    80002320:	00913423          	sd	s1,8(sp)
    80002324:	02010413          	addi	s0,sp,32
    80002328:	00050493          	mv	s1,a0
    closed = true;
    8000232c:	00100793          	li	a5,1
    80002330:	00f50c23          	sb	a5,24(a0)

    while (head) {
    80002334:	0084b783          	ld	a5,8(s1)
    80002338:	06078263          	beqz	a5,8000239c <_ZN4_sem5closeEv+0x88>
        _thread* t = get();
    8000233c:	00048513          	mv	a0,s1
    80002340:	00000097          	auipc	ra,0x0
    80002344:	f08080e7          	jalr	-248(ra) # 80002248 <_ZN4_sem3getEv>
        if (t) {
    80002348:	fe0506e3          	beqz	a0,80002334 <_ZN4_sem5closeEv+0x20>
            t->isReady = true;
    8000234c:	00100793          	li	a5,1
    80002350:	04f50023          	sb	a5,64(a0)

            t->semStatus = -1;
    80002354:	fff00793          	li	a5,-1
    80002358:	04f52223          	sw	a5,68(a0)
    8000235c:	00004797          	auipc	a5,0x4
    80002360:	ebc7c783          	lbu	a5,-324(a5) # 80006218 <_ZGVZN9Scheduler8instanceEvE8instance>
    80002364:	02079063          	bnez	a5,80002384 <_ZN4_sem5closeEv+0x70>
    Scheduler():head(nullptr), tail(nullptr){};
    80002368:	00004797          	auipc	a5,0x4
    8000236c:	ef878793          	addi	a5,a5,-264 # 80006260 <_ZZN9Scheduler8instanceEvE8instance>
    80002370:	0007b023          	sd	zero,0(a5)
    80002374:	0007b423          	sd	zero,8(a5)
    static Scheduler& instance(){static Scheduler instance; return instance;}
    80002378:	00100793          	li	a5,1
    8000237c:	00004717          	auipc	a4,0x4
    80002380:	e8f70e23          	sb	a5,-356(a4) # 80006218 <_ZGVZN9Scheduler8instanceEvE8instance>

            Scheduler::instance().put(t);
    80002384:	00050593          	mv	a1,a0
    80002388:	00004517          	auipc	a0,0x4
    8000238c:	ed850513          	addi	a0,a0,-296 # 80006260 <_ZZN9Scheduler8instanceEvE8instance>
    80002390:	00000097          	auipc	ra,0x0
    80002394:	d5c080e7          	jalr	-676(ra) # 800020ec <_ZN9Scheduler3putEP7_thread>
    80002398:	f9dff06f          	j	80002334 <_ZN4_sem5closeEv+0x20>
        }
    }

    return 0;
    8000239c:	00000513          	li	a0,0
    800023a0:	01813083          	ld	ra,24(sp)
    800023a4:	01013403          	ld	s0,16(sp)
    800023a8:	00813483          	ld	s1,8(sp)
    800023ac:	02010113          	addi	sp,sp,32
    800023b0:	00008067          	ret

00000000800023b4 <_Z9mem_allocm>:
#include "../h/syscall_c.hpp"
#include  "../h/riscv.h"
#include "../lib/mem.h"
#include "../h/Console.h"
void *mem_alloc(size_t size) {
    800023b4:	fe010113          	addi	sp,sp,-32
    800023b8:	00813c23          	sd	s0,24(sp)
    800023bc:	02010413          	addi	s0,sp,32
    size_t blocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    800023c0:	03f50513          	addi	a0,a0,63
    800023c4:	00655513          	srli	a0,a0,0x6
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    800023c8:	00050593          	mv	a1,a0
    800023cc:	00100793          	li	a5,1
    800023d0:	00078513          	mv	a0,a5

    Riscv::writeARegister(1, blocks);
    Riscv::writeARegister(0, 0x01);

    __asm__ volatile("ecall");
    800023d4:	00000073          	ecall
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    800023d8:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    800023dc:	fef43423          	sd	a5,-24(s0)
    return (void*) a0;
    800023e0:	fe843503          	ld	a0,-24(s0)


}
    800023e4:	01813403          	ld	s0,24(sp)
    800023e8:	02010113          	addi	sp,sp,32
    800023ec:	00008067          	ret

00000000800023f0 <_Z8mem_freePv>:

int mem_free (void* ptr) {
    800023f0:	fe010113          	addi	sp,sp,-32
    800023f4:	00813c23          	sd	s0,24(sp)
    800023f8:	02010413          	addi	s0,sp,32
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    800023fc:	00050593          	mv	a1,a0
    80002400:	00200793          	li	a5,2
    80002404:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)ptr);
    Riscv::writeARegister(0, 0x02);

    __asm__ volatile("ecall");
    80002408:	00000073          	ecall
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    8000240c:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80002410:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    80002414:	fe843503          	ld	a0,-24(s0)
}
    80002418:	0005051b          	sext.w	a0,a0
    8000241c:	01813403          	ld	s0,24(sp)
    80002420:	02010113          	addi	sp,sp,32
    80002424:	00008067          	ret

0000000080002428 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void(*start_routine)(void *), void *arg) {
    80002428:	fc010113          	addi	sp,sp,-64
    8000242c:	02113c23          	sd	ra,56(sp)
    80002430:	02813823          	sd	s0,48(sp)
    80002434:	02913423          	sd	s1,40(sp)
    80002438:	03213023          	sd	s2,32(sp)
    8000243c:	01313c23          	sd	s3,24(sp)
    80002440:	04010413          	addi	s0,sp,64
    80002444:	00050913          	mv	s2,a0
    80002448:	00058493          	mv	s1,a1
    8000244c:	00060993          	mv	s3,a2
    void* volatile stack = nullptr;
    80002450:	fc043423          	sd	zero,-56(s0)
    if (start_routine) {
    80002454:	00058a63          	beqz	a1,80002468 <_Z13thread_createPP7_threadPFvPvES2_+0x40>
        stack = mem_alloc(DEFAULT_STACK_SIZE);
    80002458:	00001537          	lui	a0,0x1
    8000245c:	00000097          	auipc	ra,0x0
    80002460:	f58080e7          	jalr	-168(ra) # 800023b4 <_Z9mem_allocm>
    80002464:	fca43423          	sd	a0,-56(s0)
    }


    Riscv::writeARegister(4, (uint64)stack);
    80002468:	fc843783          	ld	a5,-56(s0)
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    8000246c:	00078713          	mv	a4,a5
    80002470:	00098693          	mv	a3,s3
    80002474:	00048613          	mv	a2,s1
    80002478:	00090593          	mv	a1,s2
    8000247c:	01100793          	li	a5,17
    80002480:	00078513          	mv	a0,a5
    Riscv::writeARegister(2, (uint64)start_routine);
    Riscv::writeARegister(1, (uint64)handle);

    Riscv::writeARegister(0, 0x11);

    __asm__ volatile("ecall");
    80002484:	00000073          	ecall
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    80002488:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    8000248c:	fcf43023          	sd	a5,-64(s0)
    return (int) a0;
    80002490:	fc043503          	ld	a0,-64(s0)
}
    80002494:	0005051b          	sext.w	a0,a0
    80002498:	03813083          	ld	ra,56(sp)
    8000249c:	03013403          	ld	s0,48(sp)
    800024a0:	02813483          	ld	s1,40(sp)
    800024a4:	02013903          	ld	s2,32(sp)
    800024a8:	01813983          	ld	s3,24(sp)
    800024ac:	04010113          	addi	sp,sp,64
    800024b0:	00008067          	ret

00000000800024b4 <_Z15thread_dispatchv>:

void thread_dispatch() {
    800024b4:	ff010113          	addi	sp,sp,-16
    800024b8:	00813423          	sd	s0,8(sp)
    800024bc:	01010413          	addi	s0,sp,16
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    800024c0:	01300793          	li	a5,19
    800024c4:	00078513          	mv	a0,a5
    Riscv::writeARegister(0, 0x13);

    __asm__ volatile("ecall");
    800024c8:	00000073          	ecall

}
    800024cc:	00813403          	ld	s0,8(sp)
    800024d0:	01010113          	addi	sp,sp,16
    800024d4:	00008067          	ret

00000000800024d8 <_Z11thread_exitv>:

int thread_exit() {
    800024d8:	fe010113          	addi	sp,sp,-32
    800024dc:	00813c23          	sd	s0,24(sp)
    800024e0:	02010413          	addi	s0,sp,32
    800024e4:	01200793          	li	a5,18
    800024e8:	00078513          	mv	a0,a5
    Riscv::writeARegister(0, 0x12);

    __asm__ volatile("ecall");
    800024ec:	00000073          	ecall
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    800024f0:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    800024f4:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    800024f8:	fe843503          	ld	a0,-24(s0)

}
    800024fc:	0005051b          	sext.w	a0,a0
    80002500:	01813403          	ld	s0,24(sp)
    80002504:	02010113          	addi	sp,sp,32
    80002508:	00008067          	ret

000000008000250c <_Z8sem_openPP4_semj>:

int sem_open(sem_t*handle, unsigned init) {
    8000250c:	fe010113          	addi	sp,sp,-32
    80002510:	00813c23          	sd	s0,24(sp)
    80002514:	02010413          	addi	s0,sp,32
    Riscv::writeARegister(2, (uint64)init);
    80002518:	02059593          	slli	a1,a1,0x20
    8000251c:	0205d593          	srli	a1,a1,0x20
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80002520:	00058613          	mv	a2,a1
    80002524:	00050593          	mv	a1,a0
    80002528:	02100793          	li	a5,33
    8000252c:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)handle);

    Riscv::writeARegister(0, 0x21);

    __asm__ volatile("ecall");
    80002530:	00000073          	ecall
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    80002534:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80002538:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    8000253c:	fe843503          	ld	a0,-24(s0)

}
    80002540:	0005051b          	sext.w	a0,a0
    80002544:	01813403          	ld	s0,24(sp)
    80002548:	02010113          	addi	sp,sp,32
    8000254c:	00008067          	ret

0000000080002550 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    80002550:	fe010113          	addi	sp,sp,-32
    80002554:	00813c23          	sd	s0,24(sp)
    80002558:	02010413          	addi	s0,sp,32
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    8000255c:	00050593          	mv	a1,a0
    80002560:	02200793          	li	a5,34
    80002564:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)handle);

    Riscv::writeARegister(0, 0x22);

    __asm__ volatile("ecall");
    80002568:	00000073          	ecall
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    8000256c:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80002570:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    80002574:	fe843503          	ld	a0,-24(s0)
}
    80002578:	0005051b          	sext.w	a0,a0
    8000257c:	01813403          	ld	s0,24(sp)
    80002580:	02010113          	addi	sp,sp,32
    80002584:	00008067          	ret

0000000080002588 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    80002588:	fe010113          	addi	sp,sp,-32
    8000258c:	00813c23          	sd	s0,24(sp)
    80002590:	02010413          	addi	s0,sp,32
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80002594:	00050593          	mv	a1,a0
    80002598:	02300793          	li	a5,35
    8000259c:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)id);

    Riscv::writeARegister(0, 0x23);

    __asm__ volatile("ecall");
    800025a0:	00000073          	ecall
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    800025a4:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    800025a8:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    800025ac:	fe843503          	ld	a0,-24(s0)
}
    800025b0:	0005051b          	sext.w	a0,a0
    800025b4:	01813403          	ld	s0,24(sp)
    800025b8:	02010113          	addi	sp,sp,32
    800025bc:	00008067          	ret

00000000800025c0 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    800025c0:	fe010113          	addi	sp,sp,-32
    800025c4:	00813c23          	sd	s0,24(sp)
    800025c8:	02010413          	addi	s0,sp,32
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    800025cc:	00050593          	mv	a1,a0
    800025d0:	02400793          	li	a5,36
    800025d4:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)id);

    Riscv::writeARegister(0, 0x24);

    __asm__ volatile("ecall");
    800025d8:	00000073          	ecall
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    800025dc:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    800025e0:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    800025e4:	fe843503          	ld	a0,-24(s0)
}
    800025e8:	0005051b          	sext.w	a0,a0
    800025ec:	01813403          	ld	s0,24(sp)
    800025f0:	02010113          	addi	sp,sp,32
    800025f4:	00008067          	ret

00000000800025f8 <_Z10time_sleepm>:

int time_sleep(time_t t) {
    800025f8:	fe010113          	addi	sp,sp,-32
    800025fc:	00813c23          	sd	s0,24(sp)
    80002600:	02010413          	addi	s0,sp,32
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80002604:	00050593          	mv	a1,a0
    80002608:	03100793          	li	a5,49
    8000260c:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)t);
    Riscv::writeARegister(0, 0x31);

    __asm__ volatile("ecall");
    80002610:	00000073          	ecall
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    80002614:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80002618:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    8000261c:	fe843503          	ld	a0,-24(s0)
}
    80002620:	0005051b          	sext.w	a0,a0
    80002624:	01813403          	ld	s0,24(sp)
    80002628:	02010113          	addi	sp,sp,32
    8000262c:	00008067          	ret

0000000080002630 <_Z4getcv>:

char getc() {
    80002630:	fe010113          	addi	sp,sp,-32
    80002634:	00113c23          	sd	ra,24(sp)
    80002638:	00813823          	sd	s0,16(sp)
    8000263c:	02010413          	addi	s0,sp,32
    static _sem* getInSem() { ensureInit(); return inSem; }
    80002640:	fffff097          	auipc	ra,0xfffff
    80002644:	be8080e7          	jalr	-1048(ra) # 80001228 <_ZN8_console10ensureInitEv>
     sem_wait(reinterpret_cast<sem_t>(_console::getInSem()));
    80002648:	00004517          	auipc	a0,0x4
    8000264c:	ba853503          	ld	a0,-1112(a0) # 800061f0 <_ZN8_console5inSemE>
    80002650:	00000097          	auipc	ra,0x0
    80002654:	f38080e7          	jalr	-200(ra) # 80002588 <_Z8sem_waitP4_sem>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    80002658:	04100793          	li	a5,65
    8000265c:	00078513          	mv	a0,a5
    Riscv::writeARegister(0, 0x41);

    __asm__ volatile("ecall");
    80002660:	00000073          	ecall
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    80002664:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80002668:	fef43423          	sd	a5,-24(s0)
    return (char) a0;
    8000266c:	fe843503          	ld	a0,-24(s0)
}
    80002670:	0ff57513          	andi	a0,a0,255
    80002674:	01813083          	ld	ra,24(sp)
    80002678:	01013403          	ld	s0,16(sp)
    8000267c:	02010113          	addi	sp,sp,32
    80002680:	00008067          	ret

0000000080002684 <_Z4putcc>:

void putc(char c) {
    80002684:	fe010113          	addi	sp,sp,-32
    80002688:	00113c23          	sd	ra,24(sp)
    8000268c:	00813823          	sd	s0,16(sp)
    80002690:	00913423          	sd	s1,8(sp)
    80002694:	02010413          	addi	s0,sp,32
    80002698:	00050493          	mv	s1,a0
    static _sem* getOutSem() { ensureInit(); return outSem; }
    8000269c:	fffff097          	auipc	ra,0xfffff
    800026a0:	b8c080e7          	jalr	-1140(ra) # 80001228 <_ZN8_console10ensureInitEv>
    sem_wait(reinterpret_cast<sem_t>(_console::getOutSem()));
    800026a4:	00004517          	auipc	a0,0x4
    800026a8:	b4453503          	ld	a0,-1212(a0) # 800061e8 <_ZN8_console6outSemE>
    800026ac:	00000097          	auipc	ra,0x0
    800026b0:	edc080e7          	jalr	-292(ra) # 80002588 <_Z8sem_waitP4_sem>
        __asm__ volatile("mv a%[reg], %[val]" :: [reg] "i" (reg_number), [val] "r" (value));
    800026b4:	00048593          	mv	a1,s1
    800026b8:	04200793          	li	a5,66
    800026bc:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)c);
    Riscv::writeARegister(0, 0x42);

    __asm__ volatile("ecall");
    800026c0:	00000073          	ecall

}
    800026c4:	01813083          	ld	ra,24(sp)
    800026c8:	01013403          	ld	s0,16(sp)
    800026cc:	00813483          	ld	s1,8(sp)
    800026d0:	02010113          	addi	sp,sp,32
    800026d4:	00008067          	ret

00000000800026d8 <_ZN6ThreadD1Ev>:
    this->myHandle = 0;
    this->body = body;
    this->arg = arg;
}

Thread::~Thread() = default;
    800026d8:	ff010113          	addi	sp,sp,-16
    800026dc:	00813423          	sd	s0,8(sp)
    800026e0:	01010413          	addi	s0,sp,16
    800026e4:	00003797          	auipc	a5,0x3
    800026e8:	bb478793          	addi	a5,a5,-1100 # 80005298 <_ZTV6Thread+0x10>
    800026ec:	00f53023          	sd	a5,0(a0)
    800026f0:	00813403          	ld	s0,8(sp)
    800026f4:	01010113          	addi	sp,sp,16
    800026f8:	00008067          	ret

00000000800026fc <_ZN6Thread7wrapperEPv>:
{
    return time_sleep(t);
}

void Thread::wrapper(void * arg)
{
    800026fc:	ff010113          	addi	sp,sp,-16
    80002700:	00113423          	sd	ra,8(sp)
    80002704:	00813023          	sd	s0,0(sp)
    80002708:	01010413          	addi	s0,sp,16
    Thread* t = (Thread*) arg;
    t->run();
    8000270c:	00053783          	ld	a5,0(a0)
    80002710:	0107b783          	ld	a5,16(a5)
    80002714:	000780e7          	jalr	a5
}
    80002718:	00813083          	ld	ra,8(sp)
    8000271c:	00013403          	ld	s0,0(sp)
    80002720:	01010113          	addi	sp,sp,16
    80002724:	00008067          	ret

0000000080002728 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init)
{
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore()
    80002728:	fe010113          	addi	sp,sp,-32
    8000272c:	00113c23          	sd	ra,24(sp)
    80002730:	00813823          	sd	s0,16(sp)
    80002734:	00913423          	sd	s1,8(sp)
    80002738:	02010413          	addi	s0,sp,32
    8000273c:	00050493          	mv	s1,a0
    80002740:	00003797          	auipc	a5,0x3
    80002744:	b8078793          	addi	a5,a5,-1152 # 800052c0 <_ZTV9Semaphore+0x10>
    80002748:	00f53023          	sd	a5,0(a0)
{
    if (!myHandle) return;
    8000274c:	00853503          	ld	a0,8(a0)
    80002750:	00050863          	beqz	a0,80002760 <_ZN9SemaphoreD1Ev+0x38>
    sem_close(myHandle);
    80002754:	00000097          	auipc	ra,0x0
    80002758:	dfc080e7          	jalr	-516(ra) # 80002550 <_Z9sem_closeP4_sem>
    myHandle = 0;
    8000275c:	0004b423          	sd	zero,8(s1)
}
    80002760:	01813083          	ld	ra,24(sp)
    80002764:	01013403          	ld	s0,16(sp)
    80002768:	00813483          	ld	s1,8(sp)
    8000276c:	02010113          	addi	sp,sp,32
    80002770:	00008067          	ret

0000000080002774 <_Znwm>:
void* operator new(size_t size) {
    80002774:	ff010113          	addi	sp,sp,-16
    80002778:	00113423          	sd	ra,8(sp)
    8000277c:	00813023          	sd	s0,0(sp)
    80002780:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002784:	00000097          	auipc	ra,0x0
    80002788:	c30080e7          	jalr	-976(ra) # 800023b4 <_Z9mem_allocm>
}
    8000278c:	00813083          	ld	ra,8(sp)
    80002790:	00013403          	ld	s0,0(sp)
    80002794:	01010113          	addi	sp,sp,16
    80002798:	00008067          	ret

000000008000279c <_ZdlPv>:
void operator delete(void* ptr) {
    8000279c:	ff010113          	addi	sp,sp,-16
    800027a0:	00113423          	sd	ra,8(sp)
    800027a4:	00813023          	sd	s0,0(sp)
    800027a8:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    800027ac:	00000097          	auipc	ra,0x0
    800027b0:	c44080e7          	jalr	-956(ra) # 800023f0 <_Z8mem_freePv>
}
    800027b4:	00813083          	ld	ra,8(sp)
    800027b8:	00013403          	ld	s0,0(sp)
    800027bc:	01010113          	addi	sp,sp,16
    800027c0:	00008067          	ret

00000000800027c4 <_ZN6ThreadD0Ev>:
Thread::~Thread() = default;
    800027c4:	fe010113          	addi	sp,sp,-32
    800027c8:	00113c23          	sd	ra,24(sp)
    800027cc:	00813823          	sd	s0,16(sp)
    800027d0:	00913423          	sd	s1,8(sp)
    800027d4:	02010413          	addi	s0,sp,32
    800027d8:	00050493          	mv	s1,a0
    800027dc:	00000097          	auipc	ra,0x0
    800027e0:	efc080e7          	jalr	-260(ra) # 800026d8 <_ZN6ThreadD1Ev>
    800027e4:	00048513          	mv	a0,s1
    800027e8:	00000097          	auipc	ra,0x0
    800027ec:	fb4080e7          	jalr	-76(ra) # 8000279c <_ZdlPv>
    800027f0:	01813083          	ld	ra,24(sp)
    800027f4:	01013403          	ld	s0,16(sp)
    800027f8:	00813483          	ld	s1,8(sp)
    800027fc:	02010113          	addi	sp,sp,32
    80002800:	00008067          	ret

0000000080002804 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore()
    80002804:	fe010113          	addi	sp,sp,-32
    80002808:	00113c23          	sd	ra,24(sp)
    8000280c:	00813823          	sd	s0,16(sp)
    80002810:	00913423          	sd	s1,8(sp)
    80002814:	02010413          	addi	s0,sp,32
    80002818:	00050493          	mv	s1,a0
}
    8000281c:	00000097          	auipc	ra,0x0
    80002820:	f0c080e7          	jalr	-244(ra) # 80002728 <_ZN9SemaphoreD1Ev>
    80002824:	00048513          	mv	a0,s1
    80002828:	00000097          	auipc	ra,0x0
    8000282c:	f74080e7          	jalr	-140(ra) # 8000279c <_ZdlPv>
    80002830:	01813083          	ld	ra,24(sp)
    80002834:	01013403          	ld	s0,16(sp)
    80002838:	00813483          	ld	s1,8(sp)
    8000283c:	02010113          	addi	sp,sp,32
    80002840:	00008067          	ret

0000000080002844 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg)
    80002844:	ff010113          	addi	sp,sp,-16
    80002848:	00813423          	sd	s0,8(sp)
    8000284c:	01010413          	addi	s0,sp,16
    80002850:	00003797          	auipc	a5,0x3
    80002854:	a4878793          	addi	a5,a5,-1464 # 80005298 <_ZTV6Thread+0x10>
    80002858:	00f53023          	sd	a5,0(a0)
    this->myHandle = 0;
    8000285c:	00053423          	sd	zero,8(a0)
    this->body = body;
    80002860:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    80002864:	00c53c23          	sd	a2,24(a0)
}
    80002868:	00813403          	ld	s0,8(sp)
    8000286c:	01010113          	addi	sp,sp,16
    80002870:	00008067          	ret

0000000080002874 <_ZN6Thread5startEv>:
{
    80002874:	ff010113          	addi	sp,sp,-16
    80002878:	00113423          	sd	ra,8(sp)
    8000287c:	00813023          	sd	s0,0(sp)
    80002880:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, body, arg);
    80002884:	01853603          	ld	a2,24(a0)
    80002888:	01053583          	ld	a1,16(a0)
    8000288c:	00850513          	addi	a0,a0,8
    80002890:	00000097          	auipc	ra,0x0
    80002894:	b98080e7          	jalr	-1128(ra) # 80002428 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80002898:	00813083          	ld	ra,8(sp)
    8000289c:	00013403          	ld	s0,0(sp)
    800028a0:	01010113          	addi	sp,sp,16
    800028a4:	00008067          	ret

00000000800028a8 <_ZN6Thread8dispatchEv>:
{
    800028a8:	ff010113          	addi	sp,sp,-16
    800028ac:	00113423          	sd	ra,8(sp)
    800028b0:	00813023          	sd	s0,0(sp)
    800028b4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800028b8:	00000097          	auipc	ra,0x0
    800028bc:	bfc080e7          	jalr	-1028(ra) # 800024b4 <_Z15thread_dispatchv>
}
    800028c0:	00813083          	ld	ra,8(sp)
    800028c4:	00013403          	ld	s0,0(sp)
    800028c8:	01010113          	addi	sp,sp,16
    800028cc:	00008067          	ret

00000000800028d0 <_ZN6Thread5sleepEm>:
{
    800028d0:	ff010113          	addi	sp,sp,-16
    800028d4:	00113423          	sd	ra,8(sp)
    800028d8:	00813023          	sd	s0,0(sp)
    800028dc:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    800028e0:	00000097          	auipc	ra,0x0
    800028e4:	d18080e7          	jalr	-744(ra) # 800025f8 <_Z10time_sleepm>
}
    800028e8:	00813083          	ld	ra,8(sp)
    800028ec:	00013403          	ld	s0,0(sp)
    800028f0:	01010113          	addi	sp,sp,16
    800028f4:	00008067          	ret

00000000800028f8 <_ZN14PeriodicThread3runEv>:
{
    this->period = period;
}

void PeriodicThread::run()
{
    800028f8:	fe010113          	addi	sp,sp,-32
    800028fc:	00113c23          	sd	ra,24(sp)
    80002900:	00813823          	sd	s0,16(sp)
    80002904:	00913423          	sd	s1,8(sp)
    80002908:	02010413          	addi	s0,sp,32
    8000290c:	00050493          	mv	s1,a0
    80002910:	01c0006f          	j	8000292c <_ZN14PeriodicThread3runEv+0x34>
    while(this->period != (time_t) -1){
        Thread::sleep(period);
    80002914:	00000097          	auipc	ra,0x0
    80002918:	fbc080e7          	jalr	-68(ra) # 800028d0 <_ZN6Thread5sleepEm>
        periodicActivation();
    8000291c:	0004b783          	ld	a5,0(s1)
    80002920:	0187b783          	ld	a5,24(a5)
    80002924:	00048513          	mv	a0,s1
    80002928:	000780e7          	jalr	a5
    while(this->period != (time_t) -1){
    8000292c:	0204b503          	ld	a0,32(s1)
    80002930:	fff00793          	li	a5,-1
    80002934:	fef510e3          	bne	a0,a5,80002914 <_ZN14PeriodicThread3runEv+0x1c>
    }
}
    80002938:	01813083          	ld	ra,24(sp)
    8000293c:	01013403          	ld	s0,16(sp)
    80002940:	00813483          	ld	s1,8(sp)
    80002944:	02010113          	addi	sp,sp,32
    80002948:	00008067          	ret

000000008000294c <_ZN6ThreadC1Ev>:
Thread::Thread()
    8000294c:	ff010113          	addi	sp,sp,-16
    80002950:	00813423          	sd	s0,8(sp)
    80002954:	01010413          	addi	s0,sp,16
    80002958:	00003797          	auipc	a5,0x3
    8000295c:	94078793          	addi	a5,a5,-1728 # 80005298 <_ZTV6Thread+0x10>
    80002960:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80002964:	00053423          	sd	zero,8(a0)
    body = wrapper;
    80002968:	00000797          	auipc	a5,0x0
    8000296c:	d9478793          	addi	a5,a5,-620 # 800026fc <_ZN6Thread7wrapperEPv>
    80002970:	00f53823          	sd	a5,16(a0)
    arg = this;
    80002974:	00a53c23          	sd	a0,24(a0)
}
    80002978:	00813403          	ld	s0,8(sp)
    8000297c:	01010113          	addi	sp,sp,16
    80002980:	00008067          	ret

0000000080002984 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init)
    80002984:	ff010113          	addi	sp,sp,-16
    80002988:	00113423          	sd	ra,8(sp)
    8000298c:	00813023          	sd	s0,0(sp)
    80002990:	01010413          	addi	s0,sp,16
    80002994:	00003797          	auipc	a5,0x3
    80002998:	92c78793          	addi	a5,a5,-1748 # 800052c0 <_ZTV9Semaphore+0x10>
    8000299c:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    800029a0:	00850513          	addi	a0,a0,8
    800029a4:	00000097          	auipc	ra,0x0
    800029a8:	b68080e7          	jalr	-1176(ra) # 8000250c <_Z8sem_openPP4_semj>
}
    800029ac:	00813083          	ld	ra,8(sp)
    800029b0:	00013403          	ld	s0,0(sp)
    800029b4:	01010113          	addi	sp,sp,16
    800029b8:	00008067          	ret

00000000800029bc <_ZN9Semaphore4waitEv>:
{
    800029bc:	ff010113          	addi	sp,sp,-16
    800029c0:	00113423          	sd	ra,8(sp)
    800029c4:	00813023          	sd	s0,0(sp)
    800029c8:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800029cc:	00853503          	ld	a0,8(a0)
    800029d0:	00000097          	auipc	ra,0x0
    800029d4:	bb8080e7          	jalr	-1096(ra) # 80002588 <_Z8sem_waitP4_sem>
}
    800029d8:	00813083          	ld	ra,8(sp)
    800029dc:	00013403          	ld	s0,0(sp)
    800029e0:	01010113          	addi	sp,sp,16
    800029e4:	00008067          	ret

00000000800029e8 <_ZN9Semaphore6signalEv>:
{
    800029e8:	ff010113          	addi	sp,sp,-16
    800029ec:	00113423          	sd	ra,8(sp)
    800029f0:	00813023          	sd	s0,0(sp)
    800029f4:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800029f8:	00853503          	ld	a0,8(a0)
    800029fc:	00000097          	auipc	ra,0x0
    80002a00:	bc4080e7          	jalr	-1084(ra) # 800025c0 <_Z10sem_signalP4_sem>
}
    80002a04:	00813083          	ld	ra,8(sp)
    80002a08:	00013403          	ld	s0,0(sp)
    80002a0c:	01010113          	addi	sp,sp,16
    80002a10:	00008067          	ret

0000000080002a14 <_ZN14PeriodicThread9terminateEv>:
{
    80002a14:	ff010113          	addi	sp,sp,-16
    80002a18:	00813423          	sd	s0,8(sp)
    80002a1c:	01010413          	addi	s0,sp,16
    this->period = (time_t) -1;
    80002a20:	fff00793          	li	a5,-1
    80002a24:	02f53023          	sd	a5,32(a0)
}
    80002a28:	00813403          	ld	s0,8(sp)
    80002a2c:	01010113          	addi	sp,sp,16
    80002a30:	00008067          	ret

0000000080002a34 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread()
    80002a34:	fe010113          	addi	sp,sp,-32
    80002a38:	00113c23          	sd	ra,24(sp)
    80002a3c:	00813823          	sd	s0,16(sp)
    80002a40:	00913423          	sd	s1,8(sp)
    80002a44:	01213023          	sd	s2,0(sp)
    80002a48:	02010413          	addi	s0,sp,32
    80002a4c:	00050493          	mv	s1,a0
    80002a50:	00058913          	mv	s2,a1
    80002a54:	00000097          	auipc	ra,0x0
    80002a58:	ef8080e7          	jalr	-264(ra) # 8000294c <_ZN6ThreadC1Ev>
    80002a5c:	00003797          	auipc	a5,0x3
    80002a60:	88478793          	addi	a5,a5,-1916 # 800052e0 <_ZTV14PeriodicThread+0x10>
    80002a64:	00f4b023          	sd	a5,0(s1)
    this->period = period;
    80002a68:	0324b023          	sd	s2,32(s1)
}
    80002a6c:	01813083          	ld	ra,24(sp)
    80002a70:	01013403          	ld	s0,16(sp)
    80002a74:	00813483          	ld	s1,8(sp)
    80002a78:	00013903          	ld	s2,0(sp)
    80002a7c:	02010113          	addi	sp,sp,32
    80002a80:	00008067          	ret

0000000080002a84 <_ZN7Console4getcEv>:

char Console::getc()
{
    80002a84:	ff010113          	addi	sp,sp,-16
    80002a88:	00113423          	sd	ra,8(sp)
    80002a8c:	00813023          	sd	s0,0(sp)
    80002a90:	01010413          	addi	s0,sp,16
    return ::getc();
    80002a94:	00000097          	auipc	ra,0x0
    80002a98:	b9c080e7          	jalr	-1124(ra) # 80002630 <_Z4getcv>
}
    80002a9c:	00813083          	ld	ra,8(sp)
    80002aa0:	00013403          	ld	s0,0(sp)
    80002aa4:	01010113          	addi	sp,sp,16
    80002aa8:	00008067          	ret

0000000080002aac <_ZN7Console4putcEc>:

void Console::putc(char c)
{
    80002aac:	ff010113          	addi	sp,sp,-16
    80002ab0:	00113423          	sd	ra,8(sp)
    80002ab4:	00813023          	sd	s0,0(sp)
    80002ab8:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002abc:	00000097          	auipc	ra,0x0
    80002ac0:	bc8080e7          	jalr	-1080(ra) # 80002684 <_Z4putcc>
}
    80002ac4:	00813083          	ld	ra,8(sp)
    80002ac8:	00013403          	ld	s0,0(sp)
    80002acc:	01010113          	addi	sp,sp,16
    80002ad0:	00008067          	ret

0000000080002ad4 <_ZN6Thread3runEv>:
    static void dispatch();
    static int sleep(time_t);

protected:
    Thread();
    virtual void run() {}
    80002ad4:	ff010113          	addi	sp,sp,-16
    80002ad8:	00813423          	sd	s0,8(sp)
    80002adc:	01010413          	addi	s0,sp,16
    80002ae0:	00813403          	ld	s0,8(sp)
    80002ae4:	01010113          	addi	sp,sp,16
    80002ae8:	00008067          	ret

0000000080002aec <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void terminate();

protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    80002aec:	ff010113          	addi	sp,sp,-16
    80002af0:	00813423          	sd	s0,8(sp)
    80002af4:	01010413          	addi	s0,sp,16
    80002af8:	00813403          	ld	s0,8(sp)
    80002afc:	01010113          	addi	sp,sp,16
    80002b00:	00008067          	ret

0000000080002b04 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    80002b04:	ff010113          	addi	sp,sp,-16
    80002b08:	00113423          	sd	ra,8(sp)
    80002b0c:	00813023          	sd	s0,0(sp)
    80002b10:	01010413          	addi	s0,sp,16
    80002b14:	00002797          	auipc	a5,0x2
    80002b18:	7cc78793          	addi	a5,a5,1996 # 800052e0 <_ZTV14PeriodicThread+0x10>
    80002b1c:	00f53023          	sd	a5,0(a0)
    80002b20:	00000097          	auipc	ra,0x0
    80002b24:	bb8080e7          	jalr	-1096(ra) # 800026d8 <_ZN6ThreadD1Ev>
    80002b28:	00813083          	ld	ra,8(sp)
    80002b2c:	00013403          	ld	s0,0(sp)
    80002b30:	01010113          	addi	sp,sp,16
    80002b34:	00008067          	ret

0000000080002b38 <_ZN14PeriodicThreadD0Ev>:
    80002b38:	fe010113          	addi	sp,sp,-32
    80002b3c:	00113c23          	sd	ra,24(sp)
    80002b40:	00813823          	sd	s0,16(sp)
    80002b44:	00913423          	sd	s1,8(sp)
    80002b48:	02010413          	addi	s0,sp,32
    80002b4c:	00050493          	mv	s1,a0
    80002b50:	00002797          	auipc	a5,0x2
    80002b54:	79078793          	addi	a5,a5,1936 # 800052e0 <_ZTV14PeriodicThread+0x10>
    80002b58:	00f53023          	sd	a5,0(a0)
    80002b5c:	00000097          	auipc	ra,0x0
    80002b60:	b7c080e7          	jalr	-1156(ra) # 800026d8 <_ZN6ThreadD1Ev>
    80002b64:	00048513          	mv	a0,s1
    80002b68:	00000097          	auipc	ra,0x0
    80002b6c:	c34080e7          	jalr	-972(ra) # 8000279c <_ZdlPv>
    80002b70:	01813083          	ld	ra,24(sp)
    80002b74:	01013403          	ld	s0,16(sp)
    80002b78:	00813483          	ld	s1,8(sp)
    80002b7c:	02010113          	addi	sp,sp,32
    80002b80:	00008067          	ret

0000000080002b84 <_ZN7_thread13threadWrapperEv>:
        context.ra = 0;
        context.sp = 0;
    }
}

void _thread::threadWrapper(){
    80002b84:	ff010113          	addi	sp,sp,-16
    80002b88:	00113423          	sd	ra,8(sp)
    80002b8c:	00813023          	sd	s0,0(sp)
    80002b90:	01010413          	addi	s0,sp,16

Riscv::popSppSpie();
    80002b94:	fffff097          	auipc	ra,0xfffff
    80002b98:	054080e7          	jalr	84(ra) # 80001be8 <_ZN5Riscv10popSppSpieEv>
if (running->body)running -> body(running->args);
    80002b9c:	00003717          	auipc	a4,0x3
    80002ba0:	69473703          	ld	a4,1684(a4) # 80006230 <_ZN7_thread7runningE>
    80002ba4:	01073783          	ld	a5,16(a4)
    80002ba8:	00078663          	beqz	a5,80002bb4 <_ZN7_thread13threadWrapperEv+0x30>
    80002bac:	01873503          	ld	a0,24(a4)
    80002bb0:	000780e7          	jalr	a5
    void setFinished(bool finished){_thread::finished = finished;};
    80002bb4:	00003797          	auipc	a5,0x3
    80002bb8:	67c7b783          	ld	a5,1660(a5) # 80006230 <_ZN7_thread7runningE>
    80002bbc:	00100713          	li	a4,1
    80002bc0:	04e780a3          	sb	a4,65(a5)

running -> setFinished(true);

thread_dispatch();
    80002bc4:	00000097          	auipc	ra,0x0
    80002bc8:	8f0080e7          	jalr	-1808(ra) # 800024b4 <_Z15thread_dispatchv>
}
    80002bcc:	00813083          	ld	ra,8(sp)
    80002bd0:	00013403          	ld	s0,0(sp)
    80002bd4:	01010113          	addi	sp,sp,16
    80002bd8:	00008067          	ret

0000000080002bdc <_ZN7_thread8dispatchEv>:
void _thread::dispatch() {
    80002bdc:	fe010113          	addi	sp,sp,-32
    80002be0:	00113c23          	sd	ra,24(sp)
    80002be4:	00813823          	sd	s0,16(sp)
    80002be8:	00913423          	sd	s1,8(sp)
    80002bec:	02010413          	addi	s0,sp,32
    _thread* old = running;
    80002bf0:	00003497          	auipc	s1,0x3
    80002bf4:	6404b483          	ld	s1,1600(s1) # 80006230 <_ZN7_thread7runningE>
    if (old && !old->finished && old ->isReady) {
    80002bf8:	04048863          	beqz	s1,80002c48 <_ZN7_thread8dispatchEv+0x6c>
    80002bfc:	0414c783          	lbu	a5,65(s1)
    80002c00:	04079463          	bnez	a5,80002c48 <_ZN7_thread8dispatchEv+0x6c>
    80002c04:	0404c783          	lbu	a5,64(s1)
    80002c08:	04078063          	beqz	a5,80002c48 <_ZN7_thread8dispatchEv+0x6c>
    80002c0c:	00003797          	auipc	a5,0x3
    80002c10:	60c7c783          	lbu	a5,1548(a5) # 80006218 <_ZGVZN9Scheduler8instanceEvE8instance>
    80002c14:	02079063          	bnez	a5,80002c34 <_ZN7_thread8dispatchEv+0x58>
    Scheduler():head(nullptr), tail(nullptr){};
    80002c18:	00003797          	auipc	a5,0x3
    80002c1c:	64878793          	addi	a5,a5,1608 # 80006260 <_ZZN9Scheduler8instanceEvE8instance>
    80002c20:	0007b023          	sd	zero,0(a5)
    80002c24:	0007b423          	sd	zero,8(a5)
    static Scheduler& instance(){static Scheduler instance; return instance;}
    80002c28:	00100793          	li	a5,1
    80002c2c:	00003717          	auipc	a4,0x3
    80002c30:	5ef70623          	sb	a5,1516(a4) # 80006218 <_ZGVZN9Scheduler8instanceEvE8instance>
        Scheduler::instance().put(old);
    80002c34:	00048593          	mv	a1,s1
    80002c38:	00003517          	auipc	a0,0x3
    80002c3c:	62850513          	addi	a0,a0,1576 # 80006260 <_ZZN9Scheduler8instanceEvE8instance>
    80002c40:	fffff097          	auipc	ra,0xfffff
    80002c44:	4ac080e7          	jalr	1196(ra) # 800020ec <_ZN9Scheduler3putEP7_thread>
    80002c48:	00003797          	auipc	a5,0x3
    80002c4c:	5d07c783          	lbu	a5,1488(a5) # 80006218 <_ZGVZN9Scheduler8instanceEvE8instance>
    80002c50:	02079063          	bnez	a5,80002c70 <_ZN7_thread8dispatchEv+0x94>
    Scheduler():head(nullptr), tail(nullptr){};
    80002c54:	00003797          	auipc	a5,0x3
    80002c58:	60c78793          	addi	a5,a5,1548 # 80006260 <_ZZN9Scheduler8instanceEvE8instance>
    80002c5c:	0007b023          	sd	zero,0(a5)
    80002c60:	0007b423          	sd	zero,8(a5)
    static Scheduler& instance(){static Scheduler instance; return instance;}
    80002c64:	00100793          	li	a5,1
    80002c68:	00003717          	auipc	a4,0x3
    80002c6c:	5af70823          	sb	a5,1456(a4) # 80006218 <_ZGVZN9Scheduler8instanceEvE8instance>
    running = Scheduler::instance().get();
    80002c70:	00003517          	auipc	a0,0x3
    80002c74:	5f050513          	addi	a0,a0,1520 # 80006260 <_ZZN9Scheduler8instanceEvE8instance>
    80002c78:	fffff097          	auipc	ra,0xfffff
    80002c7c:	4b0080e7          	jalr	1200(ra) # 80002128 <_ZN9Scheduler3getEv>
    80002c80:	00003797          	auipc	a5,0x3
    80002c84:	5aa7b823          	sd	a0,1456(a5) # 80006230 <_ZN7_thread7runningE>
    if (old != running) {
    80002c88:	00a48a63          	beq	s1,a0,80002c9c <_ZN7_thread8dispatchEv+0xc0>
        switchContext(&old->context, &running->context);
    80002c8c:	02850593          	addi	a1,a0,40
    80002c90:	02848513          	addi	a0,s1,40
    80002c94:	ffffe097          	auipc	ra,0xffffe
    80002c98:	47c080e7          	jalr	1148(ra) # 80001110 <_ZN7_thread13switchContextEPNS_7ContextES1_>
}
    80002c9c:	01813083          	ld	ra,24(sp)
    80002ca0:	01013403          	ld	s0,16(sp)
    80002ca4:	00813483          	ld	s1,8(sp)
    80002ca8:	02010113          	addi	sp,sp,32
    80002cac:	00008067          	ret

0000000080002cb0 <_ZN7_thread10time_sleepEm>:
    if (n == 0) return;
    80002cb0:	08058663          	beqz	a1,80002d3c <_ZN7_thread10time_sleepEm+0x8c>
void _thread::time_sleep(time_t n) {
    80002cb4:	ff010113          	addi	sp,sp,-16
    80002cb8:	00113423          	sd	ra,8(sp)
    80002cbc:	00813023          	sd	s0,0(sp)
    80002cc0:	01010413          	addi	s0,sp,16
    _thread* curr = sleepingHead;
    80002cc4:	00003797          	auipc	a5,0x3
    80002cc8:	55c7b783          	ld	a5,1372(a5) # 80006220 <_ZN7_thread12sleepingHeadE>
    _thread* prev = nullptr;
    80002ccc:	00000693          	li	a3,0
    while (curr && n >= curr->timeSleeping) {
    80002cd0:	00078e63          	beqz	a5,80002cec <_ZN7_thread10time_sleepEm+0x3c>
    80002cd4:	0487b703          	ld	a4,72(a5)
    80002cd8:	00e5ea63          	bltu	a1,a4,80002cec <_ZN7_thread10time_sleepEm+0x3c>
        n -= curr->timeSleeping;
    80002cdc:	40e585b3          	sub	a1,a1,a4
        prev = curr;
    80002ce0:	00078693          	mv	a3,a5
        curr = curr->waitnext;
    80002ce4:	0087b783          	ld	a5,8(a5)
    while (curr && n >= curr->timeSleeping) {
    80002ce8:	fe9ff06f          	j	80002cd0 <_ZN7_thread10time_sleepEm+0x20>
    _thread::running->timeSleeping = n;
    80002cec:	00003717          	auipc	a4,0x3
    80002cf0:	54473703          	ld	a4,1348(a4) # 80006230 <_ZN7_thread7runningE>
    80002cf4:	04b73423          	sd	a1,72(a4)
    _thread::running->waitnext = curr;
    80002cf8:	00f73423          	sd	a5,8(a4)
    if (!prev) {
    80002cfc:	02068a63          	beqz	a3,80002d30 <_ZN7_thread10time_sleepEm+0x80>
        prev->waitnext = _thread::running;
    80002d00:	00e6b423          	sd	a4,8(a3)
    if (curr) {
    80002d04:	00078863          	beqz	a5,80002d14 <_ZN7_thread10time_sleepEm+0x64>
        curr->timeSleeping -= n;
    80002d08:	0487b683          	ld	a3,72(a5)
    80002d0c:	40b685b3          	sub	a1,a3,a1
    80002d10:	04b7b423          	sd	a1,72(a5)
    _thread::running->isReady = false;
    80002d14:	04070023          	sb	zero,64(a4)
    _thread::dispatch();
    80002d18:	00000097          	auipc	ra,0x0
    80002d1c:	ec4080e7          	jalr	-316(ra) # 80002bdc <_ZN7_thread8dispatchEv>
}
    80002d20:	00813083          	ld	ra,8(sp)
    80002d24:	00013403          	ld	s0,0(sp)
    80002d28:	01010113          	addi	sp,sp,16
    80002d2c:	00008067          	ret
        sleepingHead = _thread::running;
    80002d30:	00003697          	auipc	a3,0x3
    80002d34:	4ee6b823          	sd	a4,1264(a3) # 80006220 <_ZN7_thread12sleepingHeadE>
    80002d38:	fcdff06f          	j	80002d04 <_ZN7_thread10time_sleepEm+0x54>
    80002d3c:	00008067          	ret

0000000080002d40 <_ZN7_threadC1EPFvPvES0_S0_m>:
_thread::_thread(Body body, void* args, void* stack_space ,uint64 time): next(nullptr), waitnext(nullptr), body(body), args(args), stack((uint64*)stack_space),
    80002d40:	ff010113          	addi	sp,sp,-16
    80002d44:	00813423          	sd	s0,8(sp)
    80002d48:	01010413          	addi	s0,sp,16
                                                                       timeSlice(time), isReady(true), finished(false), semStatus(0), timeSleeping(0) {
    80002d4c:	00053023          	sd	zero,0(a0)
    80002d50:	00053423          	sd	zero,8(a0)
    80002d54:	00b53823          	sd	a1,16(a0)
    80002d58:	00c53c23          	sd	a2,24(a0)
    80002d5c:	02d53023          	sd	a3,32(a0)
    80002d60:	02e53c23          	sd	a4,56(a0)
    80002d64:	00100793          	li	a5,1
    80002d68:	04f50023          	sb	a5,64(a0)
    80002d6c:	040500a3          	sb	zero,65(a0)
    80002d70:	04052223          	sw	zero,68(a0)
    80002d74:	04053423          	sd	zero,72(a0)
    if (body != nullptr) {
    80002d78:	02058663          	beqz	a1,80002da4 <_ZN7_threadC1EPFvPvES0_S0_m+0x64>
        context.ra = (uint64)&threadWrapper;
    80002d7c:	00000797          	auipc	a5,0x0
    80002d80:	e0878793          	addi	a5,a5,-504 # 80002b84 <_ZN7_thread13threadWrapperEv>
    80002d84:	02f53423          	sd	a5,40(a0)
        context.sp = ((uint64)stack_space + DEFAULT_STACK_SIZE) & ~0xFUL;
    80002d88:	000017b7          	lui	a5,0x1
    80002d8c:	00f686b3          	add	a3,a3,a5
    80002d90:	ff06f693          	andi	a3,a3,-16
    80002d94:	02d53823          	sd	a3,48(a0)
}
    80002d98:	00813403          	ld	s0,8(sp)
    80002d9c:	01010113          	addi	sp,sp,16
    80002da0:	00008067          	ret
        context.ra = 0;
    80002da4:	02053423          	sd	zero,40(a0)
        context.sp = 0;
    80002da8:	02053823          	sd	zero,48(a0)
}
    80002dac:	fedff06f          	j	80002d98 <_ZN7_threadC1EPFvPvES0_S0_m+0x58>

0000000080002db0 <_ZN7_thread12createThreadEPFvPvES0_S0_>:
_thread* _thread::createThread(Body body, void* args, void* stack) {
    80002db0:	fd010113          	addi	sp,sp,-48
    80002db4:	02113423          	sd	ra,40(sp)
    80002db8:	02813023          	sd	s0,32(sp)
    80002dbc:	00913c23          	sd	s1,24(sp)
    80002dc0:	01213823          	sd	s2,16(sp)
    80002dc4:	01313423          	sd	s3,8(sp)
    80002dc8:	01413023          	sd	s4,0(sp)
    80002dcc:	03010413          	addi	s0,sp,48
    80002dd0:	00050913          	mv	s2,a0
    80002dd4:	00058993          	mv	s3,a1
    80002dd8:	00060a13          	mv	s4,a2
		void* ptr = MemoryAllocator::kmalloc(size);
    80002ddc:	05000513          	li	a0,80
    80002de0:	fffff097          	auipc	ra,0xfffff
    80002de4:	b08080e7          	jalr	-1272(ra) # 800018e8 <_ZN15MemoryAllocator7kmallocEm>
    80002de8:	00050493          	mv	s1,a0
    return new _thread(body, args, stack, DEFAULT_TIME_SLICE);
    80002dec:	00200713          	li	a4,2
    80002df0:	000a0693          	mv	a3,s4
    80002df4:	00098613          	mv	a2,s3
    80002df8:	00090593          	mv	a1,s2
    80002dfc:	00000097          	auipc	ra,0x0
    80002e00:	f44080e7          	jalr	-188(ra) # 80002d40 <_ZN7_threadC1EPFvPvES0_S0_m>
}
    80002e04:	00048513          	mv	a0,s1
    80002e08:	02813083          	ld	ra,40(sp)
    80002e0c:	02013403          	ld	s0,32(sp)
    80002e10:	01813483          	ld	s1,24(sp)
    80002e14:	01013903          	ld	s2,16(sp)
    80002e18:	00813983          	ld	s3,8(sp)
    80002e1c:	00013a03          	ld	s4,0(sp)
    80002e20:	03010113          	addi	sp,sp,48
    80002e24:	00008067          	ret

0000000080002e28 <start>:
    80002e28:	ff010113          	addi	sp,sp,-16
    80002e2c:	00813423          	sd	s0,8(sp)
    80002e30:	01010413          	addi	s0,sp,16
    80002e34:	300027f3          	csrr	a5,mstatus
    80002e38:	ffffe737          	lui	a4,0xffffe
    80002e3c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff732f>
    80002e40:	00e7f7b3          	and	a5,a5,a4
    80002e44:	00001737          	lui	a4,0x1
    80002e48:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002e4c:	00e7e7b3          	or	a5,a5,a4
    80002e50:	30079073          	csrw	mstatus,a5
    80002e54:	00000797          	auipc	a5,0x0
    80002e58:	16078793          	addi	a5,a5,352 # 80002fb4 <system_main>
    80002e5c:	34179073          	csrw	mepc,a5
    80002e60:	00000793          	li	a5,0
    80002e64:	18079073          	csrw	satp,a5
    80002e68:	000107b7          	lui	a5,0x10
    80002e6c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002e70:	30279073          	csrw	medeleg,a5
    80002e74:	30379073          	csrw	mideleg,a5
    80002e78:	104027f3          	csrr	a5,sie
    80002e7c:	2227e793          	ori	a5,a5,546
    80002e80:	10479073          	csrw	sie,a5
    80002e84:	fff00793          	li	a5,-1
    80002e88:	00a7d793          	srli	a5,a5,0xa
    80002e8c:	3b079073          	csrw	pmpaddr0,a5
    80002e90:	00f00793          	li	a5,15
    80002e94:	3a079073          	csrw	pmpcfg0,a5
    80002e98:	f14027f3          	csrr	a5,mhartid
    80002e9c:	0200c737          	lui	a4,0x200c
    80002ea0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002ea4:	0007869b          	sext.w	a3,a5
    80002ea8:	00269713          	slli	a4,a3,0x2
    80002eac:	000f4637          	lui	a2,0xf4
    80002eb0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002eb4:	00d70733          	add	a4,a4,a3
    80002eb8:	0037979b          	slliw	a5,a5,0x3
    80002ebc:	020046b7          	lui	a3,0x2004
    80002ec0:	00d787b3          	add	a5,a5,a3
    80002ec4:	00c585b3          	add	a1,a1,a2
    80002ec8:	00371693          	slli	a3,a4,0x3
    80002ecc:	00003717          	auipc	a4,0x3
    80002ed0:	3a470713          	addi	a4,a4,932 # 80006270 <timer_scratch>
    80002ed4:	00b7b023          	sd	a1,0(a5)
    80002ed8:	00d70733          	add	a4,a4,a3
    80002edc:	00f73c23          	sd	a5,24(a4)
    80002ee0:	02c73023          	sd	a2,32(a4)
    80002ee4:	34071073          	csrw	mscratch,a4
    80002ee8:	00000797          	auipc	a5,0x0
    80002eec:	6e878793          	addi	a5,a5,1768 # 800035d0 <timervec>
    80002ef0:	30579073          	csrw	mtvec,a5
    80002ef4:	300027f3          	csrr	a5,mstatus
    80002ef8:	0087e793          	ori	a5,a5,8
    80002efc:	30079073          	csrw	mstatus,a5
    80002f00:	304027f3          	csrr	a5,mie
    80002f04:	0807e793          	ori	a5,a5,128
    80002f08:	30479073          	csrw	mie,a5
    80002f0c:	f14027f3          	csrr	a5,mhartid
    80002f10:	0007879b          	sext.w	a5,a5
    80002f14:	00078213          	mv	tp,a5
    80002f18:	30200073          	mret
    80002f1c:	00813403          	ld	s0,8(sp)
    80002f20:	01010113          	addi	sp,sp,16
    80002f24:	00008067          	ret

0000000080002f28 <timerinit>:
    80002f28:	ff010113          	addi	sp,sp,-16
    80002f2c:	00813423          	sd	s0,8(sp)
    80002f30:	01010413          	addi	s0,sp,16
    80002f34:	f14027f3          	csrr	a5,mhartid
    80002f38:	0200c737          	lui	a4,0x200c
    80002f3c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002f40:	0007869b          	sext.w	a3,a5
    80002f44:	00269713          	slli	a4,a3,0x2
    80002f48:	000f4637          	lui	a2,0xf4
    80002f4c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002f50:	00d70733          	add	a4,a4,a3
    80002f54:	0037979b          	slliw	a5,a5,0x3
    80002f58:	020046b7          	lui	a3,0x2004
    80002f5c:	00d787b3          	add	a5,a5,a3
    80002f60:	00c585b3          	add	a1,a1,a2
    80002f64:	00371693          	slli	a3,a4,0x3
    80002f68:	00003717          	auipc	a4,0x3
    80002f6c:	30870713          	addi	a4,a4,776 # 80006270 <timer_scratch>
    80002f70:	00b7b023          	sd	a1,0(a5)
    80002f74:	00d70733          	add	a4,a4,a3
    80002f78:	00f73c23          	sd	a5,24(a4)
    80002f7c:	02c73023          	sd	a2,32(a4)
    80002f80:	34071073          	csrw	mscratch,a4
    80002f84:	00000797          	auipc	a5,0x0
    80002f88:	64c78793          	addi	a5,a5,1612 # 800035d0 <timervec>
    80002f8c:	30579073          	csrw	mtvec,a5
    80002f90:	300027f3          	csrr	a5,mstatus
    80002f94:	0087e793          	ori	a5,a5,8
    80002f98:	30079073          	csrw	mstatus,a5
    80002f9c:	304027f3          	csrr	a5,mie
    80002fa0:	0807e793          	ori	a5,a5,128
    80002fa4:	30479073          	csrw	mie,a5
    80002fa8:	00813403          	ld	s0,8(sp)
    80002fac:	01010113          	addi	sp,sp,16
    80002fb0:	00008067          	ret

0000000080002fb4 <system_main>:
    80002fb4:	fe010113          	addi	sp,sp,-32
    80002fb8:	00813823          	sd	s0,16(sp)
    80002fbc:	00913423          	sd	s1,8(sp)
    80002fc0:	00113c23          	sd	ra,24(sp)
    80002fc4:	02010413          	addi	s0,sp,32
    80002fc8:	00000097          	auipc	ra,0x0
    80002fcc:	0c4080e7          	jalr	196(ra) # 8000308c <cpuid>
    80002fd0:	00003497          	auipc	s1,0x3
    80002fd4:	26848493          	addi	s1,s1,616 # 80006238 <started>
    80002fd8:	02050263          	beqz	a0,80002ffc <system_main+0x48>
    80002fdc:	0004a783          	lw	a5,0(s1)
    80002fe0:	0007879b          	sext.w	a5,a5
    80002fe4:	fe078ce3          	beqz	a5,80002fdc <system_main+0x28>
    80002fe8:	0ff0000f          	fence
    80002fec:	00002517          	auipc	a0,0x2
    80002ff0:	34450513          	addi	a0,a0,836 # 80005330 <_ZTV14PeriodicThread+0x60>
    80002ff4:	00001097          	auipc	ra,0x1
    80002ff8:	a78080e7          	jalr	-1416(ra) # 80003a6c <panic>
    80002ffc:	00001097          	auipc	ra,0x1
    80003000:	9cc080e7          	jalr	-1588(ra) # 800039c8 <consoleinit>
    80003004:	00001097          	auipc	ra,0x1
    80003008:	158080e7          	jalr	344(ra) # 8000415c <printfinit>
    8000300c:	00002517          	auipc	a0,0x2
    80003010:	40450513          	addi	a0,a0,1028 # 80005410 <_ZTV14PeriodicThread+0x140>
    80003014:	00001097          	auipc	ra,0x1
    80003018:	ab4080e7          	jalr	-1356(ra) # 80003ac8 <__printf>
    8000301c:	00002517          	auipc	a0,0x2
    80003020:	2e450513          	addi	a0,a0,740 # 80005300 <_ZTV14PeriodicThread+0x30>
    80003024:	00001097          	auipc	ra,0x1
    80003028:	aa4080e7          	jalr	-1372(ra) # 80003ac8 <__printf>
    8000302c:	00002517          	auipc	a0,0x2
    80003030:	3e450513          	addi	a0,a0,996 # 80005410 <_ZTV14PeriodicThread+0x140>
    80003034:	00001097          	auipc	ra,0x1
    80003038:	a94080e7          	jalr	-1388(ra) # 80003ac8 <__printf>
    8000303c:	00001097          	auipc	ra,0x1
    80003040:	4ac080e7          	jalr	1196(ra) # 800044e8 <kinit>
    80003044:	00000097          	auipc	ra,0x0
    80003048:	148080e7          	jalr	328(ra) # 8000318c <trapinit>
    8000304c:	00000097          	auipc	ra,0x0
    80003050:	16c080e7          	jalr	364(ra) # 800031b8 <trapinithart>
    80003054:	00000097          	auipc	ra,0x0
    80003058:	5bc080e7          	jalr	1468(ra) # 80003610 <plicinit>
    8000305c:	00000097          	auipc	ra,0x0
    80003060:	5dc080e7          	jalr	1500(ra) # 80003638 <plicinithart>
    80003064:	00000097          	auipc	ra,0x0
    80003068:	078080e7          	jalr	120(ra) # 800030dc <userinit>
    8000306c:	0ff0000f          	fence
    80003070:	00100793          	li	a5,1
    80003074:	00002517          	auipc	a0,0x2
    80003078:	2a450513          	addi	a0,a0,676 # 80005318 <_ZTV14PeriodicThread+0x48>
    8000307c:	00f4a023          	sw	a5,0(s1)
    80003080:	00001097          	auipc	ra,0x1
    80003084:	a48080e7          	jalr	-1464(ra) # 80003ac8 <__printf>
    80003088:	0000006f          	j	80003088 <system_main+0xd4>

000000008000308c <cpuid>:
    8000308c:	ff010113          	addi	sp,sp,-16
    80003090:	00813423          	sd	s0,8(sp)
    80003094:	01010413          	addi	s0,sp,16
    80003098:	00020513          	mv	a0,tp
    8000309c:	00813403          	ld	s0,8(sp)
    800030a0:	0005051b          	sext.w	a0,a0
    800030a4:	01010113          	addi	sp,sp,16
    800030a8:	00008067          	ret

00000000800030ac <mycpu>:
    800030ac:	ff010113          	addi	sp,sp,-16
    800030b0:	00813423          	sd	s0,8(sp)
    800030b4:	01010413          	addi	s0,sp,16
    800030b8:	00020793          	mv	a5,tp
    800030bc:	00813403          	ld	s0,8(sp)
    800030c0:	0007879b          	sext.w	a5,a5
    800030c4:	00779793          	slli	a5,a5,0x7
    800030c8:	00004517          	auipc	a0,0x4
    800030cc:	1d850513          	addi	a0,a0,472 # 800072a0 <cpus>
    800030d0:	00f50533          	add	a0,a0,a5
    800030d4:	01010113          	addi	sp,sp,16
    800030d8:	00008067          	ret

00000000800030dc <userinit>:
    800030dc:	ff010113          	addi	sp,sp,-16
    800030e0:	00813423          	sd	s0,8(sp)
    800030e4:	01010413          	addi	s0,sp,16
    800030e8:	00813403          	ld	s0,8(sp)
    800030ec:	01010113          	addi	sp,sp,16
    800030f0:	ffffe317          	auipc	t1,0xffffe
    800030f4:	3f830067          	jr	1016(t1) # 800014e8 <main>

00000000800030f8 <either_copyout>:
    800030f8:	ff010113          	addi	sp,sp,-16
    800030fc:	00813023          	sd	s0,0(sp)
    80003100:	00113423          	sd	ra,8(sp)
    80003104:	01010413          	addi	s0,sp,16
    80003108:	02051663          	bnez	a0,80003134 <either_copyout+0x3c>
    8000310c:	00058513          	mv	a0,a1
    80003110:	00060593          	mv	a1,a2
    80003114:	0006861b          	sext.w	a2,a3
    80003118:	00002097          	auipc	ra,0x2
    8000311c:	c5c080e7          	jalr	-932(ra) # 80004d74 <__memmove>
    80003120:	00813083          	ld	ra,8(sp)
    80003124:	00013403          	ld	s0,0(sp)
    80003128:	00000513          	li	a0,0
    8000312c:	01010113          	addi	sp,sp,16
    80003130:	00008067          	ret
    80003134:	00002517          	auipc	a0,0x2
    80003138:	22450513          	addi	a0,a0,548 # 80005358 <_ZTV14PeriodicThread+0x88>
    8000313c:	00001097          	auipc	ra,0x1
    80003140:	930080e7          	jalr	-1744(ra) # 80003a6c <panic>

0000000080003144 <either_copyin>:
    80003144:	ff010113          	addi	sp,sp,-16
    80003148:	00813023          	sd	s0,0(sp)
    8000314c:	00113423          	sd	ra,8(sp)
    80003150:	01010413          	addi	s0,sp,16
    80003154:	02059463          	bnez	a1,8000317c <either_copyin+0x38>
    80003158:	00060593          	mv	a1,a2
    8000315c:	0006861b          	sext.w	a2,a3
    80003160:	00002097          	auipc	ra,0x2
    80003164:	c14080e7          	jalr	-1004(ra) # 80004d74 <__memmove>
    80003168:	00813083          	ld	ra,8(sp)
    8000316c:	00013403          	ld	s0,0(sp)
    80003170:	00000513          	li	a0,0
    80003174:	01010113          	addi	sp,sp,16
    80003178:	00008067          	ret
    8000317c:	00002517          	auipc	a0,0x2
    80003180:	20450513          	addi	a0,a0,516 # 80005380 <_ZTV14PeriodicThread+0xb0>
    80003184:	00001097          	auipc	ra,0x1
    80003188:	8e8080e7          	jalr	-1816(ra) # 80003a6c <panic>

000000008000318c <trapinit>:
    8000318c:	ff010113          	addi	sp,sp,-16
    80003190:	00813423          	sd	s0,8(sp)
    80003194:	01010413          	addi	s0,sp,16
    80003198:	00813403          	ld	s0,8(sp)
    8000319c:	00002597          	auipc	a1,0x2
    800031a0:	20c58593          	addi	a1,a1,524 # 800053a8 <_ZTV14PeriodicThread+0xd8>
    800031a4:	00004517          	auipc	a0,0x4
    800031a8:	17c50513          	addi	a0,a0,380 # 80007320 <tickslock>
    800031ac:	01010113          	addi	sp,sp,16
    800031b0:	00001317          	auipc	t1,0x1
    800031b4:	5c830067          	jr	1480(t1) # 80004778 <initlock>

00000000800031b8 <trapinithart>:
    800031b8:	ff010113          	addi	sp,sp,-16
    800031bc:	00813423          	sd	s0,8(sp)
    800031c0:	01010413          	addi	s0,sp,16
    800031c4:	00000797          	auipc	a5,0x0
    800031c8:	2fc78793          	addi	a5,a5,764 # 800034c0 <kernelvec>
    800031cc:	10579073          	csrw	stvec,a5
    800031d0:	00813403          	ld	s0,8(sp)
    800031d4:	01010113          	addi	sp,sp,16
    800031d8:	00008067          	ret

00000000800031dc <usertrap>:
    800031dc:	ff010113          	addi	sp,sp,-16
    800031e0:	00813423          	sd	s0,8(sp)
    800031e4:	01010413          	addi	s0,sp,16
    800031e8:	00813403          	ld	s0,8(sp)
    800031ec:	01010113          	addi	sp,sp,16
    800031f0:	00008067          	ret

00000000800031f4 <usertrapret>:
    800031f4:	ff010113          	addi	sp,sp,-16
    800031f8:	00813423          	sd	s0,8(sp)
    800031fc:	01010413          	addi	s0,sp,16
    80003200:	00813403          	ld	s0,8(sp)
    80003204:	01010113          	addi	sp,sp,16
    80003208:	00008067          	ret

000000008000320c <kerneltrap>:
    8000320c:	fe010113          	addi	sp,sp,-32
    80003210:	00813823          	sd	s0,16(sp)
    80003214:	00113c23          	sd	ra,24(sp)
    80003218:	00913423          	sd	s1,8(sp)
    8000321c:	02010413          	addi	s0,sp,32
    80003220:	142025f3          	csrr	a1,scause
    80003224:	100027f3          	csrr	a5,sstatus
    80003228:	0027f793          	andi	a5,a5,2
    8000322c:	10079c63          	bnez	a5,80003344 <kerneltrap+0x138>
    80003230:	142027f3          	csrr	a5,scause
    80003234:	0207ce63          	bltz	a5,80003270 <kerneltrap+0x64>
    80003238:	00002517          	auipc	a0,0x2
    8000323c:	1b850513          	addi	a0,a0,440 # 800053f0 <_ZTV14PeriodicThread+0x120>
    80003240:	00001097          	auipc	ra,0x1
    80003244:	888080e7          	jalr	-1912(ra) # 80003ac8 <__printf>
    80003248:	141025f3          	csrr	a1,sepc
    8000324c:	14302673          	csrr	a2,stval
    80003250:	00002517          	auipc	a0,0x2
    80003254:	1b050513          	addi	a0,a0,432 # 80005400 <_ZTV14PeriodicThread+0x130>
    80003258:	00001097          	auipc	ra,0x1
    8000325c:	870080e7          	jalr	-1936(ra) # 80003ac8 <__printf>
    80003260:	00002517          	auipc	a0,0x2
    80003264:	1b850513          	addi	a0,a0,440 # 80005418 <_ZTV14PeriodicThread+0x148>
    80003268:	00001097          	auipc	ra,0x1
    8000326c:	804080e7          	jalr	-2044(ra) # 80003a6c <panic>
    80003270:	0ff7f713          	andi	a4,a5,255
    80003274:	00900693          	li	a3,9
    80003278:	04d70063          	beq	a4,a3,800032b8 <kerneltrap+0xac>
    8000327c:	fff00713          	li	a4,-1
    80003280:	03f71713          	slli	a4,a4,0x3f
    80003284:	00170713          	addi	a4,a4,1
    80003288:	fae798e3          	bne	a5,a4,80003238 <kerneltrap+0x2c>
    8000328c:	00000097          	auipc	ra,0x0
    80003290:	e00080e7          	jalr	-512(ra) # 8000308c <cpuid>
    80003294:	06050663          	beqz	a0,80003300 <kerneltrap+0xf4>
    80003298:	144027f3          	csrr	a5,sip
    8000329c:	ffd7f793          	andi	a5,a5,-3
    800032a0:	14479073          	csrw	sip,a5
    800032a4:	01813083          	ld	ra,24(sp)
    800032a8:	01013403          	ld	s0,16(sp)
    800032ac:	00813483          	ld	s1,8(sp)
    800032b0:	02010113          	addi	sp,sp,32
    800032b4:	00008067          	ret
    800032b8:	00000097          	auipc	ra,0x0
    800032bc:	3cc080e7          	jalr	972(ra) # 80003684 <plic_claim>
    800032c0:	00a00793          	li	a5,10
    800032c4:	00050493          	mv	s1,a0
    800032c8:	06f50863          	beq	a0,a5,80003338 <kerneltrap+0x12c>
    800032cc:	fc050ce3          	beqz	a0,800032a4 <kerneltrap+0x98>
    800032d0:	00050593          	mv	a1,a0
    800032d4:	00002517          	auipc	a0,0x2
    800032d8:	0fc50513          	addi	a0,a0,252 # 800053d0 <_ZTV14PeriodicThread+0x100>
    800032dc:	00000097          	auipc	ra,0x0
    800032e0:	7ec080e7          	jalr	2028(ra) # 80003ac8 <__printf>
    800032e4:	01013403          	ld	s0,16(sp)
    800032e8:	01813083          	ld	ra,24(sp)
    800032ec:	00048513          	mv	a0,s1
    800032f0:	00813483          	ld	s1,8(sp)
    800032f4:	02010113          	addi	sp,sp,32
    800032f8:	00000317          	auipc	t1,0x0
    800032fc:	3c430067          	jr	964(t1) # 800036bc <plic_complete>
    80003300:	00004517          	auipc	a0,0x4
    80003304:	02050513          	addi	a0,a0,32 # 80007320 <tickslock>
    80003308:	00001097          	auipc	ra,0x1
    8000330c:	494080e7          	jalr	1172(ra) # 8000479c <acquire>
    80003310:	00003717          	auipc	a4,0x3
    80003314:	f2c70713          	addi	a4,a4,-212 # 8000623c <ticks>
    80003318:	00072783          	lw	a5,0(a4)
    8000331c:	00004517          	auipc	a0,0x4
    80003320:	00450513          	addi	a0,a0,4 # 80007320 <tickslock>
    80003324:	0017879b          	addiw	a5,a5,1
    80003328:	00f72023          	sw	a5,0(a4)
    8000332c:	00001097          	auipc	ra,0x1
    80003330:	53c080e7          	jalr	1340(ra) # 80004868 <release>
    80003334:	f65ff06f          	j	80003298 <kerneltrap+0x8c>
    80003338:	00001097          	auipc	ra,0x1
    8000333c:	098080e7          	jalr	152(ra) # 800043d0 <uartintr>
    80003340:	fa5ff06f          	j	800032e4 <kerneltrap+0xd8>
    80003344:	00002517          	auipc	a0,0x2
    80003348:	06c50513          	addi	a0,a0,108 # 800053b0 <_ZTV14PeriodicThread+0xe0>
    8000334c:	00000097          	auipc	ra,0x0
    80003350:	720080e7          	jalr	1824(ra) # 80003a6c <panic>

0000000080003354 <clockintr>:
    80003354:	fe010113          	addi	sp,sp,-32
    80003358:	00813823          	sd	s0,16(sp)
    8000335c:	00913423          	sd	s1,8(sp)
    80003360:	00113c23          	sd	ra,24(sp)
    80003364:	02010413          	addi	s0,sp,32
    80003368:	00004497          	auipc	s1,0x4
    8000336c:	fb848493          	addi	s1,s1,-72 # 80007320 <tickslock>
    80003370:	00048513          	mv	a0,s1
    80003374:	00001097          	auipc	ra,0x1
    80003378:	428080e7          	jalr	1064(ra) # 8000479c <acquire>
    8000337c:	00003717          	auipc	a4,0x3
    80003380:	ec070713          	addi	a4,a4,-320 # 8000623c <ticks>
    80003384:	00072783          	lw	a5,0(a4)
    80003388:	01013403          	ld	s0,16(sp)
    8000338c:	01813083          	ld	ra,24(sp)
    80003390:	00048513          	mv	a0,s1
    80003394:	0017879b          	addiw	a5,a5,1
    80003398:	00813483          	ld	s1,8(sp)
    8000339c:	00f72023          	sw	a5,0(a4)
    800033a0:	02010113          	addi	sp,sp,32
    800033a4:	00001317          	auipc	t1,0x1
    800033a8:	4c430067          	jr	1220(t1) # 80004868 <release>

00000000800033ac <devintr>:
    800033ac:	142027f3          	csrr	a5,scause
    800033b0:	00000513          	li	a0,0
    800033b4:	0007c463          	bltz	a5,800033bc <devintr+0x10>
    800033b8:	00008067          	ret
    800033bc:	fe010113          	addi	sp,sp,-32
    800033c0:	00813823          	sd	s0,16(sp)
    800033c4:	00113c23          	sd	ra,24(sp)
    800033c8:	00913423          	sd	s1,8(sp)
    800033cc:	02010413          	addi	s0,sp,32
    800033d0:	0ff7f713          	andi	a4,a5,255
    800033d4:	00900693          	li	a3,9
    800033d8:	04d70c63          	beq	a4,a3,80003430 <devintr+0x84>
    800033dc:	fff00713          	li	a4,-1
    800033e0:	03f71713          	slli	a4,a4,0x3f
    800033e4:	00170713          	addi	a4,a4,1
    800033e8:	00e78c63          	beq	a5,a4,80003400 <devintr+0x54>
    800033ec:	01813083          	ld	ra,24(sp)
    800033f0:	01013403          	ld	s0,16(sp)
    800033f4:	00813483          	ld	s1,8(sp)
    800033f8:	02010113          	addi	sp,sp,32
    800033fc:	00008067          	ret
    80003400:	00000097          	auipc	ra,0x0
    80003404:	c8c080e7          	jalr	-884(ra) # 8000308c <cpuid>
    80003408:	06050663          	beqz	a0,80003474 <devintr+0xc8>
    8000340c:	144027f3          	csrr	a5,sip
    80003410:	ffd7f793          	andi	a5,a5,-3
    80003414:	14479073          	csrw	sip,a5
    80003418:	01813083          	ld	ra,24(sp)
    8000341c:	01013403          	ld	s0,16(sp)
    80003420:	00813483          	ld	s1,8(sp)
    80003424:	00200513          	li	a0,2
    80003428:	02010113          	addi	sp,sp,32
    8000342c:	00008067          	ret
    80003430:	00000097          	auipc	ra,0x0
    80003434:	254080e7          	jalr	596(ra) # 80003684 <plic_claim>
    80003438:	00a00793          	li	a5,10
    8000343c:	00050493          	mv	s1,a0
    80003440:	06f50663          	beq	a0,a5,800034ac <devintr+0x100>
    80003444:	00100513          	li	a0,1
    80003448:	fa0482e3          	beqz	s1,800033ec <devintr+0x40>
    8000344c:	00048593          	mv	a1,s1
    80003450:	00002517          	auipc	a0,0x2
    80003454:	f8050513          	addi	a0,a0,-128 # 800053d0 <_ZTV14PeriodicThread+0x100>
    80003458:	00000097          	auipc	ra,0x0
    8000345c:	670080e7          	jalr	1648(ra) # 80003ac8 <__printf>
    80003460:	00048513          	mv	a0,s1
    80003464:	00000097          	auipc	ra,0x0
    80003468:	258080e7          	jalr	600(ra) # 800036bc <plic_complete>
    8000346c:	00100513          	li	a0,1
    80003470:	f7dff06f          	j	800033ec <devintr+0x40>
    80003474:	00004517          	auipc	a0,0x4
    80003478:	eac50513          	addi	a0,a0,-340 # 80007320 <tickslock>
    8000347c:	00001097          	auipc	ra,0x1
    80003480:	320080e7          	jalr	800(ra) # 8000479c <acquire>
    80003484:	00003717          	auipc	a4,0x3
    80003488:	db870713          	addi	a4,a4,-584 # 8000623c <ticks>
    8000348c:	00072783          	lw	a5,0(a4)
    80003490:	00004517          	auipc	a0,0x4
    80003494:	e9050513          	addi	a0,a0,-368 # 80007320 <tickslock>
    80003498:	0017879b          	addiw	a5,a5,1
    8000349c:	00f72023          	sw	a5,0(a4)
    800034a0:	00001097          	auipc	ra,0x1
    800034a4:	3c8080e7          	jalr	968(ra) # 80004868 <release>
    800034a8:	f65ff06f          	j	8000340c <devintr+0x60>
    800034ac:	00001097          	auipc	ra,0x1
    800034b0:	f24080e7          	jalr	-220(ra) # 800043d0 <uartintr>
    800034b4:	fadff06f          	j	80003460 <devintr+0xb4>
	...

00000000800034c0 <kernelvec>:
    800034c0:	f0010113          	addi	sp,sp,-256
    800034c4:	00113023          	sd	ra,0(sp)
    800034c8:	00213423          	sd	sp,8(sp)
    800034cc:	00313823          	sd	gp,16(sp)
    800034d0:	00413c23          	sd	tp,24(sp)
    800034d4:	02513023          	sd	t0,32(sp)
    800034d8:	02613423          	sd	t1,40(sp)
    800034dc:	02713823          	sd	t2,48(sp)
    800034e0:	02813c23          	sd	s0,56(sp)
    800034e4:	04913023          	sd	s1,64(sp)
    800034e8:	04a13423          	sd	a0,72(sp)
    800034ec:	04b13823          	sd	a1,80(sp)
    800034f0:	04c13c23          	sd	a2,88(sp)
    800034f4:	06d13023          	sd	a3,96(sp)
    800034f8:	06e13423          	sd	a4,104(sp)
    800034fc:	06f13823          	sd	a5,112(sp)
    80003500:	07013c23          	sd	a6,120(sp)
    80003504:	09113023          	sd	a7,128(sp)
    80003508:	09213423          	sd	s2,136(sp)
    8000350c:	09313823          	sd	s3,144(sp)
    80003510:	09413c23          	sd	s4,152(sp)
    80003514:	0b513023          	sd	s5,160(sp)
    80003518:	0b613423          	sd	s6,168(sp)
    8000351c:	0b713823          	sd	s7,176(sp)
    80003520:	0b813c23          	sd	s8,184(sp)
    80003524:	0d913023          	sd	s9,192(sp)
    80003528:	0da13423          	sd	s10,200(sp)
    8000352c:	0db13823          	sd	s11,208(sp)
    80003530:	0dc13c23          	sd	t3,216(sp)
    80003534:	0fd13023          	sd	t4,224(sp)
    80003538:	0fe13423          	sd	t5,232(sp)
    8000353c:	0ff13823          	sd	t6,240(sp)
    80003540:	ccdff0ef          	jal	ra,8000320c <kerneltrap>
    80003544:	00013083          	ld	ra,0(sp)
    80003548:	00813103          	ld	sp,8(sp)
    8000354c:	01013183          	ld	gp,16(sp)
    80003550:	02013283          	ld	t0,32(sp)
    80003554:	02813303          	ld	t1,40(sp)
    80003558:	03013383          	ld	t2,48(sp)
    8000355c:	03813403          	ld	s0,56(sp)
    80003560:	04013483          	ld	s1,64(sp)
    80003564:	04813503          	ld	a0,72(sp)
    80003568:	05013583          	ld	a1,80(sp)
    8000356c:	05813603          	ld	a2,88(sp)
    80003570:	06013683          	ld	a3,96(sp)
    80003574:	06813703          	ld	a4,104(sp)
    80003578:	07013783          	ld	a5,112(sp)
    8000357c:	07813803          	ld	a6,120(sp)
    80003580:	08013883          	ld	a7,128(sp)
    80003584:	08813903          	ld	s2,136(sp)
    80003588:	09013983          	ld	s3,144(sp)
    8000358c:	09813a03          	ld	s4,152(sp)
    80003590:	0a013a83          	ld	s5,160(sp)
    80003594:	0a813b03          	ld	s6,168(sp)
    80003598:	0b013b83          	ld	s7,176(sp)
    8000359c:	0b813c03          	ld	s8,184(sp)
    800035a0:	0c013c83          	ld	s9,192(sp)
    800035a4:	0c813d03          	ld	s10,200(sp)
    800035a8:	0d013d83          	ld	s11,208(sp)
    800035ac:	0d813e03          	ld	t3,216(sp)
    800035b0:	0e013e83          	ld	t4,224(sp)
    800035b4:	0e813f03          	ld	t5,232(sp)
    800035b8:	0f013f83          	ld	t6,240(sp)
    800035bc:	10010113          	addi	sp,sp,256
    800035c0:	10200073          	sret
    800035c4:	00000013          	nop
    800035c8:	00000013          	nop
    800035cc:	00000013          	nop

00000000800035d0 <timervec>:
    800035d0:	34051573          	csrrw	a0,mscratch,a0
    800035d4:	00b53023          	sd	a1,0(a0)
    800035d8:	00c53423          	sd	a2,8(a0)
    800035dc:	00d53823          	sd	a3,16(a0)
    800035e0:	01853583          	ld	a1,24(a0)
    800035e4:	02053603          	ld	a2,32(a0)
    800035e8:	0005b683          	ld	a3,0(a1)
    800035ec:	00c686b3          	add	a3,a3,a2
    800035f0:	00d5b023          	sd	a3,0(a1)
    800035f4:	00200593          	li	a1,2
    800035f8:	14459073          	csrw	sip,a1
    800035fc:	01053683          	ld	a3,16(a0)
    80003600:	00853603          	ld	a2,8(a0)
    80003604:	00053583          	ld	a1,0(a0)
    80003608:	34051573          	csrrw	a0,mscratch,a0
    8000360c:	30200073          	mret

0000000080003610 <plicinit>:
    80003610:	ff010113          	addi	sp,sp,-16
    80003614:	00813423          	sd	s0,8(sp)
    80003618:	01010413          	addi	s0,sp,16
    8000361c:	00813403          	ld	s0,8(sp)
    80003620:	0c0007b7          	lui	a5,0xc000
    80003624:	00100713          	li	a4,1
    80003628:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000362c:	00e7a223          	sw	a4,4(a5)
    80003630:	01010113          	addi	sp,sp,16
    80003634:	00008067          	ret

0000000080003638 <plicinithart>:
    80003638:	ff010113          	addi	sp,sp,-16
    8000363c:	00813023          	sd	s0,0(sp)
    80003640:	00113423          	sd	ra,8(sp)
    80003644:	01010413          	addi	s0,sp,16
    80003648:	00000097          	auipc	ra,0x0
    8000364c:	a44080e7          	jalr	-1468(ra) # 8000308c <cpuid>
    80003650:	0085171b          	slliw	a4,a0,0x8
    80003654:	0c0027b7          	lui	a5,0xc002
    80003658:	00e787b3          	add	a5,a5,a4
    8000365c:	40200713          	li	a4,1026
    80003660:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003664:	00813083          	ld	ra,8(sp)
    80003668:	00013403          	ld	s0,0(sp)
    8000366c:	00d5151b          	slliw	a0,a0,0xd
    80003670:	0c2017b7          	lui	a5,0xc201
    80003674:	00a78533          	add	a0,a5,a0
    80003678:	00052023          	sw	zero,0(a0)
    8000367c:	01010113          	addi	sp,sp,16
    80003680:	00008067          	ret

0000000080003684 <plic_claim>:
    80003684:	ff010113          	addi	sp,sp,-16
    80003688:	00813023          	sd	s0,0(sp)
    8000368c:	00113423          	sd	ra,8(sp)
    80003690:	01010413          	addi	s0,sp,16
    80003694:	00000097          	auipc	ra,0x0
    80003698:	9f8080e7          	jalr	-1544(ra) # 8000308c <cpuid>
    8000369c:	00813083          	ld	ra,8(sp)
    800036a0:	00013403          	ld	s0,0(sp)
    800036a4:	00d5151b          	slliw	a0,a0,0xd
    800036a8:	0c2017b7          	lui	a5,0xc201
    800036ac:	00a78533          	add	a0,a5,a0
    800036b0:	00452503          	lw	a0,4(a0)
    800036b4:	01010113          	addi	sp,sp,16
    800036b8:	00008067          	ret

00000000800036bc <plic_complete>:
    800036bc:	fe010113          	addi	sp,sp,-32
    800036c0:	00813823          	sd	s0,16(sp)
    800036c4:	00913423          	sd	s1,8(sp)
    800036c8:	00113c23          	sd	ra,24(sp)
    800036cc:	02010413          	addi	s0,sp,32
    800036d0:	00050493          	mv	s1,a0
    800036d4:	00000097          	auipc	ra,0x0
    800036d8:	9b8080e7          	jalr	-1608(ra) # 8000308c <cpuid>
    800036dc:	01813083          	ld	ra,24(sp)
    800036e0:	01013403          	ld	s0,16(sp)
    800036e4:	00d5179b          	slliw	a5,a0,0xd
    800036e8:	0c201737          	lui	a4,0xc201
    800036ec:	00f707b3          	add	a5,a4,a5
    800036f0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800036f4:	00813483          	ld	s1,8(sp)
    800036f8:	02010113          	addi	sp,sp,32
    800036fc:	00008067          	ret

0000000080003700 <consolewrite>:
    80003700:	fb010113          	addi	sp,sp,-80
    80003704:	04813023          	sd	s0,64(sp)
    80003708:	04113423          	sd	ra,72(sp)
    8000370c:	02913c23          	sd	s1,56(sp)
    80003710:	03213823          	sd	s2,48(sp)
    80003714:	03313423          	sd	s3,40(sp)
    80003718:	03413023          	sd	s4,32(sp)
    8000371c:	01513c23          	sd	s5,24(sp)
    80003720:	05010413          	addi	s0,sp,80
    80003724:	06c05c63          	blez	a2,8000379c <consolewrite+0x9c>
    80003728:	00060993          	mv	s3,a2
    8000372c:	00050a13          	mv	s4,a0
    80003730:	00058493          	mv	s1,a1
    80003734:	00000913          	li	s2,0
    80003738:	fff00a93          	li	s5,-1
    8000373c:	01c0006f          	j	80003758 <consolewrite+0x58>
    80003740:	fbf44503          	lbu	a0,-65(s0)
    80003744:	0019091b          	addiw	s2,s2,1
    80003748:	00148493          	addi	s1,s1,1
    8000374c:	00001097          	auipc	ra,0x1
    80003750:	a9c080e7          	jalr	-1380(ra) # 800041e8 <uartputc>
    80003754:	03298063          	beq	s3,s2,80003774 <consolewrite+0x74>
    80003758:	00048613          	mv	a2,s1
    8000375c:	00100693          	li	a3,1
    80003760:	000a0593          	mv	a1,s4
    80003764:	fbf40513          	addi	a0,s0,-65
    80003768:	00000097          	auipc	ra,0x0
    8000376c:	9dc080e7          	jalr	-1572(ra) # 80003144 <either_copyin>
    80003770:	fd5518e3          	bne	a0,s5,80003740 <consolewrite+0x40>
    80003774:	04813083          	ld	ra,72(sp)
    80003778:	04013403          	ld	s0,64(sp)
    8000377c:	03813483          	ld	s1,56(sp)
    80003780:	02813983          	ld	s3,40(sp)
    80003784:	02013a03          	ld	s4,32(sp)
    80003788:	01813a83          	ld	s5,24(sp)
    8000378c:	00090513          	mv	a0,s2
    80003790:	03013903          	ld	s2,48(sp)
    80003794:	05010113          	addi	sp,sp,80
    80003798:	00008067          	ret
    8000379c:	00000913          	li	s2,0
    800037a0:	fd5ff06f          	j	80003774 <consolewrite+0x74>

00000000800037a4 <consoleread>:
    800037a4:	f9010113          	addi	sp,sp,-112
    800037a8:	06813023          	sd	s0,96(sp)
    800037ac:	04913c23          	sd	s1,88(sp)
    800037b0:	05213823          	sd	s2,80(sp)
    800037b4:	05313423          	sd	s3,72(sp)
    800037b8:	05413023          	sd	s4,64(sp)
    800037bc:	03513c23          	sd	s5,56(sp)
    800037c0:	03613823          	sd	s6,48(sp)
    800037c4:	03713423          	sd	s7,40(sp)
    800037c8:	03813023          	sd	s8,32(sp)
    800037cc:	06113423          	sd	ra,104(sp)
    800037d0:	01913c23          	sd	s9,24(sp)
    800037d4:	07010413          	addi	s0,sp,112
    800037d8:	00060b93          	mv	s7,a2
    800037dc:	00050913          	mv	s2,a0
    800037e0:	00058c13          	mv	s8,a1
    800037e4:	00060b1b          	sext.w	s6,a2
    800037e8:	00004497          	auipc	s1,0x4
    800037ec:	b6048493          	addi	s1,s1,-1184 # 80007348 <cons>
    800037f0:	00400993          	li	s3,4
    800037f4:	fff00a13          	li	s4,-1
    800037f8:	00a00a93          	li	s5,10
    800037fc:	05705e63          	blez	s7,80003858 <consoleread+0xb4>
    80003800:	09c4a703          	lw	a4,156(s1)
    80003804:	0984a783          	lw	a5,152(s1)
    80003808:	0007071b          	sext.w	a4,a4
    8000380c:	08e78463          	beq	a5,a4,80003894 <consoleread+0xf0>
    80003810:	07f7f713          	andi	a4,a5,127
    80003814:	00e48733          	add	a4,s1,a4
    80003818:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000381c:	0017869b          	addiw	a3,a5,1
    80003820:	08d4ac23          	sw	a3,152(s1)
    80003824:	00070c9b          	sext.w	s9,a4
    80003828:	0b370663          	beq	a4,s3,800038d4 <consoleread+0x130>
    8000382c:	00100693          	li	a3,1
    80003830:	f9f40613          	addi	a2,s0,-97
    80003834:	000c0593          	mv	a1,s8
    80003838:	00090513          	mv	a0,s2
    8000383c:	f8e40fa3          	sb	a4,-97(s0)
    80003840:	00000097          	auipc	ra,0x0
    80003844:	8b8080e7          	jalr	-1864(ra) # 800030f8 <either_copyout>
    80003848:	01450863          	beq	a0,s4,80003858 <consoleread+0xb4>
    8000384c:	001c0c13          	addi	s8,s8,1
    80003850:	fffb8b9b          	addiw	s7,s7,-1
    80003854:	fb5c94e3          	bne	s9,s5,800037fc <consoleread+0x58>
    80003858:	000b851b          	sext.w	a0,s7
    8000385c:	06813083          	ld	ra,104(sp)
    80003860:	06013403          	ld	s0,96(sp)
    80003864:	05813483          	ld	s1,88(sp)
    80003868:	05013903          	ld	s2,80(sp)
    8000386c:	04813983          	ld	s3,72(sp)
    80003870:	04013a03          	ld	s4,64(sp)
    80003874:	03813a83          	ld	s5,56(sp)
    80003878:	02813b83          	ld	s7,40(sp)
    8000387c:	02013c03          	ld	s8,32(sp)
    80003880:	01813c83          	ld	s9,24(sp)
    80003884:	40ab053b          	subw	a0,s6,a0
    80003888:	03013b03          	ld	s6,48(sp)
    8000388c:	07010113          	addi	sp,sp,112
    80003890:	00008067          	ret
    80003894:	00001097          	auipc	ra,0x1
    80003898:	1d8080e7          	jalr	472(ra) # 80004a6c <push_on>
    8000389c:	0984a703          	lw	a4,152(s1)
    800038a0:	09c4a783          	lw	a5,156(s1)
    800038a4:	0007879b          	sext.w	a5,a5
    800038a8:	fef70ce3          	beq	a4,a5,800038a0 <consoleread+0xfc>
    800038ac:	00001097          	auipc	ra,0x1
    800038b0:	234080e7          	jalr	564(ra) # 80004ae0 <pop_on>
    800038b4:	0984a783          	lw	a5,152(s1)
    800038b8:	07f7f713          	andi	a4,a5,127
    800038bc:	00e48733          	add	a4,s1,a4
    800038c0:	01874703          	lbu	a4,24(a4)
    800038c4:	0017869b          	addiw	a3,a5,1
    800038c8:	08d4ac23          	sw	a3,152(s1)
    800038cc:	00070c9b          	sext.w	s9,a4
    800038d0:	f5371ee3          	bne	a4,s3,8000382c <consoleread+0x88>
    800038d4:	000b851b          	sext.w	a0,s7
    800038d8:	f96bf2e3          	bgeu	s7,s6,8000385c <consoleread+0xb8>
    800038dc:	08f4ac23          	sw	a5,152(s1)
    800038e0:	f7dff06f          	j	8000385c <consoleread+0xb8>

00000000800038e4 <consputc>:
    800038e4:	10000793          	li	a5,256
    800038e8:	00f50663          	beq	a0,a5,800038f4 <consputc+0x10>
    800038ec:	00001317          	auipc	t1,0x1
    800038f0:	9f430067          	jr	-1548(t1) # 800042e0 <uartputc_sync>
    800038f4:	ff010113          	addi	sp,sp,-16
    800038f8:	00113423          	sd	ra,8(sp)
    800038fc:	00813023          	sd	s0,0(sp)
    80003900:	01010413          	addi	s0,sp,16
    80003904:	00800513          	li	a0,8
    80003908:	00001097          	auipc	ra,0x1
    8000390c:	9d8080e7          	jalr	-1576(ra) # 800042e0 <uartputc_sync>
    80003910:	02000513          	li	a0,32
    80003914:	00001097          	auipc	ra,0x1
    80003918:	9cc080e7          	jalr	-1588(ra) # 800042e0 <uartputc_sync>
    8000391c:	00013403          	ld	s0,0(sp)
    80003920:	00813083          	ld	ra,8(sp)
    80003924:	00800513          	li	a0,8
    80003928:	01010113          	addi	sp,sp,16
    8000392c:	00001317          	auipc	t1,0x1
    80003930:	9b430067          	jr	-1612(t1) # 800042e0 <uartputc_sync>

0000000080003934 <consoleintr>:
    80003934:	fe010113          	addi	sp,sp,-32
    80003938:	00813823          	sd	s0,16(sp)
    8000393c:	00913423          	sd	s1,8(sp)
    80003940:	01213023          	sd	s2,0(sp)
    80003944:	00113c23          	sd	ra,24(sp)
    80003948:	02010413          	addi	s0,sp,32
    8000394c:	00004917          	auipc	s2,0x4
    80003950:	9fc90913          	addi	s2,s2,-1540 # 80007348 <cons>
    80003954:	00050493          	mv	s1,a0
    80003958:	00090513          	mv	a0,s2
    8000395c:	00001097          	auipc	ra,0x1
    80003960:	e40080e7          	jalr	-448(ra) # 8000479c <acquire>
    80003964:	02048c63          	beqz	s1,8000399c <consoleintr+0x68>
    80003968:	0a092783          	lw	a5,160(s2)
    8000396c:	09892703          	lw	a4,152(s2)
    80003970:	07f00693          	li	a3,127
    80003974:	40e7873b          	subw	a4,a5,a4
    80003978:	02e6e263          	bltu	a3,a4,8000399c <consoleintr+0x68>
    8000397c:	00d00713          	li	a4,13
    80003980:	04e48063          	beq	s1,a4,800039c0 <consoleintr+0x8c>
    80003984:	07f7f713          	andi	a4,a5,127
    80003988:	00e90733          	add	a4,s2,a4
    8000398c:	0017879b          	addiw	a5,a5,1
    80003990:	0af92023          	sw	a5,160(s2)
    80003994:	00970c23          	sb	s1,24(a4)
    80003998:	08f92e23          	sw	a5,156(s2)
    8000399c:	01013403          	ld	s0,16(sp)
    800039a0:	01813083          	ld	ra,24(sp)
    800039a4:	00813483          	ld	s1,8(sp)
    800039a8:	00013903          	ld	s2,0(sp)
    800039ac:	00004517          	auipc	a0,0x4
    800039b0:	99c50513          	addi	a0,a0,-1636 # 80007348 <cons>
    800039b4:	02010113          	addi	sp,sp,32
    800039b8:	00001317          	auipc	t1,0x1
    800039bc:	eb030067          	jr	-336(t1) # 80004868 <release>
    800039c0:	00a00493          	li	s1,10
    800039c4:	fc1ff06f          	j	80003984 <consoleintr+0x50>

00000000800039c8 <consoleinit>:
    800039c8:	fe010113          	addi	sp,sp,-32
    800039cc:	00113c23          	sd	ra,24(sp)
    800039d0:	00813823          	sd	s0,16(sp)
    800039d4:	00913423          	sd	s1,8(sp)
    800039d8:	02010413          	addi	s0,sp,32
    800039dc:	00004497          	auipc	s1,0x4
    800039e0:	96c48493          	addi	s1,s1,-1684 # 80007348 <cons>
    800039e4:	00048513          	mv	a0,s1
    800039e8:	00002597          	auipc	a1,0x2
    800039ec:	a4058593          	addi	a1,a1,-1472 # 80005428 <_ZTV14PeriodicThread+0x158>
    800039f0:	00001097          	auipc	ra,0x1
    800039f4:	d88080e7          	jalr	-632(ra) # 80004778 <initlock>
    800039f8:	00000097          	auipc	ra,0x0
    800039fc:	7ac080e7          	jalr	1964(ra) # 800041a4 <uartinit>
    80003a00:	01813083          	ld	ra,24(sp)
    80003a04:	01013403          	ld	s0,16(sp)
    80003a08:	00000797          	auipc	a5,0x0
    80003a0c:	d9c78793          	addi	a5,a5,-612 # 800037a4 <consoleread>
    80003a10:	0af4bc23          	sd	a5,184(s1)
    80003a14:	00000797          	auipc	a5,0x0
    80003a18:	cec78793          	addi	a5,a5,-788 # 80003700 <consolewrite>
    80003a1c:	0cf4b023          	sd	a5,192(s1)
    80003a20:	00813483          	ld	s1,8(sp)
    80003a24:	02010113          	addi	sp,sp,32
    80003a28:	00008067          	ret

0000000080003a2c <console_read>:
    80003a2c:	ff010113          	addi	sp,sp,-16
    80003a30:	00813423          	sd	s0,8(sp)
    80003a34:	01010413          	addi	s0,sp,16
    80003a38:	00813403          	ld	s0,8(sp)
    80003a3c:	00004317          	auipc	t1,0x4
    80003a40:	9c433303          	ld	t1,-1596(t1) # 80007400 <devsw+0x10>
    80003a44:	01010113          	addi	sp,sp,16
    80003a48:	00030067          	jr	t1

0000000080003a4c <console_write>:
    80003a4c:	ff010113          	addi	sp,sp,-16
    80003a50:	00813423          	sd	s0,8(sp)
    80003a54:	01010413          	addi	s0,sp,16
    80003a58:	00813403          	ld	s0,8(sp)
    80003a5c:	00004317          	auipc	t1,0x4
    80003a60:	9ac33303          	ld	t1,-1620(t1) # 80007408 <devsw+0x18>
    80003a64:	01010113          	addi	sp,sp,16
    80003a68:	00030067          	jr	t1

0000000080003a6c <panic>:
    80003a6c:	fe010113          	addi	sp,sp,-32
    80003a70:	00113c23          	sd	ra,24(sp)
    80003a74:	00813823          	sd	s0,16(sp)
    80003a78:	00913423          	sd	s1,8(sp)
    80003a7c:	02010413          	addi	s0,sp,32
    80003a80:	00050493          	mv	s1,a0
    80003a84:	00002517          	auipc	a0,0x2
    80003a88:	9ac50513          	addi	a0,a0,-1620 # 80005430 <_ZTV14PeriodicThread+0x160>
    80003a8c:	00004797          	auipc	a5,0x4
    80003a90:	a007ae23          	sw	zero,-1508(a5) # 800074a8 <pr+0x18>
    80003a94:	00000097          	auipc	ra,0x0
    80003a98:	034080e7          	jalr	52(ra) # 80003ac8 <__printf>
    80003a9c:	00048513          	mv	a0,s1
    80003aa0:	00000097          	auipc	ra,0x0
    80003aa4:	028080e7          	jalr	40(ra) # 80003ac8 <__printf>
    80003aa8:	00002517          	auipc	a0,0x2
    80003aac:	96850513          	addi	a0,a0,-1688 # 80005410 <_ZTV14PeriodicThread+0x140>
    80003ab0:	00000097          	auipc	ra,0x0
    80003ab4:	018080e7          	jalr	24(ra) # 80003ac8 <__printf>
    80003ab8:	00100793          	li	a5,1
    80003abc:	00002717          	auipc	a4,0x2
    80003ac0:	78f72223          	sw	a5,1924(a4) # 80006240 <panicked>
    80003ac4:	0000006f          	j	80003ac4 <panic+0x58>

0000000080003ac8 <__printf>:
    80003ac8:	f3010113          	addi	sp,sp,-208
    80003acc:	08813023          	sd	s0,128(sp)
    80003ad0:	07313423          	sd	s3,104(sp)
    80003ad4:	09010413          	addi	s0,sp,144
    80003ad8:	05813023          	sd	s8,64(sp)
    80003adc:	08113423          	sd	ra,136(sp)
    80003ae0:	06913c23          	sd	s1,120(sp)
    80003ae4:	07213823          	sd	s2,112(sp)
    80003ae8:	07413023          	sd	s4,96(sp)
    80003aec:	05513c23          	sd	s5,88(sp)
    80003af0:	05613823          	sd	s6,80(sp)
    80003af4:	05713423          	sd	s7,72(sp)
    80003af8:	03913c23          	sd	s9,56(sp)
    80003afc:	03a13823          	sd	s10,48(sp)
    80003b00:	03b13423          	sd	s11,40(sp)
    80003b04:	00004317          	auipc	t1,0x4
    80003b08:	98c30313          	addi	t1,t1,-1652 # 80007490 <pr>
    80003b0c:	01832c03          	lw	s8,24(t1)
    80003b10:	00b43423          	sd	a1,8(s0)
    80003b14:	00c43823          	sd	a2,16(s0)
    80003b18:	00d43c23          	sd	a3,24(s0)
    80003b1c:	02e43023          	sd	a4,32(s0)
    80003b20:	02f43423          	sd	a5,40(s0)
    80003b24:	03043823          	sd	a6,48(s0)
    80003b28:	03143c23          	sd	a7,56(s0)
    80003b2c:	00050993          	mv	s3,a0
    80003b30:	4a0c1663          	bnez	s8,80003fdc <__printf+0x514>
    80003b34:	60098c63          	beqz	s3,8000414c <__printf+0x684>
    80003b38:	0009c503          	lbu	a0,0(s3)
    80003b3c:	00840793          	addi	a5,s0,8
    80003b40:	f6f43c23          	sd	a5,-136(s0)
    80003b44:	00000493          	li	s1,0
    80003b48:	22050063          	beqz	a0,80003d68 <__printf+0x2a0>
    80003b4c:	00002a37          	lui	s4,0x2
    80003b50:	00018ab7          	lui	s5,0x18
    80003b54:	000f4b37          	lui	s6,0xf4
    80003b58:	00989bb7          	lui	s7,0x989
    80003b5c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003b60:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003b64:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003b68:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80003b6c:	00148c9b          	addiw	s9,s1,1
    80003b70:	02500793          	li	a5,37
    80003b74:	01998933          	add	s2,s3,s9
    80003b78:	38f51263          	bne	a0,a5,80003efc <__printf+0x434>
    80003b7c:	00094783          	lbu	a5,0(s2)
    80003b80:	00078c9b          	sext.w	s9,a5
    80003b84:	1e078263          	beqz	a5,80003d68 <__printf+0x2a0>
    80003b88:	0024849b          	addiw	s1,s1,2
    80003b8c:	07000713          	li	a4,112
    80003b90:	00998933          	add	s2,s3,s1
    80003b94:	38e78a63          	beq	a5,a4,80003f28 <__printf+0x460>
    80003b98:	20f76863          	bltu	a4,a5,80003da8 <__printf+0x2e0>
    80003b9c:	42a78863          	beq	a5,a0,80003fcc <__printf+0x504>
    80003ba0:	06400713          	li	a4,100
    80003ba4:	40e79663          	bne	a5,a4,80003fb0 <__printf+0x4e8>
    80003ba8:	f7843783          	ld	a5,-136(s0)
    80003bac:	0007a603          	lw	a2,0(a5)
    80003bb0:	00878793          	addi	a5,a5,8
    80003bb4:	f6f43c23          	sd	a5,-136(s0)
    80003bb8:	42064a63          	bltz	a2,80003fec <__printf+0x524>
    80003bbc:	00a00713          	li	a4,10
    80003bc0:	02e677bb          	remuw	a5,a2,a4
    80003bc4:	00002d97          	auipc	s11,0x2
    80003bc8:	894d8d93          	addi	s11,s11,-1900 # 80005458 <digits>
    80003bcc:	00900593          	li	a1,9
    80003bd0:	0006051b          	sext.w	a0,a2
    80003bd4:	00000c93          	li	s9,0
    80003bd8:	02079793          	slli	a5,a5,0x20
    80003bdc:	0207d793          	srli	a5,a5,0x20
    80003be0:	00fd87b3          	add	a5,s11,a5
    80003be4:	0007c783          	lbu	a5,0(a5)
    80003be8:	02e656bb          	divuw	a3,a2,a4
    80003bec:	f8f40023          	sb	a5,-128(s0)
    80003bf0:	14c5d863          	bge	a1,a2,80003d40 <__printf+0x278>
    80003bf4:	06300593          	li	a1,99
    80003bf8:	00100c93          	li	s9,1
    80003bfc:	02e6f7bb          	remuw	a5,a3,a4
    80003c00:	02079793          	slli	a5,a5,0x20
    80003c04:	0207d793          	srli	a5,a5,0x20
    80003c08:	00fd87b3          	add	a5,s11,a5
    80003c0c:	0007c783          	lbu	a5,0(a5)
    80003c10:	02e6d73b          	divuw	a4,a3,a4
    80003c14:	f8f400a3          	sb	a5,-127(s0)
    80003c18:	12a5f463          	bgeu	a1,a0,80003d40 <__printf+0x278>
    80003c1c:	00a00693          	li	a3,10
    80003c20:	00900593          	li	a1,9
    80003c24:	02d777bb          	remuw	a5,a4,a3
    80003c28:	02079793          	slli	a5,a5,0x20
    80003c2c:	0207d793          	srli	a5,a5,0x20
    80003c30:	00fd87b3          	add	a5,s11,a5
    80003c34:	0007c503          	lbu	a0,0(a5)
    80003c38:	02d757bb          	divuw	a5,a4,a3
    80003c3c:	f8a40123          	sb	a0,-126(s0)
    80003c40:	48e5f263          	bgeu	a1,a4,800040c4 <__printf+0x5fc>
    80003c44:	06300513          	li	a0,99
    80003c48:	02d7f5bb          	remuw	a1,a5,a3
    80003c4c:	02059593          	slli	a1,a1,0x20
    80003c50:	0205d593          	srli	a1,a1,0x20
    80003c54:	00bd85b3          	add	a1,s11,a1
    80003c58:	0005c583          	lbu	a1,0(a1)
    80003c5c:	02d7d7bb          	divuw	a5,a5,a3
    80003c60:	f8b401a3          	sb	a1,-125(s0)
    80003c64:	48e57263          	bgeu	a0,a4,800040e8 <__printf+0x620>
    80003c68:	3e700513          	li	a0,999
    80003c6c:	02d7f5bb          	remuw	a1,a5,a3
    80003c70:	02059593          	slli	a1,a1,0x20
    80003c74:	0205d593          	srli	a1,a1,0x20
    80003c78:	00bd85b3          	add	a1,s11,a1
    80003c7c:	0005c583          	lbu	a1,0(a1)
    80003c80:	02d7d7bb          	divuw	a5,a5,a3
    80003c84:	f8b40223          	sb	a1,-124(s0)
    80003c88:	46e57663          	bgeu	a0,a4,800040f4 <__printf+0x62c>
    80003c8c:	02d7f5bb          	remuw	a1,a5,a3
    80003c90:	02059593          	slli	a1,a1,0x20
    80003c94:	0205d593          	srli	a1,a1,0x20
    80003c98:	00bd85b3          	add	a1,s11,a1
    80003c9c:	0005c583          	lbu	a1,0(a1)
    80003ca0:	02d7d7bb          	divuw	a5,a5,a3
    80003ca4:	f8b402a3          	sb	a1,-123(s0)
    80003ca8:	46ea7863          	bgeu	s4,a4,80004118 <__printf+0x650>
    80003cac:	02d7f5bb          	remuw	a1,a5,a3
    80003cb0:	02059593          	slli	a1,a1,0x20
    80003cb4:	0205d593          	srli	a1,a1,0x20
    80003cb8:	00bd85b3          	add	a1,s11,a1
    80003cbc:	0005c583          	lbu	a1,0(a1)
    80003cc0:	02d7d7bb          	divuw	a5,a5,a3
    80003cc4:	f8b40323          	sb	a1,-122(s0)
    80003cc8:	3eeaf863          	bgeu	s5,a4,800040b8 <__printf+0x5f0>
    80003ccc:	02d7f5bb          	remuw	a1,a5,a3
    80003cd0:	02059593          	slli	a1,a1,0x20
    80003cd4:	0205d593          	srli	a1,a1,0x20
    80003cd8:	00bd85b3          	add	a1,s11,a1
    80003cdc:	0005c583          	lbu	a1,0(a1)
    80003ce0:	02d7d7bb          	divuw	a5,a5,a3
    80003ce4:	f8b403a3          	sb	a1,-121(s0)
    80003ce8:	42eb7e63          	bgeu	s6,a4,80004124 <__printf+0x65c>
    80003cec:	02d7f5bb          	remuw	a1,a5,a3
    80003cf0:	02059593          	slli	a1,a1,0x20
    80003cf4:	0205d593          	srli	a1,a1,0x20
    80003cf8:	00bd85b3          	add	a1,s11,a1
    80003cfc:	0005c583          	lbu	a1,0(a1)
    80003d00:	02d7d7bb          	divuw	a5,a5,a3
    80003d04:	f8b40423          	sb	a1,-120(s0)
    80003d08:	42ebfc63          	bgeu	s7,a4,80004140 <__printf+0x678>
    80003d0c:	02079793          	slli	a5,a5,0x20
    80003d10:	0207d793          	srli	a5,a5,0x20
    80003d14:	00fd8db3          	add	s11,s11,a5
    80003d18:	000dc703          	lbu	a4,0(s11)
    80003d1c:	00a00793          	li	a5,10
    80003d20:	00900c93          	li	s9,9
    80003d24:	f8e404a3          	sb	a4,-119(s0)
    80003d28:	00065c63          	bgez	a2,80003d40 <__printf+0x278>
    80003d2c:	f9040713          	addi	a4,s0,-112
    80003d30:	00f70733          	add	a4,a4,a5
    80003d34:	02d00693          	li	a3,45
    80003d38:	fed70823          	sb	a3,-16(a4)
    80003d3c:	00078c93          	mv	s9,a5
    80003d40:	f8040793          	addi	a5,s0,-128
    80003d44:	01978cb3          	add	s9,a5,s9
    80003d48:	f7f40d13          	addi	s10,s0,-129
    80003d4c:	000cc503          	lbu	a0,0(s9)
    80003d50:	fffc8c93          	addi	s9,s9,-1
    80003d54:	00000097          	auipc	ra,0x0
    80003d58:	b90080e7          	jalr	-1136(ra) # 800038e4 <consputc>
    80003d5c:	ffac98e3          	bne	s9,s10,80003d4c <__printf+0x284>
    80003d60:	00094503          	lbu	a0,0(s2)
    80003d64:	e00514e3          	bnez	a0,80003b6c <__printf+0xa4>
    80003d68:	1a0c1663          	bnez	s8,80003f14 <__printf+0x44c>
    80003d6c:	08813083          	ld	ra,136(sp)
    80003d70:	08013403          	ld	s0,128(sp)
    80003d74:	07813483          	ld	s1,120(sp)
    80003d78:	07013903          	ld	s2,112(sp)
    80003d7c:	06813983          	ld	s3,104(sp)
    80003d80:	06013a03          	ld	s4,96(sp)
    80003d84:	05813a83          	ld	s5,88(sp)
    80003d88:	05013b03          	ld	s6,80(sp)
    80003d8c:	04813b83          	ld	s7,72(sp)
    80003d90:	04013c03          	ld	s8,64(sp)
    80003d94:	03813c83          	ld	s9,56(sp)
    80003d98:	03013d03          	ld	s10,48(sp)
    80003d9c:	02813d83          	ld	s11,40(sp)
    80003da0:	0d010113          	addi	sp,sp,208
    80003da4:	00008067          	ret
    80003da8:	07300713          	li	a4,115
    80003dac:	1ce78a63          	beq	a5,a4,80003f80 <__printf+0x4b8>
    80003db0:	07800713          	li	a4,120
    80003db4:	1ee79e63          	bne	a5,a4,80003fb0 <__printf+0x4e8>
    80003db8:	f7843783          	ld	a5,-136(s0)
    80003dbc:	0007a703          	lw	a4,0(a5)
    80003dc0:	00878793          	addi	a5,a5,8
    80003dc4:	f6f43c23          	sd	a5,-136(s0)
    80003dc8:	28074263          	bltz	a4,8000404c <__printf+0x584>
    80003dcc:	00001d97          	auipc	s11,0x1
    80003dd0:	68cd8d93          	addi	s11,s11,1676 # 80005458 <digits>
    80003dd4:	00f77793          	andi	a5,a4,15
    80003dd8:	00fd87b3          	add	a5,s11,a5
    80003ddc:	0007c683          	lbu	a3,0(a5)
    80003de0:	00f00613          	li	a2,15
    80003de4:	0007079b          	sext.w	a5,a4
    80003de8:	f8d40023          	sb	a3,-128(s0)
    80003dec:	0047559b          	srliw	a1,a4,0x4
    80003df0:	0047569b          	srliw	a3,a4,0x4
    80003df4:	00000c93          	li	s9,0
    80003df8:	0ee65063          	bge	a2,a4,80003ed8 <__printf+0x410>
    80003dfc:	00f6f693          	andi	a3,a3,15
    80003e00:	00dd86b3          	add	a3,s11,a3
    80003e04:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003e08:	0087d79b          	srliw	a5,a5,0x8
    80003e0c:	00100c93          	li	s9,1
    80003e10:	f8d400a3          	sb	a3,-127(s0)
    80003e14:	0cb67263          	bgeu	a2,a1,80003ed8 <__printf+0x410>
    80003e18:	00f7f693          	andi	a3,a5,15
    80003e1c:	00dd86b3          	add	a3,s11,a3
    80003e20:	0006c583          	lbu	a1,0(a3)
    80003e24:	00f00613          	li	a2,15
    80003e28:	0047d69b          	srliw	a3,a5,0x4
    80003e2c:	f8b40123          	sb	a1,-126(s0)
    80003e30:	0047d593          	srli	a1,a5,0x4
    80003e34:	28f67e63          	bgeu	a2,a5,800040d0 <__printf+0x608>
    80003e38:	00f6f693          	andi	a3,a3,15
    80003e3c:	00dd86b3          	add	a3,s11,a3
    80003e40:	0006c503          	lbu	a0,0(a3)
    80003e44:	0087d813          	srli	a6,a5,0x8
    80003e48:	0087d69b          	srliw	a3,a5,0x8
    80003e4c:	f8a401a3          	sb	a0,-125(s0)
    80003e50:	28b67663          	bgeu	a2,a1,800040dc <__printf+0x614>
    80003e54:	00f6f693          	andi	a3,a3,15
    80003e58:	00dd86b3          	add	a3,s11,a3
    80003e5c:	0006c583          	lbu	a1,0(a3)
    80003e60:	00c7d513          	srli	a0,a5,0xc
    80003e64:	00c7d69b          	srliw	a3,a5,0xc
    80003e68:	f8b40223          	sb	a1,-124(s0)
    80003e6c:	29067a63          	bgeu	a2,a6,80004100 <__printf+0x638>
    80003e70:	00f6f693          	andi	a3,a3,15
    80003e74:	00dd86b3          	add	a3,s11,a3
    80003e78:	0006c583          	lbu	a1,0(a3)
    80003e7c:	0107d813          	srli	a6,a5,0x10
    80003e80:	0107d69b          	srliw	a3,a5,0x10
    80003e84:	f8b402a3          	sb	a1,-123(s0)
    80003e88:	28a67263          	bgeu	a2,a0,8000410c <__printf+0x644>
    80003e8c:	00f6f693          	andi	a3,a3,15
    80003e90:	00dd86b3          	add	a3,s11,a3
    80003e94:	0006c683          	lbu	a3,0(a3)
    80003e98:	0147d79b          	srliw	a5,a5,0x14
    80003e9c:	f8d40323          	sb	a3,-122(s0)
    80003ea0:	21067663          	bgeu	a2,a6,800040ac <__printf+0x5e4>
    80003ea4:	02079793          	slli	a5,a5,0x20
    80003ea8:	0207d793          	srli	a5,a5,0x20
    80003eac:	00fd8db3          	add	s11,s11,a5
    80003eb0:	000dc683          	lbu	a3,0(s11)
    80003eb4:	00800793          	li	a5,8
    80003eb8:	00700c93          	li	s9,7
    80003ebc:	f8d403a3          	sb	a3,-121(s0)
    80003ec0:	00075c63          	bgez	a4,80003ed8 <__printf+0x410>
    80003ec4:	f9040713          	addi	a4,s0,-112
    80003ec8:	00f70733          	add	a4,a4,a5
    80003ecc:	02d00693          	li	a3,45
    80003ed0:	fed70823          	sb	a3,-16(a4)
    80003ed4:	00078c93          	mv	s9,a5
    80003ed8:	f8040793          	addi	a5,s0,-128
    80003edc:	01978cb3          	add	s9,a5,s9
    80003ee0:	f7f40d13          	addi	s10,s0,-129
    80003ee4:	000cc503          	lbu	a0,0(s9)
    80003ee8:	fffc8c93          	addi	s9,s9,-1
    80003eec:	00000097          	auipc	ra,0x0
    80003ef0:	9f8080e7          	jalr	-1544(ra) # 800038e4 <consputc>
    80003ef4:	ff9d18e3          	bne	s10,s9,80003ee4 <__printf+0x41c>
    80003ef8:	0100006f          	j	80003f08 <__printf+0x440>
    80003efc:	00000097          	auipc	ra,0x0
    80003f00:	9e8080e7          	jalr	-1560(ra) # 800038e4 <consputc>
    80003f04:	000c8493          	mv	s1,s9
    80003f08:	00094503          	lbu	a0,0(s2)
    80003f0c:	c60510e3          	bnez	a0,80003b6c <__printf+0xa4>
    80003f10:	e40c0ee3          	beqz	s8,80003d6c <__printf+0x2a4>
    80003f14:	00003517          	auipc	a0,0x3
    80003f18:	57c50513          	addi	a0,a0,1404 # 80007490 <pr>
    80003f1c:	00001097          	auipc	ra,0x1
    80003f20:	94c080e7          	jalr	-1716(ra) # 80004868 <release>
    80003f24:	e49ff06f          	j	80003d6c <__printf+0x2a4>
    80003f28:	f7843783          	ld	a5,-136(s0)
    80003f2c:	03000513          	li	a0,48
    80003f30:	01000d13          	li	s10,16
    80003f34:	00878713          	addi	a4,a5,8
    80003f38:	0007bc83          	ld	s9,0(a5)
    80003f3c:	f6e43c23          	sd	a4,-136(s0)
    80003f40:	00000097          	auipc	ra,0x0
    80003f44:	9a4080e7          	jalr	-1628(ra) # 800038e4 <consputc>
    80003f48:	07800513          	li	a0,120
    80003f4c:	00000097          	auipc	ra,0x0
    80003f50:	998080e7          	jalr	-1640(ra) # 800038e4 <consputc>
    80003f54:	00001d97          	auipc	s11,0x1
    80003f58:	504d8d93          	addi	s11,s11,1284 # 80005458 <digits>
    80003f5c:	03ccd793          	srli	a5,s9,0x3c
    80003f60:	00fd87b3          	add	a5,s11,a5
    80003f64:	0007c503          	lbu	a0,0(a5)
    80003f68:	fffd0d1b          	addiw	s10,s10,-1
    80003f6c:	004c9c93          	slli	s9,s9,0x4
    80003f70:	00000097          	auipc	ra,0x0
    80003f74:	974080e7          	jalr	-1676(ra) # 800038e4 <consputc>
    80003f78:	fe0d12e3          	bnez	s10,80003f5c <__printf+0x494>
    80003f7c:	f8dff06f          	j	80003f08 <__printf+0x440>
    80003f80:	f7843783          	ld	a5,-136(s0)
    80003f84:	0007bc83          	ld	s9,0(a5)
    80003f88:	00878793          	addi	a5,a5,8
    80003f8c:	f6f43c23          	sd	a5,-136(s0)
    80003f90:	000c9a63          	bnez	s9,80003fa4 <__printf+0x4dc>
    80003f94:	1080006f          	j	8000409c <__printf+0x5d4>
    80003f98:	001c8c93          	addi	s9,s9,1
    80003f9c:	00000097          	auipc	ra,0x0
    80003fa0:	948080e7          	jalr	-1720(ra) # 800038e4 <consputc>
    80003fa4:	000cc503          	lbu	a0,0(s9)
    80003fa8:	fe0518e3          	bnez	a0,80003f98 <__printf+0x4d0>
    80003fac:	f5dff06f          	j	80003f08 <__printf+0x440>
    80003fb0:	02500513          	li	a0,37
    80003fb4:	00000097          	auipc	ra,0x0
    80003fb8:	930080e7          	jalr	-1744(ra) # 800038e4 <consputc>
    80003fbc:	000c8513          	mv	a0,s9
    80003fc0:	00000097          	auipc	ra,0x0
    80003fc4:	924080e7          	jalr	-1756(ra) # 800038e4 <consputc>
    80003fc8:	f41ff06f          	j	80003f08 <__printf+0x440>
    80003fcc:	02500513          	li	a0,37
    80003fd0:	00000097          	auipc	ra,0x0
    80003fd4:	914080e7          	jalr	-1772(ra) # 800038e4 <consputc>
    80003fd8:	f31ff06f          	j	80003f08 <__printf+0x440>
    80003fdc:	00030513          	mv	a0,t1
    80003fe0:	00000097          	auipc	ra,0x0
    80003fe4:	7bc080e7          	jalr	1980(ra) # 8000479c <acquire>
    80003fe8:	b4dff06f          	j	80003b34 <__printf+0x6c>
    80003fec:	40c0053b          	negw	a0,a2
    80003ff0:	00a00713          	li	a4,10
    80003ff4:	02e576bb          	remuw	a3,a0,a4
    80003ff8:	00001d97          	auipc	s11,0x1
    80003ffc:	460d8d93          	addi	s11,s11,1120 # 80005458 <digits>
    80004000:	ff700593          	li	a1,-9
    80004004:	02069693          	slli	a3,a3,0x20
    80004008:	0206d693          	srli	a3,a3,0x20
    8000400c:	00dd86b3          	add	a3,s11,a3
    80004010:	0006c683          	lbu	a3,0(a3)
    80004014:	02e557bb          	divuw	a5,a0,a4
    80004018:	f8d40023          	sb	a3,-128(s0)
    8000401c:	10b65e63          	bge	a2,a1,80004138 <__printf+0x670>
    80004020:	06300593          	li	a1,99
    80004024:	02e7f6bb          	remuw	a3,a5,a4
    80004028:	02069693          	slli	a3,a3,0x20
    8000402c:	0206d693          	srli	a3,a3,0x20
    80004030:	00dd86b3          	add	a3,s11,a3
    80004034:	0006c683          	lbu	a3,0(a3)
    80004038:	02e7d73b          	divuw	a4,a5,a4
    8000403c:	00200793          	li	a5,2
    80004040:	f8d400a3          	sb	a3,-127(s0)
    80004044:	bca5ece3          	bltu	a1,a0,80003c1c <__printf+0x154>
    80004048:	ce5ff06f          	j	80003d2c <__printf+0x264>
    8000404c:	40e007bb          	negw	a5,a4
    80004050:	00001d97          	auipc	s11,0x1
    80004054:	408d8d93          	addi	s11,s11,1032 # 80005458 <digits>
    80004058:	00f7f693          	andi	a3,a5,15
    8000405c:	00dd86b3          	add	a3,s11,a3
    80004060:	0006c583          	lbu	a1,0(a3)
    80004064:	ff100613          	li	a2,-15
    80004068:	0047d69b          	srliw	a3,a5,0x4
    8000406c:	f8b40023          	sb	a1,-128(s0)
    80004070:	0047d59b          	srliw	a1,a5,0x4
    80004074:	0ac75e63          	bge	a4,a2,80004130 <__printf+0x668>
    80004078:	00f6f693          	andi	a3,a3,15
    8000407c:	00dd86b3          	add	a3,s11,a3
    80004080:	0006c603          	lbu	a2,0(a3)
    80004084:	00f00693          	li	a3,15
    80004088:	0087d79b          	srliw	a5,a5,0x8
    8000408c:	f8c400a3          	sb	a2,-127(s0)
    80004090:	d8b6e4e3          	bltu	a3,a1,80003e18 <__printf+0x350>
    80004094:	00200793          	li	a5,2
    80004098:	e2dff06f          	j	80003ec4 <__printf+0x3fc>
    8000409c:	00001c97          	auipc	s9,0x1
    800040a0:	39cc8c93          	addi	s9,s9,924 # 80005438 <_ZTV14PeriodicThread+0x168>
    800040a4:	02800513          	li	a0,40
    800040a8:	ef1ff06f          	j	80003f98 <__printf+0x4d0>
    800040ac:	00700793          	li	a5,7
    800040b0:	00600c93          	li	s9,6
    800040b4:	e0dff06f          	j	80003ec0 <__printf+0x3f8>
    800040b8:	00700793          	li	a5,7
    800040bc:	00600c93          	li	s9,6
    800040c0:	c69ff06f          	j	80003d28 <__printf+0x260>
    800040c4:	00300793          	li	a5,3
    800040c8:	00200c93          	li	s9,2
    800040cc:	c5dff06f          	j	80003d28 <__printf+0x260>
    800040d0:	00300793          	li	a5,3
    800040d4:	00200c93          	li	s9,2
    800040d8:	de9ff06f          	j	80003ec0 <__printf+0x3f8>
    800040dc:	00400793          	li	a5,4
    800040e0:	00300c93          	li	s9,3
    800040e4:	dddff06f          	j	80003ec0 <__printf+0x3f8>
    800040e8:	00400793          	li	a5,4
    800040ec:	00300c93          	li	s9,3
    800040f0:	c39ff06f          	j	80003d28 <__printf+0x260>
    800040f4:	00500793          	li	a5,5
    800040f8:	00400c93          	li	s9,4
    800040fc:	c2dff06f          	j	80003d28 <__printf+0x260>
    80004100:	00500793          	li	a5,5
    80004104:	00400c93          	li	s9,4
    80004108:	db9ff06f          	j	80003ec0 <__printf+0x3f8>
    8000410c:	00600793          	li	a5,6
    80004110:	00500c93          	li	s9,5
    80004114:	dadff06f          	j	80003ec0 <__printf+0x3f8>
    80004118:	00600793          	li	a5,6
    8000411c:	00500c93          	li	s9,5
    80004120:	c09ff06f          	j	80003d28 <__printf+0x260>
    80004124:	00800793          	li	a5,8
    80004128:	00700c93          	li	s9,7
    8000412c:	bfdff06f          	j	80003d28 <__printf+0x260>
    80004130:	00100793          	li	a5,1
    80004134:	d91ff06f          	j	80003ec4 <__printf+0x3fc>
    80004138:	00100793          	li	a5,1
    8000413c:	bf1ff06f          	j	80003d2c <__printf+0x264>
    80004140:	00900793          	li	a5,9
    80004144:	00800c93          	li	s9,8
    80004148:	be1ff06f          	j	80003d28 <__printf+0x260>
    8000414c:	00001517          	auipc	a0,0x1
    80004150:	2f450513          	addi	a0,a0,756 # 80005440 <_ZTV14PeriodicThread+0x170>
    80004154:	00000097          	auipc	ra,0x0
    80004158:	918080e7          	jalr	-1768(ra) # 80003a6c <panic>

000000008000415c <printfinit>:
    8000415c:	fe010113          	addi	sp,sp,-32
    80004160:	00813823          	sd	s0,16(sp)
    80004164:	00913423          	sd	s1,8(sp)
    80004168:	00113c23          	sd	ra,24(sp)
    8000416c:	02010413          	addi	s0,sp,32
    80004170:	00003497          	auipc	s1,0x3
    80004174:	32048493          	addi	s1,s1,800 # 80007490 <pr>
    80004178:	00048513          	mv	a0,s1
    8000417c:	00001597          	auipc	a1,0x1
    80004180:	2d458593          	addi	a1,a1,724 # 80005450 <_ZTV14PeriodicThread+0x180>
    80004184:	00000097          	auipc	ra,0x0
    80004188:	5f4080e7          	jalr	1524(ra) # 80004778 <initlock>
    8000418c:	01813083          	ld	ra,24(sp)
    80004190:	01013403          	ld	s0,16(sp)
    80004194:	0004ac23          	sw	zero,24(s1)
    80004198:	00813483          	ld	s1,8(sp)
    8000419c:	02010113          	addi	sp,sp,32
    800041a0:	00008067          	ret

00000000800041a4 <uartinit>:
    800041a4:	ff010113          	addi	sp,sp,-16
    800041a8:	00813423          	sd	s0,8(sp)
    800041ac:	01010413          	addi	s0,sp,16
    800041b0:	100007b7          	lui	a5,0x10000
    800041b4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800041b8:	f8000713          	li	a4,-128
    800041bc:	00e781a3          	sb	a4,3(a5)
    800041c0:	00300713          	li	a4,3
    800041c4:	00e78023          	sb	a4,0(a5)
    800041c8:	000780a3          	sb	zero,1(a5)
    800041cc:	00e781a3          	sb	a4,3(a5)
    800041d0:	00700693          	li	a3,7
    800041d4:	00d78123          	sb	a3,2(a5)
    800041d8:	00e780a3          	sb	a4,1(a5)
    800041dc:	00813403          	ld	s0,8(sp)
    800041e0:	01010113          	addi	sp,sp,16
    800041e4:	00008067          	ret

00000000800041e8 <uartputc>:
    800041e8:	00002797          	auipc	a5,0x2
    800041ec:	0587a783          	lw	a5,88(a5) # 80006240 <panicked>
    800041f0:	00078463          	beqz	a5,800041f8 <uartputc+0x10>
    800041f4:	0000006f          	j	800041f4 <uartputc+0xc>
    800041f8:	fd010113          	addi	sp,sp,-48
    800041fc:	02813023          	sd	s0,32(sp)
    80004200:	00913c23          	sd	s1,24(sp)
    80004204:	01213823          	sd	s2,16(sp)
    80004208:	01313423          	sd	s3,8(sp)
    8000420c:	02113423          	sd	ra,40(sp)
    80004210:	03010413          	addi	s0,sp,48
    80004214:	00002917          	auipc	s2,0x2
    80004218:	03490913          	addi	s2,s2,52 # 80006248 <uart_tx_r>
    8000421c:	00093783          	ld	a5,0(s2)
    80004220:	00002497          	auipc	s1,0x2
    80004224:	03048493          	addi	s1,s1,48 # 80006250 <uart_tx_w>
    80004228:	0004b703          	ld	a4,0(s1)
    8000422c:	02078693          	addi	a3,a5,32
    80004230:	00050993          	mv	s3,a0
    80004234:	02e69c63          	bne	a3,a4,8000426c <uartputc+0x84>
    80004238:	00001097          	auipc	ra,0x1
    8000423c:	834080e7          	jalr	-1996(ra) # 80004a6c <push_on>
    80004240:	00093783          	ld	a5,0(s2)
    80004244:	0004b703          	ld	a4,0(s1)
    80004248:	02078793          	addi	a5,a5,32
    8000424c:	00e79463          	bne	a5,a4,80004254 <uartputc+0x6c>
    80004250:	0000006f          	j	80004250 <uartputc+0x68>
    80004254:	00001097          	auipc	ra,0x1
    80004258:	88c080e7          	jalr	-1908(ra) # 80004ae0 <pop_on>
    8000425c:	00093783          	ld	a5,0(s2)
    80004260:	0004b703          	ld	a4,0(s1)
    80004264:	02078693          	addi	a3,a5,32
    80004268:	fce688e3          	beq	a3,a4,80004238 <uartputc+0x50>
    8000426c:	01f77693          	andi	a3,a4,31
    80004270:	00003597          	auipc	a1,0x3
    80004274:	24058593          	addi	a1,a1,576 # 800074b0 <uart_tx_buf>
    80004278:	00d586b3          	add	a3,a1,a3
    8000427c:	00170713          	addi	a4,a4,1
    80004280:	01368023          	sb	s3,0(a3)
    80004284:	00e4b023          	sd	a4,0(s1)
    80004288:	10000637          	lui	a2,0x10000
    8000428c:	02f71063          	bne	a4,a5,800042ac <uartputc+0xc4>
    80004290:	0340006f          	j	800042c4 <uartputc+0xdc>
    80004294:	00074703          	lbu	a4,0(a4)
    80004298:	00f93023          	sd	a5,0(s2)
    8000429c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800042a0:	00093783          	ld	a5,0(s2)
    800042a4:	0004b703          	ld	a4,0(s1)
    800042a8:	00f70e63          	beq	a4,a5,800042c4 <uartputc+0xdc>
    800042ac:	00564683          	lbu	a3,5(a2)
    800042b0:	01f7f713          	andi	a4,a5,31
    800042b4:	00e58733          	add	a4,a1,a4
    800042b8:	0206f693          	andi	a3,a3,32
    800042bc:	00178793          	addi	a5,a5,1
    800042c0:	fc069ae3          	bnez	a3,80004294 <uartputc+0xac>
    800042c4:	02813083          	ld	ra,40(sp)
    800042c8:	02013403          	ld	s0,32(sp)
    800042cc:	01813483          	ld	s1,24(sp)
    800042d0:	01013903          	ld	s2,16(sp)
    800042d4:	00813983          	ld	s3,8(sp)
    800042d8:	03010113          	addi	sp,sp,48
    800042dc:	00008067          	ret

00000000800042e0 <uartputc_sync>:
    800042e0:	ff010113          	addi	sp,sp,-16
    800042e4:	00813423          	sd	s0,8(sp)
    800042e8:	01010413          	addi	s0,sp,16
    800042ec:	00002717          	auipc	a4,0x2
    800042f0:	f5472703          	lw	a4,-172(a4) # 80006240 <panicked>
    800042f4:	02071663          	bnez	a4,80004320 <uartputc_sync+0x40>
    800042f8:	00050793          	mv	a5,a0
    800042fc:	100006b7          	lui	a3,0x10000
    80004300:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004304:	02077713          	andi	a4,a4,32
    80004308:	fe070ce3          	beqz	a4,80004300 <uartputc_sync+0x20>
    8000430c:	0ff7f793          	andi	a5,a5,255
    80004310:	00f68023          	sb	a5,0(a3)
    80004314:	00813403          	ld	s0,8(sp)
    80004318:	01010113          	addi	sp,sp,16
    8000431c:	00008067          	ret
    80004320:	0000006f          	j	80004320 <uartputc_sync+0x40>

0000000080004324 <uartstart>:
    80004324:	ff010113          	addi	sp,sp,-16
    80004328:	00813423          	sd	s0,8(sp)
    8000432c:	01010413          	addi	s0,sp,16
    80004330:	00002617          	auipc	a2,0x2
    80004334:	f1860613          	addi	a2,a2,-232 # 80006248 <uart_tx_r>
    80004338:	00002517          	auipc	a0,0x2
    8000433c:	f1850513          	addi	a0,a0,-232 # 80006250 <uart_tx_w>
    80004340:	00063783          	ld	a5,0(a2)
    80004344:	00053703          	ld	a4,0(a0)
    80004348:	04f70263          	beq	a4,a5,8000438c <uartstart+0x68>
    8000434c:	100005b7          	lui	a1,0x10000
    80004350:	00003817          	auipc	a6,0x3
    80004354:	16080813          	addi	a6,a6,352 # 800074b0 <uart_tx_buf>
    80004358:	01c0006f          	j	80004374 <uartstart+0x50>
    8000435c:	0006c703          	lbu	a4,0(a3)
    80004360:	00f63023          	sd	a5,0(a2)
    80004364:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004368:	00063783          	ld	a5,0(a2)
    8000436c:	00053703          	ld	a4,0(a0)
    80004370:	00f70e63          	beq	a4,a5,8000438c <uartstart+0x68>
    80004374:	01f7f713          	andi	a4,a5,31
    80004378:	00e806b3          	add	a3,a6,a4
    8000437c:	0055c703          	lbu	a4,5(a1)
    80004380:	00178793          	addi	a5,a5,1
    80004384:	02077713          	andi	a4,a4,32
    80004388:	fc071ae3          	bnez	a4,8000435c <uartstart+0x38>
    8000438c:	00813403          	ld	s0,8(sp)
    80004390:	01010113          	addi	sp,sp,16
    80004394:	00008067          	ret

0000000080004398 <uartgetc>:
    80004398:	ff010113          	addi	sp,sp,-16
    8000439c:	00813423          	sd	s0,8(sp)
    800043a0:	01010413          	addi	s0,sp,16
    800043a4:	10000737          	lui	a4,0x10000
    800043a8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800043ac:	0017f793          	andi	a5,a5,1
    800043b0:	00078c63          	beqz	a5,800043c8 <uartgetc+0x30>
    800043b4:	00074503          	lbu	a0,0(a4)
    800043b8:	0ff57513          	andi	a0,a0,255
    800043bc:	00813403          	ld	s0,8(sp)
    800043c0:	01010113          	addi	sp,sp,16
    800043c4:	00008067          	ret
    800043c8:	fff00513          	li	a0,-1
    800043cc:	ff1ff06f          	j	800043bc <uartgetc+0x24>

00000000800043d0 <uartintr>:
    800043d0:	100007b7          	lui	a5,0x10000
    800043d4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800043d8:	0017f793          	andi	a5,a5,1
    800043dc:	0a078463          	beqz	a5,80004484 <uartintr+0xb4>
    800043e0:	fe010113          	addi	sp,sp,-32
    800043e4:	00813823          	sd	s0,16(sp)
    800043e8:	00913423          	sd	s1,8(sp)
    800043ec:	00113c23          	sd	ra,24(sp)
    800043f0:	02010413          	addi	s0,sp,32
    800043f4:	100004b7          	lui	s1,0x10000
    800043f8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800043fc:	0ff57513          	andi	a0,a0,255
    80004400:	fffff097          	auipc	ra,0xfffff
    80004404:	534080e7          	jalr	1332(ra) # 80003934 <consoleintr>
    80004408:	0054c783          	lbu	a5,5(s1)
    8000440c:	0017f793          	andi	a5,a5,1
    80004410:	fe0794e3          	bnez	a5,800043f8 <uartintr+0x28>
    80004414:	00002617          	auipc	a2,0x2
    80004418:	e3460613          	addi	a2,a2,-460 # 80006248 <uart_tx_r>
    8000441c:	00002517          	auipc	a0,0x2
    80004420:	e3450513          	addi	a0,a0,-460 # 80006250 <uart_tx_w>
    80004424:	00063783          	ld	a5,0(a2)
    80004428:	00053703          	ld	a4,0(a0)
    8000442c:	04f70263          	beq	a4,a5,80004470 <uartintr+0xa0>
    80004430:	100005b7          	lui	a1,0x10000
    80004434:	00003817          	auipc	a6,0x3
    80004438:	07c80813          	addi	a6,a6,124 # 800074b0 <uart_tx_buf>
    8000443c:	01c0006f          	j	80004458 <uartintr+0x88>
    80004440:	0006c703          	lbu	a4,0(a3)
    80004444:	00f63023          	sd	a5,0(a2)
    80004448:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000444c:	00063783          	ld	a5,0(a2)
    80004450:	00053703          	ld	a4,0(a0)
    80004454:	00f70e63          	beq	a4,a5,80004470 <uartintr+0xa0>
    80004458:	01f7f713          	andi	a4,a5,31
    8000445c:	00e806b3          	add	a3,a6,a4
    80004460:	0055c703          	lbu	a4,5(a1)
    80004464:	00178793          	addi	a5,a5,1
    80004468:	02077713          	andi	a4,a4,32
    8000446c:	fc071ae3          	bnez	a4,80004440 <uartintr+0x70>
    80004470:	01813083          	ld	ra,24(sp)
    80004474:	01013403          	ld	s0,16(sp)
    80004478:	00813483          	ld	s1,8(sp)
    8000447c:	02010113          	addi	sp,sp,32
    80004480:	00008067          	ret
    80004484:	00002617          	auipc	a2,0x2
    80004488:	dc460613          	addi	a2,a2,-572 # 80006248 <uart_tx_r>
    8000448c:	00002517          	auipc	a0,0x2
    80004490:	dc450513          	addi	a0,a0,-572 # 80006250 <uart_tx_w>
    80004494:	00063783          	ld	a5,0(a2)
    80004498:	00053703          	ld	a4,0(a0)
    8000449c:	04f70263          	beq	a4,a5,800044e0 <uartintr+0x110>
    800044a0:	100005b7          	lui	a1,0x10000
    800044a4:	00003817          	auipc	a6,0x3
    800044a8:	00c80813          	addi	a6,a6,12 # 800074b0 <uart_tx_buf>
    800044ac:	01c0006f          	j	800044c8 <uartintr+0xf8>
    800044b0:	0006c703          	lbu	a4,0(a3)
    800044b4:	00f63023          	sd	a5,0(a2)
    800044b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800044bc:	00063783          	ld	a5,0(a2)
    800044c0:	00053703          	ld	a4,0(a0)
    800044c4:	02f70063          	beq	a4,a5,800044e4 <uartintr+0x114>
    800044c8:	01f7f713          	andi	a4,a5,31
    800044cc:	00e806b3          	add	a3,a6,a4
    800044d0:	0055c703          	lbu	a4,5(a1)
    800044d4:	00178793          	addi	a5,a5,1
    800044d8:	02077713          	andi	a4,a4,32
    800044dc:	fc071ae3          	bnez	a4,800044b0 <uartintr+0xe0>
    800044e0:	00008067          	ret
    800044e4:	00008067          	ret

00000000800044e8 <kinit>:
    800044e8:	fc010113          	addi	sp,sp,-64
    800044ec:	02913423          	sd	s1,40(sp)
    800044f0:	fffff7b7          	lui	a5,0xfffff
    800044f4:	00004497          	auipc	s1,0x4
    800044f8:	fdb48493          	addi	s1,s1,-37 # 800084cf <end+0xfff>
    800044fc:	02813823          	sd	s0,48(sp)
    80004500:	01313c23          	sd	s3,24(sp)
    80004504:	00f4f4b3          	and	s1,s1,a5
    80004508:	02113c23          	sd	ra,56(sp)
    8000450c:	03213023          	sd	s2,32(sp)
    80004510:	01413823          	sd	s4,16(sp)
    80004514:	01513423          	sd	s5,8(sp)
    80004518:	04010413          	addi	s0,sp,64
    8000451c:	000017b7          	lui	a5,0x1
    80004520:	01100993          	li	s3,17
    80004524:	00f487b3          	add	a5,s1,a5
    80004528:	01b99993          	slli	s3,s3,0x1b
    8000452c:	06f9e063          	bltu	s3,a5,8000458c <kinit+0xa4>
    80004530:	00003a97          	auipc	s5,0x3
    80004534:	fa0a8a93          	addi	s5,s5,-96 # 800074d0 <end>
    80004538:	0754ec63          	bltu	s1,s5,800045b0 <kinit+0xc8>
    8000453c:	0734fa63          	bgeu	s1,s3,800045b0 <kinit+0xc8>
    80004540:	00088a37          	lui	s4,0x88
    80004544:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004548:	00002917          	auipc	s2,0x2
    8000454c:	d1090913          	addi	s2,s2,-752 # 80006258 <kmem>
    80004550:	00ca1a13          	slli	s4,s4,0xc
    80004554:	0140006f          	j	80004568 <kinit+0x80>
    80004558:	000017b7          	lui	a5,0x1
    8000455c:	00f484b3          	add	s1,s1,a5
    80004560:	0554e863          	bltu	s1,s5,800045b0 <kinit+0xc8>
    80004564:	0534f663          	bgeu	s1,s3,800045b0 <kinit+0xc8>
    80004568:	00001637          	lui	a2,0x1
    8000456c:	00100593          	li	a1,1
    80004570:	00048513          	mv	a0,s1
    80004574:	00000097          	auipc	ra,0x0
    80004578:	5e4080e7          	jalr	1508(ra) # 80004b58 <__memset>
    8000457c:	00093783          	ld	a5,0(s2)
    80004580:	00f4b023          	sd	a5,0(s1)
    80004584:	00993023          	sd	s1,0(s2)
    80004588:	fd4498e3          	bne	s1,s4,80004558 <kinit+0x70>
    8000458c:	03813083          	ld	ra,56(sp)
    80004590:	03013403          	ld	s0,48(sp)
    80004594:	02813483          	ld	s1,40(sp)
    80004598:	02013903          	ld	s2,32(sp)
    8000459c:	01813983          	ld	s3,24(sp)
    800045a0:	01013a03          	ld	s4,16(sp)
    800045a4:	00813a83          	ld	s5,8(sp)
    800045a8:	04010113          	addi	sp,sp,64
    800045ac:	00008067          	ret
    800045b0:	00001517          	auipc	a0,0x1
    800045b4:	ec050513          	addi	a0,a0,-320 # 80005470 <digits+0x18>
    800045b8:	fffff097          	auipc	ra,0xfffff
    800045bc:	4b4080e7          	jalr	1204(ra) # 80003a6c <panic>

00000000800045c0 <freerange>:
    800045c0:	fc010113          	addi	sp,sp,-64
    800045c4:	000017b7          	lui	a5,0x1
    800045c8:	02913423          	sd	s1,40(sp)
    800045cc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800045d0:	009504b3          	add	s1,a0,s1
    800045d4:	fffff537          	lui	a0,0xfffff
    800045d8:	02813823          	sd	s0,48(sp)
    800045dc:	02113c23          	sd	ra,56(sp)
    800045e0:	03213023          	sd	s2,32(sp)
    800045e4:	01313c23          	sd	s3,24(sp)
    800045e8:	01413823          	sd	s4,16(sp)
    800045ec:	01513423          	sd	s5,8(sp)
    800045f0:	01613023          	sd	s6,0(sp)
    800045f4:	04010413          	addi	s0,sp,64
    800045f8:	00a4f4b3          	and	s1,s1,a0
    800045fc:	00f487b3          	add	a5,s1,a5
    80004600:	06f5e463          	bltu	a1,a5,80004668 <freerange+0xa8>
    80004604:	00003a97          	auipc	s5,0x3
    80004608:	ecca8a93          	addi	s5,s5,-308 # 800074d0 <end>
    8000460c:	0954e263          	bltu	s1,s5,80004690 <freerange+0xd0>
    80004610:	01100993          	li	s3,17
    80004614:	01b99993          	slli	s3,s3,0x1b
    80004618:	0734fc63          	bgeu	s1,s3,80004690 <freerange+0xd0>
    8000461c:	00058a13          	mv	s4,a1
    80004620:	00002917          	auipc	s2,0x2
    80004624:	c3890913          	addi	s2,s2,-968 # 80006258 <kmem>
    80004628:	00002b37          	lui	s6,0x2
    8000462c:	0140006f          	j	80004640 <freerange+0x80>
    80004630:	000017b7          	lui	a5,0x1
    80004634:	00f484b3          	add	s1,s1,a5
    80004638:	0554ec63          	bltu	s1,s5,80004690 <freerange+0xd0>
    8000463c:	0534fa63          	bgeu	s1,s3,80004690 <freerange+0xd0>
    80004640:	00001637          	lui	a2,0x1
    80004644:	00100593          	li	a1,1
    80004648:	00048513          	mv	a0,s1
    8000464c:	00000097          	auipc	ra,0x0
    80004650:	50c080e7          	jalr	1292(ra) # 80004b58 <__memset>
    80004654:	00093703          	ld	a4,0(s2)
    80004658:	016487b3          	add	a5,s1,s6
    8000465c:	00e4b023          	sd	a4,0(s1)
    80004660:	00993023          	sd	s1,0(s2)
    80004664:	fcfa76e3          	bgeu	s4,a5,80004630 <freerange+0x70>
    80004668:	03813083          	ld	ra,56(sp)
    8000466c:	03013403          	ld	s0,48(sp)
    80004670:	02813483          	ld	s1,40(sp)
    80004674:	02013903          	ld	s2,32(sp)
    80004678:	01813983          	ld	s3,24(sp)
    8000467c:	01013a03          	ld	s4,16(sp)
    80004680:	00813a83          	ld	s5,8(sp)
    80004684:	00013b03          	ld	s6,0(sp)
    80004688:	04010113          	addi	sp,sp,64
    8000468c:	00008067          	ret
    80004690:	00001517          	auipc	a0,0x1
    80004694:	de050513          	addi	a0,a0,-544 # 80005470 <digits+0x18>
    80004698:	fffff097          	auipc	ra,0xfffff
    8000469c:	3d4080e7          	jalr	980(ra) # 80003a6c <panic>

00000000800046a0 <kfree>:
    800046a0:	fe010113          	addi	sp,sp,-32
    800046a4:	00813823          	sd	s0,16(sp)
    800046a8:	00113c23          	sd	ra,24(sp)
    800046ac:	00913423          	sd	s1,8(sp)
    800046b0:	02010413          	addi	s0,sp,32
    800046b4:	03451793          	slli	a5,a0,0x34
    800046b8:	04079c63          	bnez	a5,80004710 <kfree+0x70>
    800046bc:	00003797          	auipc	a5,0x3
    800046c0:	e1478793          	addi	a5,a5,-492 # 800074d0 <end>
    800046c4:	00050493          	mv	s1,a0
    800046c8:	04f56463          	bltu	a0,a5,80004710 <kfree+0x70>
    800046cc:	01100793          	li	a5,17
    800046d0:	01b79793          	slli	a5,a5,0x1b
    800046d4:	02f57e63          	bgeu	a0,a5,80004710 <kfree+0x70>
    800046d8:	00001637          	lui	a2,0x1
    800046dc:	00100593          	li	a1,1
    800046e0:	00000097          	auipc	ra,0x0
    800046e4:	478080e7          	jalr	1144(ra) # 80004b58 <__memset>
    800046e8:	00002797          	auipc	a5,0x2
    800046ec:	b7078793          	addi	a5,a5,-1168 # 80006258 <kmem>
    800046f0:	0007b703          	ld	a4,0(a5)
    800046f4:	01813083          	ld	ra,24(sp)
    800046f8:	01013403          	ld	s0,16(sp)
    800046fc:	00e4b023          	sd	a4,0(s1)
    80004700:	0097b023          	sd	s1,0(a5)
    80004704:	00813483          	ld	s1,8(sp)
    80004708:	02010113          	addi	sp,sp,32
    8000470c:	00008067          	ret
    80004710:	00001517          	auipc	a0,0x1
    80004714:	d6050513          	addi	a0,a0,-672 # 80005470 <digits+0x18>
    80004718:	fffff097          	auipc	ra,0xfffff
    8000471c:	354080e7          	jalr	852(ra) # 80003a6c <panic>

0000000080004720 <kalloc>:
    80004720:	fe010113          	addi	sp,sp,-32
    80004724:	00813823          	sd	s0,16(sp)
    80004728:	00913423          	sd	s1,8(sp)
    8000472c:	00113c23          	sd	ra,24(sp)
    80004730:	02010413          	addi	s0,sp,32
    80004734:	00002797          	auipc	a5,0x2
    80004738:	b2478793          	addi	a5,a5,-1244 # 80006258 <kmem>
    8000473c:	0007b483          	ld	s1,0(a5)
    80004740:	02048063          	beqz	s1,80004760 <kalloc+0x40>
    80004744:	0004b703          	ld	a4,0(s1)
    80004748:	00001637          	lui	a2,0x1
    8000474c:	00500593          	li	a1,5
    80004750:	00048513          	mv	a0,s1
    80004754:	00e7b023          	sd	a4,0(a5)
    80004758:	00000097          	auipc	ra,0x0
    8000475c:	400080e7          	jalr	1024(ra) # 80004b58 <__memset>
    80004760:	01813083          	ld	ra,24(sp)
    80004764:	01013403          	ld	s0,16(sp)
    80004768:	00048513          	mv	a0,s1
    8000476c:	00813483          	ld	s1,8(sp)
    80004770:	02010113          	addi	sp,sp,32
    80004774:	00008067          	ret

0000000080004778 <initlock>:
    80004778:	ff010113          	addi	sp,sp,-16
    8000477c:	00813423          	sd	s0,8(sp)
    80004780:	01010413          	addi	s0,sp,16
    80004784:	00813403          	ld	s0,8(sp)
    80004788:	00b53423          	sd	a1,8(a0)
    8000478c:	00052023          	sw	zero,0(a0)
    80004790:	00053823          	sd	zero,16(a0)
    80004794:	01010113          	addi	sp,sp,16
    80004798:	00008067          	ret

000000008000479c <acquire>:
    8000479c:	fe010113          	addi	sp,sp,-32
    800047a0:	00813823          	sd	s0,16(sp)
    800047a4:	00913423          	sd	s1,8(sp)
    800047a8:	00113c23          	sd	ra,24(sp)
    800047ac:	01213023          	sd	s2,0(sp)
    800047b0:	02010413          	addi	s0,sp,32
    800047b4:	00050493          	mv	s1,a0
    800047b8:	10002973          	csrr	s2,sstatus
    800047bc:	100027f3          	csrr	a5,sstatus
    800047c0:	ffd7f793          	andi	a5,a5,-3
    800047c4:	10079073          	csrw	sstatus,a5
    800047c8:	fffff097          	auipc	ra,0xfffff
    800047cc:	8e4080e7          	jalr	-1820(ra) # 800030ac <mycpu>
    800047d0:	07852783          	lw	a5,120(a0)
    800047d4:	06078e63          	beqz	a5,80004850 <acquire+0xb4>
    800047d8:	fffff097          	auipc	ra,0xfffff
    800047dc:	8d4080e7          	jalr	-1836(ra) # 800030ac <mycpu>
    800047e0:	07852783          	lw	a5,120(a0)
    800047e4:	0004a703          	lw	a4,0(s1)
    800047e8:	0017879b          	addiw	a5,a5,1
    800047ec:	06f52c23          	sw	a5,120(a0)
    800047f0:	04071063          	bnez	a4,80004830 <acquire+0x94>
    800047f4:	00100713          	li	a4,1
    800047f8:	00070793          	mv	a5,a4
    800047fc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004800:	0007879b          	sext.w	a5,a5
    80004804:	fe079ae3          	bnez	a5,800047f8 <acquire+0x5c>
    80004808:	0ff0000f          	fence
    8000480c:	fffff097          	auipc	ra,0xfffff
    80004810:	8a0080e7          	jalr	-1888(ra) # 800030ac <mycpu>
    80004814:	01813083          	ld	ra,24(sp)
    80004818:	01013403          	ld	s0,16(sp)
    8000481c:	00a4b823          	sd	a0,16(s1)
    80004820:	00013903          	ld	s2,0(sp)
    80004824:	00813483          	ld	s1,8(sp)
    80004828:	02010113          	addi	sp,sp,32
    8000482c:	00008067          	ret
    80004830:	0104b903          	ld	s2,16(s1)
    80004834:	fffff097          	auipc	ra,0xfffff
    80004838:	878080e7          	jalr	-1928(ra) # 800030ac <mycpu>
    8000483c:	faa91ce3          	bne	s2,a0,800047f4 <acquire+0x58>
    80004840:	00001517          	auipc	a0,0x1
    80004844:	c3850513          	addi	a0,a0,-968 # 80005478 <digits+0x20>
    80004848:	fffff097          	auipc	ra,0xfffff
    8000484c:	224080e7          	jalr	548(ra) # 80003a6c <panic>
    80004850:	00195913          	srli	s2,s2,0x1
    80004854:	fffff097          	auipc	ra,0xfffff
    80004858:	858080e7          	jalr	-1960(ra) # 800030ac <mycpu>
    8000485c:	00197913          	andi	s2,s2,1
    80004860:	07252e23          	sw	s2,124(a0)
    80004864:	f75ff06f          	j	800047d8 <acquire+0x3c>

0000000080004868 <release>:
    80004868:	fe010113          	addi	sp,sp,-32
    8000486c:	00813823          	sd	s0,16(sp)
    80004870:	00113c23          	sd	ra,24(sp)
    80004874:	00913423          	sd	s1,8(sp)
    80004878:	01213023          	sd	s2,0(sp)
    8000487c:	02010413          	addi	s0,sp,32
    80004880:	00052783          	lw	a5,0(a0)
    80004884:	00079a63          	bnez	a5,80004898 <release+0x30>
    80004888:	00001517          	auipc	a0,0x1
    8000488c:	bf850513          	addi	a0,a0,-1032 # 80005480 <digits+0x28>
    80004890:	fffff097          	auipc	ra,0xfffff
    80004894:	1dc080e7          	jalr	476(ra) # 80003a6c <panic>
    80004898:	01053903          	ld	s2,16(a0)
    8000489c:	00050493          	mv	s1,a0
    800048a0:	fffff097          	auipc	ra,0xfffff
    800048a4:	80c080e7          	jalr	-2036(ra) # 800030ac <mycpu>
    800048a8:	fea910e3          	bne	s2,a0,80004888 <release+0x20>
    800048ac:	0004b823          	sd	zero,16(s1)
    800048b0:	0ff0000f          	fence
    800048b4:	0f50000f          	fence	iorw,ow
    800048b8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800048bc:	ffffe097          	auipc	ra,0xffffe
    800048c0:	7f0080e7          	jalr	2032(ra) # 800030ac <mycpu>
    800048c4:	100027f3          	csrr	a5,sstatus
    800048c8:	0027f793          	andi	a5,a5,2
    800048cc:	04079a63          	bnez	a5,80004920 <release+0xb8>
    800048d0:	07852783          	lw	a5,120(a0)
    800048d4:	02f05e63          	blez	a5,80004910 <release+0xa8>
    800048d8:	fff7871b          	addiw	a4,a5,-1
    800048dc:	06e52c23          	sw	a4,120(a0)
    800048e0:	00071c63          	bnez	a4,800048f8 <release+0x90>
    800048e4:	07c52783          	lw	a5,124(a0)
    800048e8:	00078863          	beqz	a5,800048f8 <release+0x90>
    800048ec:	100027f3          	csrr	a5,sstatus
    800048f0:	0027e793          	ori	a5,a5,2
    800048f4:	10079073          	csrw	sstatus,a5
    800048f8:	01813083          	ld	ra,24(sp)
    800048fc:	01013403          	ld	s0,16(sp)
    80004900:	00813483          	ld	s1,8(sp)
    80004904:	00013903          	ld	s2,0(sp)
    80004908:	02010113          	addi	sp,sp,32
    8000490c:	00008067          	ret
    80004910:	00001517          	auipc	a0,0x1
    80004914:	b9050513          	addi	a0,a0,-1136 # 800054a0 <digits+0x48>
    80004918:	fffff097          	auipc	ra,0xfffff
    8000491c:	154080e7          	jalr	340(ra) # 80003a6c <panic>
    80004920:	00001517          	auipc	a0,0x1
    80004924:	b6850513          	addi	a0,a0,-1176 # 80005488 <digits+0x30>
    80004928:	fffff097          	auipc	ra,0xfffff
    8000492c:	144080e7          	jalr	324(ra) # 80003a6c <panic>

0000000080004930 <holding>:
    80004930:	00052783          	lw	a5,0(a0)
    80004934:	00079663          	bnez	a5,80004940 <holding+0x10>
    80004938:	00000513          	li	a0,0
    8000493c:	00008067          	ret
    80004940:	fe010113          	addi	sp,sp,-32
    80004944:	00813823          	sd	s0,16(sp)
    80004948:	00913423          	sd	s1,8(sp)
    8000494c:	00113c23          	sd	ra,24(sp)
    80004950:	02010413          	addi	s0,sp,32
    80004954:	01053483          	ld	s1,16(a0)
    80004958:	ffffe097          	auipc	ra,0xffffe
    8000495c:	754080e7          	jalr	1876(ra) # 800030ac <mycpu>
    80004960:	01813083          	ld	ra,24(sp)
    80004964:	01013403          	ld	s0,16(sp)
    80004968:	40a48533          	sub	a0,s1,a0
    8000496c:	00153513          	seqz	a0,a0
    80004970:	00813483          	ld	s1,8(sp)
    80004974:	02010113          	addi	sp,sp,32
    80004978:	00008067          	ret

000000008000497c <push_off>:
    8000497c:	fe010113          	addi	sp,sp,-32
    80004980:	00813823          	sd	s0,16(sp)
    80004984:	00113c23          	sd	ra,24(sp)
    80004988:	00913423          	sd	s1,8(sp)
    8000498c:	02010413          	addi	s0,sp,32
    80004990:	100024f3          	csrr	s1,sstatus
    80004994:	100027f3          	csrr	a5,sstatus
    80004998:	ffd7f793          	andi	a5,a5,-3
    8000499c:	10079073          	csrw	sstatus,a5
    800049a0:	ffffe097          	auipc	ra,0xffffe
    800049a4:	70c080e7          	jalr	1804(ra) # 800030ac <mycpu>
    800049a8:	07852783          	lw	a5,120(a0)
    800049ac:	02078663          	beqz	a5,800049d8 <push_off+0x5c>
    800049b0:	ffffe097          	auipc	ra,0xffffe
    800049b4:	6fc080e7          	jalr	1788(ra) # 800030ac <mycpu>
    800049b8:	07852783          	lw	a5,120(a0)
    800049bc:	01813083          	ld	ra,24(sp)
    800049c0:	01013403          	ld	s0,16(sp)
    800049c4:	0017879b          	addiw	a5,a5,1
    800049c8:	06f52c23          	sw	a5,120(a0)
    800049cc:	00813483          	ld	s1,8(sp)
    800049d0:	02010113          	addi	sp,sp,32
    800049d4:	00008067          	ret
    800049d8:	0014d493          	srli	s1,s1,0x1
    800049dc:	ffffe097          	auipc	ra,0xffffe
    800049e0:	6d0080e7          	jalr	1744(ra) # 800030ac <mycpu>
    800049e4:	0014f493          	andi	s1,s1,1
    800049e8:	06952e23          	sw	s1,124(a0)
    800049ec:	fc5ff06f          	j	800049b0 <push_off+0x34>

00000000800049f0 <pop_off>:
    800049f0:	ff010113          	addi	sp,sp,-16
    800049f4:	00813023          	sd	s0,0(sp)
    800049f8:	00113423          	sd	ra,8(sp)
    800049fc:	01010413          	addi	s0,sp,16
    80004a00:	ffffe097          	auipc	ra,0xffffe
    80004a04:	6ac080e7          	jalr	1708(ra) # 800030ac <mycpu>
    80004a08:	100027f3          	csrr	a5,sstatus
    80004a0c:	0027f793          	andi	a5,a5,2
    80004a10:	04079663          	bnez	a5,80004a5c <pop_off+0x6c>
    80004a14:	07852783          	lw	a5,120(a0)
    80004a18:	02f05a63          	blez	a5,80004a4c <pop_off+0x5c>
    80004a1c:	fff7871b          	addiw	a4,a5,-1
    80004a20:	06e52c23          	sw	a4,120(a0)
    80004a24:	00071c63          	bnez	a4,80004a3c <pop_off+0x4c>
    80004a28:	07c52783          	lw	a5,124(a0)
    80004a2c:	00078863          	beqz	a5,80004a3c <pop_off+0x4c>
    80004a30:	100027f3          	csrr	a5,sstatus
    80004a34:	0027e793          	ori	a5,a5,2
    80004a38:	10079073          	csrw	sstatus,a5
    80004a3c:	00813083          	ld	ra,8(sp)
    80004a40:	00013403          	ld	s0,0(sp)
    80004a44:	01010113          	addi	sp,sp,16
    80004a48:	00008067          	ret
    80004a4c:	00001517          	auipc	a0,0x1
    80004a50:	a5450513          	addi	a0,a0,-1452 # 800054a0 <digits+0x48>
    80004a54:	fffff097          	auipc	ra,0xfffff
    80004a58:	018080e7          	jalr	24(ra) # 80003a6c <panic>
    80004a5c:	00001517          	auipc	a0,0x1
    80004a60:	a2c50513          	addi	a0,a0,-1492 # 80005488 <digits+0x30>
    80004a64:	fffff097          	auipc	ra,0xfffff
    80004a68:	008080e7          	jalr	8(ra) # 80003a6c <panic>

0000000080004a6c <push_on>:
    80004a6c:	fe010113          	addi	sp,sp,-32
    80004a70:	00813823          	sd	s0,16(sp)
    80004a74:	00113c23          	sd	ra,24(sp)
    80004a78:	00913423          	sd	s1,8(sp)
    80004a7c:	02010413          	addi	s0,sp,32
    80004a80:	100024f3          	csrr	s1,sstatus
    80004a84:	100027f3          	csrr	a5,sstatus
    80004a88:	0027e793          	ori	a5,a5,2
    80004a8c:	10079073          	csrw	sstatus,a5
    80004a90:	ffffe097          	auipc	ra,0xffffe
    80004a94:	61c080e7          	jalr	1564(ra) # 800030ac <mycpu>
    80004a98:	07852783          	lw	a5,120(a0)
    80004a9c:	02078663          	beqz	a5,80004ac8 <push_on+0x5c>
    80004aa0:	ffffe097          	auipc	ra,0xffffe
    80004aa4:	60c080e7          	jalr	1548(ra) # 800030ac <mycpu>
    80004aa8:	07852783          	lw	a5,120(a0)
    80004aac:	01813083          	ld	ra,24(sp)
    80004ab0:	01013403          	ld	s0,16(sp)
    80004ab4:	0017879b          	addiw	a5,a5,1
    80004ab8:	06f52c23          	sw	a5,120(a0)
    80004abc:	00813483          	ld	s1,8(sp)
    80004ac0:	02010113          	addi	sp,sp,32
    80004ac4:	00008067          	ret
    80004ac8:	0014d493          	srli	s1,s1,0x1
    80004acc:	ffffe097          	auipc	ra,0xffffe
    80004ad0:	5e0080e7          	jalr	1504(ra) # 800030ac <mycpu>
    80004ad4:	0014f493          	andi	s1,s1,1
    80004ad8:	06952e23          	sw	s1,124(a0)
    80004adc:	fc5ff06f          	j	80004aa0 <push_on+0x34>

0000000080004ae0 <pop_on>:
    80004ae0:	ff010113          	addi	sp,sp,-16
    80004ae4:	00813023          	sd	s0,0(sp)
    80004ae8:	00113423          	sd	ra,8(sp)
    80004aec:	01010413          	addi	s0,sp,16
    80004af0:	ffffe097          	auipc	ra,0xffffe
    80004af4:	5bc080e7          	jalr	1468(ra) # 800030ac <mycpu>
    80004af8:	100027f3          	csrr	a5,sstatus
    80004afc:	0027f793          	andi	a5,a5,2
    80004b00:	04078463          	beqz	a5,80004b48 <pop_on+0x68>
    80004b04:	07852783          	lw	a5,120(a0)
    80004b08:	02f05863          	blez	a5,80004b38 <pop_on+0x58>
    80004b0c:	fff7879b          	addiw	a5,a5,-1
    80004b10:	06f52c23          	sw	a5,120(a0)
    80004b14:	07853783          	ld	a5,120(a0)
    80004b18:	00079863          	bnez	a5,80004b28 <pop_on+0x48>
    80004b1c:	100027f3          	csrr	a5,sstatus
    80004b20:	ffd7f793          	andi	a5,a5,-3
    80004b24:	10079073          	csrw	sstatus,a5
    80004b28:	00813083          	ld	ra,8(sp)
    80004b2c:	00013403          	ld	s0,0(sp)
    80004b30:	01010113          	addi	sp,sp,16
    80004b34:	00008067          	ret
    80004b38:	00001517          	auipc	a0,0x1
    80004b3c:	99050513          	addi	a0,a0,-1648 # 800054c8 <digits+0x70>
    80004b40:	fffff097          	auipc	ra,0xfffff
    80004b44:	f2c080e7          	jalr	-212(ra) # 80003a6c <panic>
    80004b48:	00001517          	auipc	a0,0x1
    80004b4c:	96050513          	addi	a0,a0,-1696 # 800054a8 <digits+0x50>
    80004b50:	fffff097          	auipc	ra,0xfffff
    80004b54:	f1c080e7          	jalr	-228(ra) # 80003a6c <panic>

0000000080004b58 <__memset>:
    80004b58:	ff010113          	addi	sp,sp,-16
    80004b5c:	00813423          	sd	s0,8(sp)
    80004b60:	01010413          	addi	s0,sp,16
    80004b64:	1a060e63          	beqz	a2,80004d20 <__memset+0x1c8>
    80004b68:	40a007b3          	neg	a5,a0
    80004b6c:	0077f793          	andi	a5,a5,7
    80004b70:	00778693          	addi	a3,a5,7
    80004b74:	00b00813          	li	a6,11
    80004b78:	0ff5f593          	andi	a1,a1,255
    80004b7c:	fff6071b          	addiw	a4,a2,-1
    80004b80:	1b06e663          	bltu	a3,a6,80004d2c <__memset+0x1d4>
    80004b84:	1cd76463          	bltu	a4,a3,80004d4c <__memset+0x1f4>
    80004b88:	1a078e63          	beqz	a5,80004d44 <__memset+0x1ec>
    80004b8c:	00b50023          	sb	a1,0(a0)
    80004b90:	00100713          	li	a4,1
    80004b94:	1ae78463          	beq	a5,a4,80004d3c <__memset+0x1e4>
    80004b98:	00b500a3          	sb	a1,1(a0)
    80004b9c:	00200713          	li	a4,2
    80004ba0:	1ae78a63          	beq	a5,a4,80004d54 <__memset+0x1fc>
    80004ba4:	00b50123          	sb	a1,2(a0)
    80004ba8:	00300713          	li	a4,3
    80004bac:	18e78463          	beq	a5,a4,80004d34 <__memset+0x1dc>
    80004bb0:	00b501a3          	sb	a1,3(a0)
    80004bb4:	00400713          	li	a4,4
    80004bb8:	1ae78263          	beq	a5,a4,80004d5c <__memset+0x204>
    80004bbc:	00b50223          	sb	a1,4(a0)
    80004bc0:	00500713          	li	a4,5
    80004bc4:	1ae78063          	beq	a5,a4,80004d64 <__memset+0x20c>
    80004bc8:	00b502a3          	sb	a1,5(a0)
    80004bcc:	00700713          	li	a4,7
    80004bd0:	18e79e63          	bne	a5,a4,80004d6c <__memset+0x214>
    80004bd4:	00b50323          	sb	a1,6(a0)
    80004bd8:	00700e93          	li	t4,7
    80004bdc:	00859713          	slli	a4,a1,0x8
    80004be0:	00e5e733          	or	a4,a1,a4
    80004be4:	01059e13          	slli	t3,a1,0x10
    80004be8:	01c76e33          	or	t3,a4,t3
    80004bec:	01859313          	slli	t1,a1,0x18
    80004bf0:	006e6333          	or	t1,t3,t1
    80004bf4:	02059893          	slli	a7,a1,0x20
    80004bf8:	40f60e3b          	subw	t3,a2,a5
    80004bfc:	011368b3          	or	a7,t1,a7
    80004c00:	02859813          	slli	a6,a1,0x28
    80004c04:	0108e833          	or	a6,a7,a6
    80004c08:	03059693          	slli	a3,a1,0x30
    80004c0c:	003e589b          	srliw	a7,t3,0x3
    80004c10:	00d866b3          	or	a3,a6,a3
    80004c14:	03859713          	slli	a4,a1,0x38
    80004c18:	00389813          	slli	a6,a7,0x3
    80004c1c:	00f507b3          	add	a5,a0,a5
    80004c20:	00e6e733          	or	a4,a3,a4
    80004c24:	000e089b          	sext.w	a7,t3
    80004c28:	00f806b3          	add	a3,a6,a5
    80004c2c:	00e7b023          	sd	a4,0(a5)
    80004c30:	00878793          	addi	a5,a5,8
    80004c34:	fed79ce3          	bne	a5,a3,80004c2c <__memset+0xd4>
    80004c38:	ff8e7793          	andi	a5,t3,-8
    80004c3c:	0007871b          	sext.w	a4,a5
    80004c40:	01d787bb          	addw	a5,a5,t4
    80004c44:	0ce88e63          	beq	a7,a4,80004d20 <__memset+0x1c8>
    80004c48:	00f50733          	add	a4,a0,a5
    80004c4c:	00b70023          	sb	a1,0(a4)
    80004c50:	0017871b          	addiw	a4,a5,1
    80004c54:	0cc77663          	bgeu	a4,a2,80004d20 <__memset+0x1c8>
    80004c58:	00e50733          	add	a4,a0,a4
    80004c5c:	00b70023          	sb	a1,0(a4)
    80004c60:	0027871b          	addiw	a4,a5,2
    80004c64:	0ac77e63          	bgeu	a4,a2,80004d20 <__memset+0x1c8>
    80004c68:	00e50733          	add	a4,a0,a4
    80004c6c:	00b70023          	sb	a1,0(a4)
    80004c70:	0037871b          	addiw	a4,a5,3
    80004c74:	0ac77663          	bgeu	a4,a2,80004d20 <__memset+0x1c8>
    80004c78:	00e50733          	add	a4,a0,a4
    80004c7c:	00b70023          	sb	a1,0(a4)
    80004c80:	0047871b          	addiw	a4,a5,4
    80004c84:	08c77e63          	bgeu	a4,a2,80004d20 <__memset+0x1c8>
    80004c88:	00e50733          	add	a4,a0,a4
    80004c8c:	00b70023          	sb	a1,0(a4)
    80004c90:	0057871b          	addiw	a4,a5,5
    80004c94:	08c77663          	bgeu	a4,a2,80004d20 <__memset+0x1c8>
    80004c98:	00e50733          	add	a4,a0,a4
    80004c9c:	00b70023          	sb	a1,0(a4)
    80004ca0:	0067871b          	addiw	a4,a5,6
    80004ca4:	06c77e63          	bgeu	a4,a2,80004d20 <__memset+0x1c8>
    80004ca8:	00e50733          	add	a4,a0,a4
    80004cac:	00b70023          	sb	a1,0(a4)
    80004cb0:	0077871b          	addiw	a4,a5,7
    80004cb4:	06c77663          	bgeu	a4,a2,80004d20 <__memset+0x1c8>
    80004cb8:	00e50733          	add	a4,a0,a4
    80004cbc:	00b70023          	sb	a1,0(a4)
    80004cc0:	0087871b          	addiw	a4,a5,8
    80004cc4:	04c77e63          	bgeu	a4,a2,80004d20 <__memset+0x1c8>
    80004cc8:	00e50733          	add	a4,a0,a4
    80004ccc:	00b70023          	sb	a1,0(a4)
    80004cd0:	0097871b          	addiw	a4,a5,9
    80004cd4:	04c77663          	bgeu	a4,a2,80004d20 <__memset+0x1c8>
    80004cd8:	00e50733          	add	a4,a0,a4
    80004cdc:	00b70023          	sb	a1,0(a4)
    80004ce0:	00a7871b          	addiw	a4,a5,10
    80004ce4:	02c77e63          	bgeu	a4,a2,80004d20 <__memset+0x1c8>
    80004ce8:	00e50733          	add	a4,a0,a4
    80004cec:	00b70023          	sb	a1,0(a4)
    80004cf0:	00b7871b          	addiw	a4,a5,11
    80004cf4:	02c77663          	bgeu	a4,a2,80004d20 <__memset+0x1c8>
    80004cf8:	00e50733          	add	a4,a0,a4
    80004cfc:	00b70023          	sb	a1,0(a4)
    80004d00:	00c7871b          	addiw	a4,a5,12
    80004d04:	00c77e63          	bgeu	a4,a2,80004d20 <__memset+0x1c8>
    80004d08:	00e50733          	add	a4,a0,a4
    80004d0c:	00b70023          	sb	a1,0(a4)
    80004d10:	00d7879b          	addiw	a5,a5,13
    80004d14:	00c7f663          	bgeu	a5,a2,80004d20 <__memset+0x1c8>
    80004d18:	00f507b3          	add	a5,a0,a5
    80004d1c:	00b78023          	sb	a1,0(a5)
    80004d20:	00813403          	ld	s0,8(sp)
    80004d24:	01010113          	addi	sp,sp,16
    80004d28:	00008067          	ret
    80004d2c:	00b00693          	li	a3,11
    80004d30:	e55ff06f          	j	80004b84 <__memset+0x2c>
    80004d34:	00300e93          	li	t4,3
    80004d38:	ea5ff06f          	j	80004bdc <__memset+0x84>
    80004d3c:	00100e93          	li	t4,1
    80004d40:	e9dff06f          	j	80004bdc <__memset+0x84>
    80004d44:	00000e93          	li	t4,0
    80004d48:	e95ff06f          	j	80004bdc <__memset+0x84>
    80004d4c:	00000793          	li	a5,0
    80004d50:	ef9ff06f          	j	80004c48 <__memset+0xf0>
    80004d54:	00200e93          	li	t4,2
    80004d58:	e85ff06f          	j	80004bdc <__memset+0x84>
    80004d5c:	00400e93          	li	t4,4
    80004d60:	e7dff06f          	j	80004bdc <__memset+0x84>
    80004d64:	00500e93          	li	t4,5
    80004d68:	e75ff06f          	j	80004bdc <__memset+0x84>
    80004d6c:	00600e93          	li	t4,6
    80004d70:	e6dff06f          	j	80004bdc <__memset+0x84>

0000000080004d74 <__memmove>:
    80004d74:	ff010113          	addi	sp,sp,-16
    80004d78:	00813423          	sd	s0,8(sp)
    80004d7c:	01010413          	addi	s0,sp,16
    80004d80:	0e060863          	beqz	a2,80004e70 <__memmove+0xfc>
    80004d84:	fff6069b          	addiw	a3,a2,-1
    80004d88:	0006881b          	sext.w	a6,a3
    80004d8c:	0ea5e863          	bltu	a1,a0,80004e7c <__memmove+0x108>
    80004d90:	00758713          	addi	a4,a1,7
    80004d94:	00a5e7b3          	or	a5,a1,a0
    80004d98:	40a70733          	sub	a4,a4,a0
    80004d9c:	0077f793          	andi	a5,a5,7
    80004da0:	00f73713          	sltiu	a4,a4,15
    80004da4:	00174713          	xori	a4,a4,1
    80004da8:	0017b793          	seqz	a5,a5
    80004dac:	00e7f7b3          	and	a5,a5,a4
    80004db0:	10078863          	beqz	a5,80004ec0 <__memmove+0x14c>
    80004db4:	00900793          	li	a5,9
    80004db8:	1107f463          	bgeu	a5,a6,80004ec0 <__memmove+0x14c>
    80004dbc:	0036581b          	srliw	a6,a2,0x3
    80004dc0:	fff8081b          	addiw	a6,a6,-1
    80004dc4:	02081813          	slli	a6,a6,0x20
    80004dc8:	01d85893          	srli	a7,a6,0x1d
    80004dcc:	00858813          	addi	a6,a1,8
    80004dd0:	00058793          	mv	a5,a1
    80004dd4:	00050713          	mv	a4,a0
    80004dd8:	01088833          	add	a6,a7,a6
    80004ddc:	0007b883          	ld	a7,0(a5)
    80004de0:	00878793          	addi	a5,a5,8
    80004de4:	00870713          	addi	a4,a4,8
    80004de8:	ff173c23          	sd	a7,-8(a4)
    80004dec:	ff0798e3          	bne	a5,a6,80004ddc <__memmove+0x68>
    80004df0:	ff867713          	andi	a4,a2,-8
    80004df4:	02071793          	slli	a5,a4,0x20
    80004df8:	0207d793          	srli	a5,a5,0x20
    80004dfc:	00f585b3          	add	a1,a1,a5
    80004e00:	40e686bb          	subw	a3,a3,a4
    80004e04:	00f507b3          	add	a5,a0,a5
    80004e08:	06e60463          	beq	a2,a4,80004e70 <__memmove+0xfc>
    80004e0c:	0005c703          	lbu	a4,0(a1)
    80004e10:	00e78023          	sb	a4,0(a5)
    80004e14:	04068e63          	beqz	a3,80004e70 <__memmove+0xfc>
    80004e18:	0015c603          	lbu	a2,1(a1)
    80004e1c:	00100713          	li	a4,1
    80004e20:	00c780a3          	sb	a2,1(a5)
    80004e24:	04e68663          	beq	a3,a4,80004e70 <__memmove+0xfc>
    80004e28:	0025c603          	lbu	a2,2(a1)
    80004e2c:	00200713          	li	a4,2
    80004e30:	00c78123          	sb	a2,2(a5)
    80004e34:	02e68e63          	beq	a3,a4,80004e70 <__memmove+0xfc>
    80004e38:	0035c603          	lbu	a2,3(a1)
    80004e3c:	00300713          	li	a4,3
    80004e40:	00c781a3          	sb	a2,3(a5)
    80004e44:	02e68663          	beq	a3,a4,80004e70 <__memmove+0xfc>
    80004e48:	0045c603          	lbu	a2,4(a1)
    80004e4c:	00400713          	li	a4,4
    80004e50:	00c78223          	sb	a2,4(a5)
    80004e54:	00e68e63          	beq	a3,a4,80004e70 <__memmove+0xfc>
    80004e58:	0055c603          	lbu	a2,5(a1)
    80004e5c:	00500713          	li	a4,5
    80004e60:	00c782a3          	sb	a2,5(a5)
    80004e64:	00e68663          	beq	a3,a4,80004e70 <__memmove+0xfc>
    80004e68:	0065c703          	lbu	a4,6(a1)
    80004e6c:	00e78323          	sb	a4,6(a5)
    80004e70:	00813403          	ld	s0,8(sp)
    80004e74:	01010113          	addi	sp,sp,16
    80004e78:	00008067          	ret
    80004e7c:	02061713          	slli	a4,a2,0x20
    80004e80:	02075713          	srli	a4,a4,0x20
    80004e84:	00e587b3          	add	a5,a1,a4
    80004e88:	f0f574e3          	bgeu	a0,a5,80004d90 <__memmove+0x1c>
    80004e8c:	02069613          	slli	a2,a3,0x20
    80004e90:	02065613          	srli	a2,a2,0x20
    80004e94:	fff64613          	not	a2,a2
    80004e98:	00e50733          	add	a4,a0,a4
    80004e9c:	00c78633          	add	a2,a5,a2
    80004ea0:	fff7c683          	lbu	a3,-1(a5)
    80004ea4:	fff78793          	addi	a5,a5,-1
    80004ea8:	fff70713          	addi	a4,a4,-1
    80004eac:	00d70023          	sb	a3,0(a4)
    80004eb0:	fec798e3          	bne	a5,a2,80004ea0 <__memmove+0x12c>
    80004eb4:	00813403          	ld	s0,8(sp)
    80004eb8:	01010113          	addi	sp,sp,16
    80004ebc:	00008067          	ret
    80004ec0:	02069713          	slli	a4,a3,0x20
    80004ec4:	02075713          	srli	a4,a4,0x20
    80004ec8:	00170713          	addi	a4,a4,1
    80004ecc:	00e50733          	add	a4,a0,a4
    80004ed0:	00050793          	mv	a5,a0
    80004ed4:	0005c683          	lbu	a3,0(a1)
    80004ed8:	00178793          	addi	a5,a5,1
    80004edc:	00158593          	addi	a1,a1,1
    80004ee0:	fed78fa3          	sb	a3,-1(a5)
    80004ee4:	fee798e3          	bne	a5,a4,80004ed4 <__memmove+0x160>
    80004ee8:	f89ff06f          	j	80004e70 <__memmove+0xfc>
	...
