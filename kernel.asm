
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	37013103          	ld	sp,880(sp) # 8000b370 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	378060ef          	jal	ra,80006394 <start>

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
    80001084:	009000ef          	jal	ra,8000188c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm>

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

0000000080001124 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001124:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001128:	00b29a63          	bne	t0,a1,8000113c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000112c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001130:	fe029ae3          	bnez	t0,80001124 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001134:	00000513          	li	a0,0
    jr ra                  # Return.
    80001138:	00008067          	ret

000000008000113c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000113c:	00100513          	li	a0,1
    80001140:	00008067          	ret

0000000080001144 <_ZN7kBufferC1Ev>:
#include "../h/Buffer.h"

kBuffer::kBuffer(): count(0), head(0), tail(0){
    80001144:	ff010113          	addi	sp,sp,-16
    80001148:	00813423          	sd	s0,8(sp)
    8000114c:	01010413          	addi	s0,sp,16
    80001150:	00052023          	sw	zero,0(a0)
    80001154:	00052223          	sw	zero,4(a0)
    80001158:	00052423          	sw	zero,8(a0)

}
    8000115c:	00813403          	ld	s0,8(sp)
    80001160:	01010113          	addi	sp,sp,16
    80001164:	00008067          	ret

0000000080001168 <_ZN7kBuffer3putEc>:

void kBuffer::put(char c) {
    80001168:	ff010113          	addi	sp,sp,-16
    8000116c:	00813423          	sd	s0,8(sp)
    80001170:	01010413          	addi	s0,sp,16
    buffer[tail] = c;
    80001174:	00852783          	lw	a5,8(a0)
    80001178:	00f50733          	add	a4,a0,a5
    8000117c:	00b70623          	sb	a1,12(a4)
    tail = (tail + 1 ) % kBuffer::capacity;
    80001180:	0017879b          	addiw	a5,a5,1
    80001184:	41f7d71b          	sraiw	a4,a5,0x1f
    80001188:	0187571b          	srliw	a4,a4,0x18
    8000118c:	00e787bb          	addw	a5,a5,a4
    80001190:	0ff7f793          	andi	a5,a5,255
    80001194:	40e787bb          	subw	a5,a5,a4
    80001198:	00f52423          	sw	a5,8(a0)
    count++;
    8000119c:	00052783          	lw	a5,0(a0)
    800011a0:	0017879b          	addiw	a5,a5,1
    800011a4:	00f52023          	sw	a5,0(a0)
}
    800011a8:	00813403          	ld	s0,8(sp)
    800011ac:	01010113          	addi	sp,sp,16
    800011b0:	00008067          	ret

00000000800011b4 <_ZN7kBuffer3getEv>:


char kBuffer::get() {
    800011b4:	ff010113          	addi	sp,sp,-16
    800011b8:	00813423          	sd	s0,8(sp)
    800011bc:	01010413          	addi	s0,sp,16
    800011c0:	00050713          	mv	a4,a0
    char x = buffer[head];
    800011c4:	00452783          	lw	a5,4(a0)
    800011c8:	00f506b3          	add	a3,a0,a5
    800011cc:	00c6c503          	lbu	a0,12(a3)
    head = (head + 1 ) % kBuffer::capacity;
    800011d0:	0017879b          	addiw	a5,a5,1
    800011d4:	41f7d69b          	sraiw	a3,a5,0x1f
    800011d8:	0186d69b          	srliw	a3,a3,0x18
    800011dc:	00d787bb          	addw	a5,a5,a3
    800011e0:	0ff7f793          	andi	a5,a5,255
    800011e4:	40d787bb          	subw	a5,a5,a3
    800011e8:	00f72223          	sw	a5,4(a4)
    count--;
    800011ec:	00072783          	lw	a5,0(a4)
    800011f0:	fff7879b          	addiw	a5,a5,-1
    800011f4:	00f72023          	sw	a5,0(a4)
    return x;
}
    800011f8:	00813403          	ld	s0,8(sp)
    800011fc:	01010113          	addi	sp,sp,16
    80001200:	00008067          	ret

0000000080001204 <_ZN7kBuffer6isFullEv>:

bool kBuffer::isFull() {
    80001204:	ff010113          	addi	sp,sp,-16
    80001208:	00813423          	sd	s0,8(sp)
    8000120c:	01010413          	addi	s0,sp,16
    return count == capacity;
    80001210:	00052503          	lw	a0,0(a0)
    80001214:	f0050513          	addi	a0,a0,-256
}
    80001218:	00153513          	seqz	a0,a0
    8000121c:	00813403          	ld	s0,8(sp)
    80001220:	01010113          	addi	sp,sp,16
    80001224:	00008067          	ret

0000000080001228 <_ZN7kBuffer7isEmptyEv>:

bool kBuffer::isEmpty() {
    80001228:	ff010113          	addi	sp,sp,-16
    8000122c:	00813423          	sd	s0,8(sp)
    80001230:	01010413          	addi	s0,sp,16
    return count == 0;
    80001234:	00052503          	lw	a0,0(a0)
}
    80001238:	00153513          	seqz	a0,a0
    8000123c:	00813403          	ld	s0,8(sp)
    80001240:	01010113          	addi	sp,sp,16
    80001244:	00008067          	ret

0000000080001248 <_ZN8_console10ensureInitEv>:
_sem* _console::outSem = nullptr;

bool _console::initialized = false;

void _console::ensureInit() {
    if (initialized) return;
    80001248:	0000a797          	auipc	a5,0xa
    8000124c:	5187c783          	lbu	a5,1304(a5) # 8000b760 <_ZN8_console11initializedE>
    80001250:	00078463          	beqz	a5,80001258 <_ZN8_console10ensureInitEv+0x10>
    80001254:	00008067          	ret
void _console::ensureInit() {
    80001258:	fe010113          	addi	sp,sp,-32
    8000125c:	00113c23          	sd	ra,24(sp)
    80001260:	00813823          	sd	s0,16(sp)
    80001264:	00913423          	sd	s1,8(sp)
    80001268:	01213023          	sd	s2,0(sp)
    8000126c:	02010413          	addi	s0,sp,32
    inbuff  = new kBuffer();
    80001270:	10c00513          	li	a0,268
    80001274:	00001097          	auipc	ra,0x1
    80001278:	3c8080e7          	jalr	968(ra) # 8000263c <_Znwm>
    8000127c:	00050493          	mv	s1,a0
    80001280:	00000097          	auipc	ra,0x0
    80001284:	ec4080e7          	jalr	-316(ra) # 80001144 <_ZN7kBufferC1Ev>
    80001288:	0000a797          	auipc	a5,0xa
    8000128c:	4e97bc23          	sd	s1,1272(a5) # 8000b780 <_ZN8_console6inbuffE>
    outbuff = new kBuffer();
    80001290:	10c00513          	li	a0,268
    80001294:	00001097          	auipc	ra,0x1
    80001298:	3a8080e7          	jalr	936(ra) # 8000263c <_Znwm>
    8000129c:	00050493          	mv	s1,a0
    800012a0:	00000097          	auipc	ra,0x0
    800012a4:	ea4080e7          	jalr	-348(ra) # 80001144 <_ZN7kBufferC1Ev>
    800012a8:	0000a797          	auipc	a5,0xa
    800012ac:	4c97b823          	sd	s1,1232(a5) # 8000b778 <_ZN8_console7outbuffE>

class _sem {
public:

    void* operator new(size_t size){
        void* ptr = MemoryAllocator::kmalloc(size);
    800012b0:	02000513          	li	a0,32
    800012b4:	00000097          	auipc	ra,0x0
    800012b8:	38c080e7          	jalr	908(ra) # 80001640 <_ZN15MemoryAllocator7kmallocEm>
    800012bc:	00050493          	mv	s1,a0
    inSem   = new _sem(0);
    800012c0:	00000593          	li	a1,0
    800012c4:	00001097          	auipc	ra,0x1
    800012c8:	c18080e7          	jalr	-1000(ra) # 80001edc <_ZN4_semC1Ei>
    800012cc:	0000a797          	auipc	a5,0xa
    800012d0:	4a97b223          	sd	s1,1188(a5) # 8000b770 <_ZN8_console5inSemE>
    800012d4:	02000513          	li	a0,32
    800012d8:	00000097          	auipc	ra,0x0
    800012dc:	368080e7          	jalr	872(ra) # 80001640 <_ZN15MemoryAllocator7kmallocEm>
    800012e0:	00050493          	mv	s1,a0
    outSem  = new _sem(256);
    800012e4:	10000593          	li	a1,256
    800012e8:	00001097          	auipc	ra,0x1
    800012ec:	bf4080e7          	jalr	-1036(ra) # 80001edc <_ZN4_semC1Ei>
    800012f0:	0000a797          	auipc	a5,0xa
    800012f4:	4697bc23          	sd	s1,1144(a5) # 8000b768 <_ZN8_console6outSemE>
    initialized = true;
    800012f8:	00100793          	li	a5,1
    800012fc:	0000a717          	auipc	a4,0xa
    80001300:	46f70223          	sb	a5,1124(a4) # 8000b760 <_ZN8_console11initializedE>
}
    80001304:	01813083          	ld	ra,24(sp)
    80001308:	01013403          	ld	s0,16(sp)
    8000130c:	00813483          	ld	s1,8(sp)
    80001310:	00013903          	ld	s2,0(sp)
    80001314:	02010113          	addi	sp,sp,32
    80001318:	00008067          	ret
    inbuff  = new kBuffer();
    8000131c:	00050913          	mv	s2,a0
    80001320:	00048513          	mv	a0,s1
    80001324:	00001097          	auipc	ra,0x1
    80001328:	340080e7          	jalr	832(ra) # 80002664 <_ZdlPv>
    8000132c:	00090513          	mv	a0,s2
    80001330:	0000b097          	auipc	ra,0xb
    80001334:	5d8080e7          	jalr	1496(ra) # 8000c908 <_Unwind_Resume>
    outbuff = new kBuffer();
    80001338:	00050913          	mv	s2,a0
    8000133c:	00048513          	mv	a0,s1
    80001340:	00001097          	auipc	ra,0x1
    80001344:	324080e7          	jalr	804(ra) # 80002664 <_ZdlPv>
    80001348:	00090513          	mv	a0,s2
    8000134c:	0000b097          	auipc	ra,0xb
    80001350:	5bc080e7          	jalr	1468(ra) # 8000c908 <_Unwind_Resume>
    inSem   = new _sem(0);
    80001354:	00050913          	mv	s2,a0
    80001358:	00048513          	mv	a0,s1
    8000135c:	00001097          	auipc	ra,0x1
    80001360:	308080e7          	jalr	776(ra) # 80002664 <_ZdlPv>
    80001364:	00090513          	mv	a0,s2
    80001368:	0000b097          	auipc	ra,0xb
    8000136c:	5a0080e7          	jalr	1440(ra) # 8000c908 <_Unwind_Resume>
    outSem  = new _sem(256);
    80001370:	00050913          	mv	s2,a0
    80001374:	00048513          	mv	a0,s1
    80001378:	00001097          	auipc	ra,0x1
    8000137c:	2ec080e7          	jalr	748(ra) # 80002664 <_ZdlPv>
    80001380:	00090513          	mv	a0,s2
    80001384:	0000b097          	auipc	ra,0xb
    80001388:	584080e7          	jalr	1412(ra) # 8000c908 <_Unwind_Resume>

000000008000138c <_ZN8_console4getcEv>:



char _console::getc() {
    8000138c:	ff010113          	addi	sp,sp,-16
    80001390:	00113423          	sd	ra,8(sp)
    80001394:	00813023          	sd	s0,0(sp)
    80001398:	01010413          	addi	s0,sp,16
    ensureInit();
    8000139c:	00000097          	auipc	ra,0x0
    800013a0:	eac080e7          	jalr	-340(ra) # 80001248 <_ZN8_console10ensureInitEv>

    return inbuff->get();
    800013a4:	0000a517          	auipc	a0,0xa
    800013a8:	3dc53503          	ld	a0,988(a0) # 8000b780 <_ZN8_console6inbuffE>
    800013ac:	00000097          	auipc	ra,0x0
    800013b0:	e08080e7          	jalr	-504(ra) # 800011b4 <_ZN7kBuffer3getEv>
}
    800013b4:	00813083          	ld	ra,8(sp)
    800013b8:	00013403          	ld	s0,0(sp)
    800013bc:	01010113          	addi	sp,sp,16
    800013c0:	00008067          	ret

00000000800013c4 <_ZN8_console4putcEc>:

void _console::putc(char c) {
    800013c4:	fe010113          	addi	sp,sp,-32
    800013c8:	00113c23          	sd	ra,24(sp)
    800013cc:	00813823          	sd	s0,16(sp)
    800013d0:	00913423          	sd	s1,8(sp)
    800013d4:	02010413          	addi	s0,sp,32
    800013d8:	00050493          	mv	s1,a0
    ensureInit();
    800013dc:	00000097          	auipc	ra,0x0
    800013e0:	e6c080e7          	jalr	-404(ra) # 80001248 <_ZN8_console10ensureInitEv>
    outbuff->put(c);
    800013e4:	00048593          	mv	a1,s1
    800013e8:	0000a517          	auipc	a0,0xa
    800013ec:	39053503          	ld	a0,912(a0) # 8000b778 <_ZN8_console7outbuffE>
    800013f0:	00000097          	auipc	ra,0x0
    800013f4:	d78080e7          	jalr	-648(ra) # 80001168 <_ZN7kBuffer3putEc>

    	while ((*((volatile uint8*)CONSOLE_STATUS) & 0x01) && !_console::getInBuff()->isFull()) {
    800013f8:	00008497          	auipc	s1,0x8
    800013fc:	c184b483          	ld	s1,-1000(s1) # 80009010 <CONSOLE_STATUS>
    80001400:	0004c783          	lbu	a5,0(s1)
    80001404:	0017f793          	andi	a5,a5,1
    80001408:	06078463          	beqz	a5,80001470 <_ZN8_console4putcEc+0xac>
    static char getc();
    static void putc(char c);

    static kBuffer *getInBuff()
    {
        ensureInit();
    8000140c:	00000097          	auipc	ra,0x0
    80001410:	e3c080e7          	jalr	-452(ra) # 80001248 <_ZN8_console10ensureInitEv>
    80001414:	0000a517          	auipc	a0,0xa
    80001418:	36c53503          	ld	a0,876(a0) # 8000b780 <_ZN8_console6inbuffE>
    8000141c:	00000097          	auipc	ra,0x0
    80001420:	de8080e7          	jalr	-536(ra) # 80001204 <_ZN7kBuffer6isFullEv>
    80001424:	04051663          	bnez	a0,80001470 <_ZN8_console4putcEc+0xac>
    		char c = *((volatile uint8*)CONSOLE_RX_DATA);
    80001428:	00008797          	auipc	a5,0x8
    8000142c:	bd87b783          	ld	a5,-1064(a5) # 80009000 <CONSOLE_RX_DATA>
    80001430:	0007c483          	lbu	s1,0(a5)
    80001434:	0ff4f493          	andi	s1,s1,255
    80001438:	00000097          	auipc	ra,0x0
    8000143c:	e10080e7          	jalr	-496(ra) # 80001248 <_ZN8_console10ensureInitEv>
    		_console::getInBuff()->put(c);
    80001440:	00048593          	mv	a1,s1
    80001444:	0000a517          	auipc	a0,0xa
    80001448:	33c53503          	ld	a0,828(a0) # 8000b780 <_ZN8_console6inbuffE>
    8000144c:	00000097          	auipc	ra,0x0
    80001450:	d1c080e7          	jalr	-740(ra) # 80001168 <_ZN7kBuffer3putEc>
        ensureInit();
        return outbuff;
    }
    static _sem *getInSem()
    {
        ensureInit();
    80001454:	00000097          	auipc	ra,0x0
    80001458:	df4080e7          	jalr	-524(ra) # 80001248 <_ZN8_console10ensureInitEv>
    		_console::getInSem()->signal();
    8000145c:	0000a517          	auipc	a0,0xa
    80001460:	31453503          	ld	a0,788(a0) # 8000b770 <_ZN8_console5inSemE>
    80001464:	00001097          	auipc	ra,0x1
    80001468:	d64080e7          	jalr	-668(ra) # 800021c8 <_ZN4_sem6signalEv>
    	while ((*((volatile uint8*)CONSOLE_STATUS) & 0x01) && !_console::getInBuff()->isFull()) {
    8000146c:	f8dff06f          	j	800013f8 <_ZN8_console4putcEc+0x34>
    	}

    	
    	while ((*((volatile uint8*)CONSOLE_STATUS) & 0x20) && !_console::getOutBuff()->isEmpty()) {
    80001470:	0004c783          	lbu	a5,0(s1)
    80001474:	0207f793          	andi	a5,a5,32
    80001478:	06078063          	beqz	a5,800014d8 <_ZN8_console4putcEc+0x114>
        ensureInit();
    8000147c:	00000097          	auipc	ra,0x0
    80001480:	dcc080e7          	jalr	-564(ra) # 80001248 <_ZN8_console10ensureInitEv>
    80001484:	0000a517          	auipc	a0,0xa
    80001488:	2f453503          	ld	a0,756(a0) # 8000b778 <_ZN8_console7outbuffE>
    8000148c:	00000097          	auipc	ra,0x0
    80001490:	d9c080e7          	jalr	-612(ra) # 80001228 <_ZN7kBuffer7isEmptyEv>
    80001494:	04051263          	bnez	a0,800014d8 <_ZN8_console4putcEc+0x114>
    80001498:	00000097          	auipc	ra,0x0
    8000149c:	db0080e7          	jalr	-592(ra) # 80001248 <_ZN8_console10ensureInitEv>
    		char c = _console::getOutBuff()->get();
    800014a0:	0000a517          	auipc	a0,0xa
    800014a4:	2d853503          	ld	a0,728(a0) # 8000b778 <_ZN8_console7outbuffE>
    800014a8:	00000097          	auipc	ra,0x0
    800014ac:	d0c080e7          	jalr	-756(ra) # 800011b4 <_ZN7kBuffer3getEv>
    		*((volatile uint8*)CONSOLE_TX_DATA) = (uint8)c;
    800014b0:	00008797          	auipc	a5,0x8
    800014b4:	b587b783          	ld	a5,-1192(a5) # 80009008 <CONSOLE_TX_DATA>
    800014b8:	00a78023          	sb	a0,0(a5)
        return inSem;
    }
    static _sem *getOutSem()
    {
        ensureInit();
    800014bc:	00000097          	auipc	ra,0x0
    800014c0:	d8c080e7          	jalr	-628(ra) # 80001248 <_ZN8_console10ensureInitEv>
    		_console::getOutSem()->signal();
    800014c4:	0000a517          	auipc	a0,0xa
    800014c8:	2a453503          	ld	a0,676(a0) # 8000b768 <_ZN8_console6outSemE>
    800014cc:	00001097          	auipc	ra,0x1
    800014d0:	cfc080e7          	jalr	-772(ra) # 800021c8 <_ZN4_sem6signalEv>
    	while ((*((volatile uint8*)CONSOLE_STATUS) & 0x20) && !_console::getOutBuff()->isEmpty()) {
    800014d4:	f9dff06f          	j	80001470 <_ZN8_console4putcEc+0xac>
    	}
    	
    800014d8:	01813083          	ld	ra,24(sp)
    800014dc:	01013403          	ld	s0,16(sp)
    800014e0:	00813483          	ld	s1,8(sp)
    800014e4:	02010113          	addi	sp,sp,32
    800014e8:	00008067          	ret

00000000800014ec <_Z11testwrapperPv>:
#include "../h/Thread.h"

sem_t mainsem;
extern void userMain();
void testwrapper(void *)
{
    800014ec:	ff010113          	addi	sp,sp,-16
    800014f0:	00113423          	sd	ra,8(sp)
    800014f4:	00813023          	sd	s0,0(sp)
    800014f8:	01010413          	addi	s0,sp,16
    userMain();
    800014fc:	00005097          	auipc	ra,0x5
    80001500:	d44080e7          	jalr	-700(ra) # 80006240 <_Z8userMainv>
    sem_signal(mainsem);
    80001504:	0000a517          	auipc	a0,0xa
    80001508:	28453503          	ld	a0,644(a0) # 8000b788 <mainsem>
    8000150c:	00001097          	auipc	ra,0x1
    80001510:	ef4080e7          	jalr	-268(ra) # 80002400 <_Z10sem_signalP4_sem>
}
    80001514:	00813083          	ld	ra,8(sp)
    80001518:	00013403          	ld	s0,0(sp)
    8000151c:	01010113          	addi	sp,sp,16
    80001520:	00008067          	ret

0000000080001524 <_Z5idlefPv>:
void idlef(void *)
{
    80001524:	ff010113          	addi	sp,sp,-16
    80001528:	00113423          	sd	ra,8(sp)
    8000152c:	00813023          	sd	s0,0(sp)
    80001530:	01010413          	addi	s0,sp,16
    while (1)
        thread_dispatch();
    80001534:	00001097          	auipc	ra,0x1
    80001538:	dc0080e7          	jalr	-576(ra) # 800022f4 <_Z15thread_dispatchv>
    while (1)
    8000153c:	ff9ff06f          	j	80001534 <_Z5idlefPv+0x10>

0000000080001540 <main>:
}

int main()
{
    80001540:	fd010113          	addi	sp,sp,-48
    80001544:	02113423          	sd	ra,40(sp)
    80001548:	02813023          	sd	s0,32(sp)
    8000154c:	03010413          	addi	s0,sp,48

    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    80001550:	00000797          	auipc	a5,0x0
    80001554:	ab078793          	addi	a5,a5,-1360 # 80001000 <_ZN5Riscv14supervisorTrapEv>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001558:	10579073          	csrw	stvec,a5

    // Registruj main nit
    thread_t mainHandle;
    thread_create(&mainHandle, nullptr, nullptr);
    8000155c:	00000613          	li	a2,0
    80001560:	00000593          	li	a1,0
    80001564:	fe840513          	addi	a0,s0,-24
    80001568:	00001097          	auipc	ra,0x1
    8000156c:	d00080e7          	jalr	-768(ra) # 80002268 <_Z13thread_createPP7_threadPFvPvES2_>
    _thread::running = (_thread *)mainHandle;
    80001570:	fe843783          	ld	a5,-24(s0)
    80001574:	0000a717          	auipc	a4,0xa
    80001578:	24f73223          	sd	a5,580(a4) # 8000b7b8 <_ZN7_thread7runningE>

    // Kreiraj idle nit
    thread_t idleHandle;
    thread_create(&idleHandle, idlef, nullptr);
    8000157c:	00000613          	li	a2,0
    80001580:	00000597          	auipc	a1,0x0
    80001584:	fa458593          	addi	a1,a1,-92 # 80001524 <_Z5idlefPv>
    80001588:	fe040513          	addi	a0,s0,-32
    8000158c:	00001097          	auipc	ra,0x1
    80001590:	cdc080e7          	jalr	-804(ra) # 80002268 <_Z13thread_createPP7_threadPFvPvES2_>

    sem_open(&mainsem, 0);
    80001594:	00000593          	li	a1,0
    80001598:	0000a517          	auipc	a0,0xa
    8000159c:	1f050513          	addi	a0,a0,496 # 8000b788 <mainsem>
    800015a0:	00001097          	auipc	ra,0x1
    800015a4:	dac080e7          	jalr	-596(ra) # 8000234c <_Z8sem_openPP4_semj>

    thread_t testthread;
    thread_create(&testthread, testwrapper, nullptr);
    800015a8:	00000613          	li	a2,0
    800015ac:	00000597          	auipc	a1,0x0
    800015b0:	f4058593          	addi	a1,a1,-192 # 800014ec <_Z11testwrapperPv>
    800015b4:	fd840513          	addi	a0,s0,-40
    800015b8:	00001097          	auipc	ra,0x1
    800015bc:	cb0080e7          	jalr	-848(ra) # 80002268 <_Z13thread_createPP7_threadPFvPvES2_>

    sem_wait(mainsem);
    800015c0:	0000a517          	auipc	a0,0xa
    800015c4:	1c853503          	ld	a0,456(a0) # 8000b788 <mainsem>
    800015c8:	00001097          	auipc	ra,0x1
    800015cc:	e00080e7          	jalr	-512(ra) # 800023c8 <_Z8sem_waitP4_sem>

    return 0;
    800015d0:	00000513          	li	a0,0
    800015d4:	02813083          	ld	ra,40(sp)
    800015d8:	02013403          	ld	s0,32(sp)
    800015dc:	03010113          	addi	sp,sp,48
    800015e0:	00008067          	ret

00000000800015e4 <_ZN15MemoryAllocator4initEv>:

    return address;
}

void MemoryAllocator::init()
{
    800015e4:	ff010113          	addi	sp,sp,-16
    800015e8:	00813423          	sd	s0,8(sp)
    800015ec:	01010413          	addi	s0,sp,16
    size_t start = (size_t)HEAP_START_ADDR;
    800015f0:	0000a797          	auipc	a5,0xa
    800015f4:	d507b783          	ld	a5,-688(a5) # 8000b340 <HEAP_START_ADDR>
    size_t end = (size_t)HEAP_END_ADDR;
    800015f8:	0000a717          	auipc	a4,0xa
    800015fc:	d4073703          	ld	a4,-704(a4) # 8000b338 <HEAP_END_ADDR>

    start = start % MEM_BLOCK_SIZE == 0 ? start : (start - start % MEM_BLOCK_SIZE) + MEM_BLOCK_SIZE;
    80001600:	03f7f693          	andi	a3,a5,63
    80001604:	00068663          	beqz	a3,80001610 <_ZN15MemoryAllocator4initEv+0x2c>
    80001608:	fc07f793          	andi	a5,a5,-64
    8000160c:	04078793          	addi	a5,a5,64
    end = end % MEM_BLOCK_SIZE == 0 ? end : (end - end % MEM_BLOCK_SIZE);
    80001610:	03f77693          	andi	a3,a4,63
    80001614:	00068463          	beqz	a3,8000161c <_ZN15MemoryAllocator4initEv+0x38>
    80001618:	fc077713          	andi	a4,a4,-64

    head = (segmentHeader *)start;
    8000161c:	0000a697          	auipc	a3,0xa
    80001620:	16f6ba23          	sd	a5,372(a3) # 8000b790 <_ZN15MemoryAllocator4headE>
    head->size = end - start - MEM_BLOCK_SIZE;
    80001624:	40f70733          	sub	a4,a4,a5
    80001628:	fc070713          	addi	a4,a4,-64
    8000162c:	00e7b423          	sd	a4,8(a5)
    head->next = nullptr;
    80001630:	0007b023          	sd	zero,0(a5)
}
    80001634:	00813403          	ld	s0,8(sp)
    80001638:	01010113          	addi	sp,sp,16
    8000163c:	00008067          	ret

0000000080001640 <_ZN15MemoryAllocator7kmallocEm>:
{ // argument is in bytes
    80001640:	fe010113          	addi	sp,sp,-32
    80001644:	00113c23          	sd	ra,24(sp)
    80001648:	00813823          	sd	s0,16(sp)
    8000164c:	00913423          	sd	s1,8(sp)
    80001650:	02010413          	addi	s0,sp,32
    80001654:	00050493          	mv	s1,a0
    if (!isinit)
    80001658:	0000a797          	auipc	a5,0xa
    8000165c:	1407c783          	lbu	a5,320(a5) # 8000b798 <_ZN15MemoryAllocator6isinitE>
    80001660:	00078e63          	beqz	a5,8000167c <_ZN15MemoryAllocator7kmallocEm+0x3c>
    size_t bytes_needed = (size_t)((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
    80001664:	03f48713          	addi	a4,s1,63
    80001668:	fc077713          	andi	a4,a4,-64
    segmentHeader *curr = head;
    8000166c:	0000a797          	auipc	a5,0xa
    80001670:	1247b783          	ld	a5,292(a5) # 8000b790 <_ZN15MemoryAllocator4headE>
    segmentHeader *prev = nullptr;
    80001674:	00000613          	li	a2,0
    80001678:	0240006f          	j	8000169c <_ZN15MemoryAllocator7kmallocEm+0x5c>
        isinit = true;
    8000167c:	00100793          	li	a5,1
    80001680:	0000a717          	auipc	a4,0xa
    80001684:	10f70c23          	sb	a5,280(a4) # 8000b798 <_ZN15MemoryAllocator6isinitE>
        init();
    80001688:	00000097          	auipc	ra,0x0
    8000168c:	f5c080e7          	jalr	-164(ra) # 800015e4 <_ZN15MemoryAllocator4initEv>
    80001690:	fd5ff06f          	j	80001664 <_ZN15MemoryAllocator7kmallocEm+0x24>
        prev = curr;
    80001694:	00078613          	mv	a2,a5
    for (; curr; curr = curr->next)
    80001698:	0007b783          	ld	a5,0(a5)
    8000169c:	00078a63          	beqz	a5,800016b0 <_ZN15MemoryAllocator7kmallocEm+0x70>
        if (curr->size >= bytes_needed)
    800016a0:	0087b683          	ld	a3,8(a5)
    800016a4:	fee6e8e3          	bltu	a3,a4,80001694 <_ZN15MemoryAllocator7kmallocEm+0x54>
            address = (void *)((size_t)curr + MEM_BLOCK_SIZE);
    800016a8:	04078513          	addi	a0,a5,64
            break;
    800016ac:	0080006f          	j	800016b4 <_ZN15MemoryAllocator7kmallocEm+0x74>
    void *address = nullptr;
    800016b0:	00078513          	mv	a0,a5
    if (!curr)
    800016b4:	06078063          	beqz	a5,80001714 <_ZN15MemoryAllocator7kmallocEm+0xd4>
    size_t remaining_bytes = curr->size - bytes_needed;
    800016b8:	0087b683          	ld	a3,8(a5)
    800016bc:	40e686b3          	sub	a3,a3,a4
    if (remaining_bytes >= 2 * MEM_BLOCK_SIZE)
    800016c0:	07f00593          	li	a1,127
    800016c4:	02d5fe63          	bgeu	a1,a3,80001700 <_ZN15MemoryAllocator7kmallocEm+0xc0>
        next_free_node = (segmentHeader *)((char *)curr + bytes_needed + MEM_BLOCK_SIZE);
    800016c8:	04070593          	addi	a1,a4,64
    800016cc:	00b785b3          	add	a1,a5,a1
        next_free_node->next = curr->next;
    800016d0:	0007b803          	ld	a6,0(a5)
    800016d4:	0105b023          	sd	a6,0(a1)
        next_free_node->size = remaining_bytes - MEM_BLOCK_SIZE;
    800016d8:	fc068693          	addi	a3,a3,-64
    800016dc:	00d5b423          	sd	a3,8(a1)
        curr->size = bytes_needed;
    800016e0:	00e7b423          	sd	a4,8(a5)
    if (prev)
    800016e4:	02060263          	beqz	a2,80001708 <_ZN15MemoryAllocator7kmallocEm+0xc8>
        prev->next = next_free_node;
    800016e8:	00b63023          	sd	a1,0(a2)
}
    800016ec:	01813083          	ld	ra,24(sp)
    800016f0:	01013403          	ld	s0,16(sp)
    800016f4:	00813483          	ld	s1,8(sp)
    800016f8:	02010113          	addi	sp,sp,32
    800016fc:	00008067          	ret
        next_free_node = curr->next;
    80001700:	0007b583          	ld	a1,0(a5)
    80001704:	fe1ff06f          	j	800016e4 <_ZN15MemoryAllocator7kmallocEm+0xa4>
        head = next_free_node;
    80001708:	0000a797          	auipc	a5,0xa
    8000170c:	08b7b423          	sd	a1,136(a5) # 8000b790 <_ZN15MemoryAllocator4headE>
    80001710:	fddff06f          	j	800016ec <_ZN15MemoryAllocator7kmallocEm+0xac>
        return nullptr;
    80001714:	00078513          	mv	a0,a5
    80001718:	fd5ff06f          	j	800016ec <_ZN15MemoryAllocator7kmallocEm+0xac>

000000008000171c <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE>:

void MemoryAllocator::tryMerge(segmentHeader *block)
{
    8000171c:	ff010113          	addi	sp,sp,-16
    80001720:	00813423          	sd	s0,8(sp)
    80001724:	01010413          	addi	s0,sp,16
    if (!block)
    80001728:	00050e63          	beqz	a0,80001744 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x28>
        return;

    segmentHeader *next_seg = block->next;
    8000172c:	00053783          	ld	a5,0(a0)

    if (!next_seg)
    80001730:	00078a63          	beqz	a5,80001744 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x28>
        return;

    if ((char *)block + MEM_BLOCK_SIZE + block->size == (char *)next_seg)
    80001734:	00853683          	ld	a3,8(a0)
    80001738:	04068713          	addi	a4,a3,64
    8000173c:	00e50733          	add	a4,a0,a4
    80001740:	00f70863          	beq	a4,a5,80001750 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x34>
    {
        block->next = next_seg->next;
        block->size += next_seg->size + MEM_BLOCK_SIZE;
    }
}
    80001744:	00813403          	ld	s0,8(sp)
    80001748:	01010113          	addi	sp,sp,16
    8000174c:	00008067          	ret
        block->next = next_seg->next;
    80001750:	0007b703          	ld	a4,0(a5)
    80001754:	00e53023          	sd	a4,0(a0)
        block->size += next_seg->size + MEM_BLOCK_SIZE;
    80001758:	0087b783          	ld	a5,8(a5)
    8000175c:	00f686b3          	add	a3,a3,a5
    80001760:	04068693          	addi	a3,a3,64
    80001764:	00d53423          	sd	a3,8(a0)
    80001768:	fddff06f          	j	80001744 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x28>

000000008000176c <_ZN15MemoryAllocator5kfreeEPv>:
{
    8000176c:	fe010113          	addi	sp,sp,-32
    80001770:	00113c23          	sd	ra,24(sp)
    80001774:	00813823          	sd	s0,16(sp)
    80001778:	00913423          	sd	s1,8(sp)
    8000177c:	01213023          	sd	s2,0(sp)
    80001780:	02010413          	addi	s0,sp,32
    80001784:	00050913          	mv	s2,a0
    if (!isinit)
    80001788:	0000a797          	auipc	a5,0xa
    8000178c:	0107c783          	lbu	a5,16(a5) # 8000b798 <_ZN15MemoryAllocator6isinitE>
    80001790:	04078663          	beqz	a5,800017dc <_ZN15MemoryAllocator5kfreeEPv+0x70>
    if (!addr)
    80001794:	0a090863          	beqz	s2,80001844 <_ZN15MemoryAllocator5kfreeEPv+0xd8>
    segmentHeader *newFree = (segmentHeader *)((char *)addr - MEM_BLOCK_SIZE);
    80001798:	fc090513          	addi	a0,s2,-64
    if ((size_t)newFree < (size_t)HEAP_START_ADDR || (size_t)newFree >= (size_t)HEAP_END_ADDR)
    8000179c:	0000a797          	auipc	a5,0xa
    800017a0:	ba47b783          	ld	a5,-1116(a5) # 8000b340 <HEAP_START_ADDR>
    800017a4:	0af56463          	bltu	a0,a5,8000184c <_ZN15MemoryAllocator5kfreeEPv+0xe0>
    800017a8:	0000a797          	auipc	a5,0xa
    800017ac:	b907b783          	ld	a5,-1136(a5) # 8000b338 <HEAP_END_ADDR>
    800017b0:	0af57263          	bgeu	a0,a5,80001854 <_ZN15MemoryAllocator5kfreeEPv+0xe8>
    segmentHeader *curr = head;
    800017b4:	0000a717          	auipc	a4,0xa
    800017b8:	fdc73703          	ld	a4,-36(a4) # 8000b790 <_ZN15MemoryAllocator4headE>
    800017bc:	00070793          	mv	a5,a4
    segmentHeader *prev = nullptr;
    800017c0:	00000493          	li	s1,0
    while (curr)
    800017c4:	02078863          	beqz	a5,800017f4 <_ZN15MemoryAllocator5kfreeEPv+0x88>
        if (curr == newFree)
    800017c8:	08a78a63          	beq	a5,a0,8000185c <_ZN15MemoryAllocator5kfreeEPv+0xf0>
        if (curr > newFree)
    800017cc:	02f56463          	bltu	a0,a5,800017f4 <_ZN15MemoryAllocator5kfreeEPv+0x88>
        prev = curr;
    800017d0:	00078493          	mv	s1,a5
        curr = curr->next;
    800017d4:	0007b783          	ld	a5,0(a5)
    while (curr)
    800017d8:	fedff06f          	j	800017c4 <_ZN15MemoryAllocator5kfreeEPv+0x58>
        isinit = true;
    800017dc:	00100793          	li	a5,1
    800017e0:	0000a717          	auipc	a4,0xa
    800017e4:	faf70c23          	sb	a5,-72(a4) # 8000b798 <_ZN15MemoryAllocator6isinitE>
        init();
    800017e8:	00000097          	auipc	ra,0x0
    800017ec:	dfc080e7          	jalr	-516(ra) # 800015e4 <_ZN15MemoryAllocator4initEv>
    800017f0:	fa5ff06f          	j	80001794 <_ZN15MemoryAllocator5kfreeEPv+0x28>
    if (prev)
    800017f4:	04048063          	beqz	s1,80001834 <_ZN15MemoryAllocator5kfreeEPv+0xc8>
        newFree->next = prev->next;
    800017f8:	0004b783          	ld	a5,0(s1)
    800017fc:	fcf93023          	sd	a5,-64(s2)
        prev->next = newFree;
    80001800:	00a4b023          	sd	a0,0(s1)
    tryMerge(newFree);
    80001804:	00000097          	auipc	ra,0x0
    80001808:	f18080e7          	jalr	-232(ra) # 8000171c <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE>
    tryMerge(prev);
    8000180c:	00048513          	mv	a0,s1
    80001810:	00000097          	auipc	ra,0x0
    80001814:	f0c080e7          	jalr	-244(ra) # 8000171c <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE>
    return 0;
    80001818:	00000513          	li	a0,0
}
    8000181c:	01813083          	ld	ra,24(sp)
    80001820:	01013403          	ld	s0,16(sp)
    80001824:	00813483          	ld	s1,8(sp)
    80001828:	00013903          	ld	s2,0(sp)
    8000182c:	02010113          	addi	sp,sp,32
    80001830:	00008067          	ret
        newFree->next = head;
    80001834:	fce93023          	sd	a4,-64(s2)
        head = newFree;
    80001838:	0000a797          	auipc	a5,0xa
    8000183c:	f4a7bc23          	sd	a0,-168(a5) # 8000b790 <_ZN15MemoryAllocator4headE>
    80001840:	fc5ff06f          	j	80001804 <_ZN15MemoryAllocator5kfreeEPv+0x98>
        return -1;
    80001844:	fff00513          	li	a0,-1
    80001848:	fd5ff06f          	j	8000181c <_ZN15MemoryAllocator5kfreeEPv+0xb0>
        return -1;
    8000184c:	fff00513          	li	a0,-1
    80001850:	fcdff06f          	j	8000181c <_ZN15MemoryAllocator5kfreeEPv+0xb0>
    80001854:	fff00513          	li	a0,-1
    80001858:	fc5ff06f          	j	8000181c <_ZN15MemoryAllocator5kfreeEPv+0xb0>
            return -1;
    8000185c:	fff00513          	li	a0,-1
    80001860:	fbdff06f          	j	8000181c <_ZN15MemoryAllocator5kfreeEPv+0xb0>

0000000080001864 <_ZN5Riscv10popSppSpieEv>:
#include "../h/MemoryAllocator.h"
#include "../h/Thread.h"
#include "../h/Semaphore.h"
#include "../h/Console.h"
void Riscv::popSppSpie()
{
    80001864:	ff010113          	addi	sp,sp,-16
    80001868:	00813423          	sd	s0,8(sp)
    8000186c:	01010413          	addi	s0,sp,16
	__asm__ volatile("csrw sepc, ra");
    80001870:	14109073          	csrw	sepc,ra
    __asm__ volatile("csrs sstatus, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001874:	10000793          	li	a5,256
    80001878:	1007b073          	csrc	sstatus,a5
	Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
	__asm__ volatile("sret");
    8000187c:	10200073          	sret
}
    80001880:	00813403          	ld	s0,8(sp)
    80001884:	01010113          	addi	sp,sp,16
    80001888:	00008067          	ret

000000008000188c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm>:
void Riscv::handleSupervisorTrap(uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5, uint64 a6, uint64 a7)
{
    8000188c:	f7010113          	addi	sp,sp,-144
    80001890:	08113423          	sd	ra,136(sp)
    80001894:	08813023          	sd	s0,128(sp)
    80001898:	06913c23          	sd	s1,120(sp)
    8000189c:	07213823          	sd	s2,112(sp)
    800018a0:	07313423          	sd	s3,104(sp)
    800018a4:	09010413          	addi	s0,sp,144
    800018a8:	00060913          	mv	s2,a2
    __asm__ volatile("csrr %[scause], scause" : [scause] "=r"(scause));
    800018ac:	142027f3          	csrr	a5,scause
    800018b0:	faf43423          	sd	a5,-88(s0)
    return scause;
    800018b4:	fa843983          	ld	s3,-88(s0)

	uint64 scause = r_scause();

	if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    800018b8:	ff898613          	addi	a2,s3,-8
    800018bc:	00100793          	li	a5,1
    800018c0:	04c7f863          	bgeu	a5,a2,80001910 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x84>
		}

		w_sstatus(sstatus);
		w_sepc(sepc);
	}
	else if (scause == 0x8000000000000009UL)
    800018c4:	fff00793          	li	a5,-1
    800018c8:	03f79793          	slli	a5,a5,0x3f
    800018cc:	00978793          	addi	a5,a5,9
    800018d0:	2ef98c63          	beq	s3,a5,80001bc8 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x33c>
			}
		}

		plic_complete(irq); // Obaveštavamo PLIC da je obrada završena
	}
	else if (scause == 0x8000000000000001UL)
    800018d4:	fff00793          	li	a5,-1
    800018d8:	03f79793          	slli	a5,a5,0x3f
    800018dc:	00178793          	addi	a5,a5,1
    800018e0:	3ef98663          	beq	s3,a5,80001ccc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x440>
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800018e4:	141027f3          	csrr	a5,sepc
    800018e8:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800018ec:	fc843903          	ld	s2,-56(s0)
		}
		mc_sip(SIP_SSIP);
	}else{
		uint64 sepc = r_sepc();
        // unexpected trap cause
        for (const char* p = "Unexpected trap cause: "; *p; p++)
    800018f0:	00007497          	auipc	s1,0x7
    800018f4:	73048493          	addi	s1,s1,1840 # 80009020 <CONSOLE_STATUS+0x10>
    800018f8:	0004c503          	lbu	a0,0(s1)
    800018fc:	4c050a63          	beqz	a0,80001dd0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x544>
            _console::putc(*p);
    80001900:	00000097          	auipc	ra,0x0
    80001904:	ac4080e7          	jalr	-1340(ra) # 800013c4 <_ZN8_console4putcEc>
        for (const char* p = "Unexpected trap cause: "; *p; p++)
    80001908:	00148493          	addi	s1,s1,1
    8000190c:	fedff06f          	j	800018f8 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x6c>
    80001910:	00058493          	mv	s1,a1
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001914:	141027f3          	csrr	a5,sepc
    80001918:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    8000191c:	fb843783          	ld	a5,-72(s0)
		uint64 volatile sepc = r_sepc() + 4;
    80001920:	00478793          	addi	a5,a5,4
    80001924:	f6f43c23          	sd	a5,-136(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001928:	100027f3          	csrr	a5,sstatus
    8000192c:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80001930:	fb043783          	ld	a5,-80(s0)
		uint64 volatile sstatus = r_sstatus();
    80001934:	f8f43023          	sd	a5,-128(s0)
		switch (call)
    80001938:	04200793          	li	a5,66
    8000193c:	02a7e863          	bltu	a5,a0,8000196c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe0>
    80001940:	00251513          	slli	a0,a0,0x2
    80001944:	00007617          	auipc	a2,0x7
    80001948:	70860613          	addi	a2,a2,1800 # 8000904c <CONSOLE_STATUS+0x3c>
    8000194c:	00c507b3          	add	a5,a0,a2
    80001950:	0007a783          	lw	a5,0(a5)
    80001954:	00c787b3          	add	a5,a5,a2
    80001958:	00078067          	jr	a5
			writeARegister(0, (uint64)MemoryAllocator::kmalloc(bytes));
    8000195c:	00659513          	slli	a0,a1,0x6
    80001960:	00000097          	auipc	ra,0x0
    80001964:	ce0080e7          	jalr	-800(ra) # 80001640 <_ZN15MemoryAllocator7kmallocEm>
    return value;
}

inline void Riscv::writeARegister(int reg_number, uint64 value)
{
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001968:	00050513          	mv	a0,a0
		w_sstatus(sstatus);
    8000196c:	f8043783          	ld	a5,-128(s0)
    __asm__ volatile("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001970:	10079073          	csrw	sstatus,a5
		w_sepc(sepc);
    80001974:	f7843783          	ld	a5,-136(s0)
    __asm__ volatile("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001978:	14179073          	csrw	sepc,a5
        }
        
        // halt the machine
        while (1);
	}
}
    8000197c:	08813083          	ld	ra,136(sp)
    80001980:	08013403          	ld	s0,128(sp)
    80001984:	07813483          	ld	s1,120(sp)
    80001988:	07013903          	ld	s2,112(sp)
    8000198c:	06813983          	ld	s3,104(sp)
    80001990:	09010113          	addi	sp,sp,144
    80001994:	00008067          	ret
			writeARegister(0, (uint64)MemoryAllocator::kfree((void *)a1));
    80001998:	00058513          	mv	a0,a1
    8000199c:	00000097          	auipc	ra,0x0
    800019a0:	dd0080e7          	jalr	-560(ra) # 8000176c <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    800019a4:	00050513          	mv	a0,a0
}
    800019a8:	fc5ff06f          	j	8000196c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe0>
			void *volatile arg = (void *)a3;
    800019ac:	f8d43423          	sd	a3,-120(s0)
			void *volatile stack_space = (void *)a4;
    800019b0:	f8e43823          	sd	a4,-112(s0)
			*handle = _thread::createThread(body, arg, stack_space);
    800019b4:	f8843583          	ld	a1,-120(s0)
    800019b8:	f9043603          	ld	a2,-112(s0)
    800019bc:	00090513          	mv	a0,s2
    800019c0:	00001097          	auipc	ra,0x1
    800019c4:	2bc080e7          	jalr	700(ra) # 80002c7c <_ZN7_thread12createThreadEPFvPvES0_S0_>
    800019c8:	00a4b023          	sd	a0,0(s1)
			if (*handle)
    800019cc:	04050863          	beqz	a0,80001a1c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x190>
				if (body != nullptr)
    800019d0:	04090063          	beqz	s2,80001a10 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x184>
class Scheduler
{
public:
    static Scheduler &instance()
    {
        static Scheduler instance;
    800019d4:	0000a797          	auipc	a5,0xa
    800019d8:	dcc7c783          	lbu	a5,-564(a5) # 8000b7a0 <_ZGVZN9Scheduler8instanceEvE8instance>
    800019dc:	02079063          	bnez	a5,800019fc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x170>
    void put(_thread *t);

    _thread *get();

private:
    Scheduler() : head(nullptr), tail(nullptr) {};
    800019e0:	0000a797          	auipc	a5,0xa
    800019e4:	e5078793          	addi	a5,a5,-432 # 8000b830 <_ZZN9Scheduler8instanceEvE8instance>
    800019e8:	0007b023          	sd	zero,0(a5)
    800019ec:	0007b423          	sd	zero,8(a5)
        static Scheduler instance;
    800019f0:	00100793          	li	a5,1
    800019f4:	0000a717          	auipc	a4,0xa
    800019f8:	daf70623          	sb	a5,-596(a4) # 8000b7a0 <_ZGVZN9Scheduler8instanceEvE8instance>
					Scheduler::instance().put(*handle);
    800019fc:	0004b583          	ld	a1,0(s1)
    80001a00:	0000a517          	auipc	a0,0xa
    80001a04:	e3050513          	addi	a0,a0,-464 # 8000b830 <_ZZN9Scheduler8instanceEvE8instance>
    80001a08:	00000097          	auipc	ra,0x0
    80001a0c:	45c080e7          	jalr	1116(ra) # 80001e64 <_ZN9Scheduler3putEP7_thread>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001a10:	00000793          	li	a5,0
    80001a14:	00078513          	mv	a0,a5
}
    80001a18:	f55ff06f          	j	8000196c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe0>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001a1c:	fff00793          	li	a5,-1
    80001a20:	00078513          	mv	a0,a5
}
    80001a24:	f49ff06f          	j	8000196c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe0>
			_thread::timeSliceCounter = 0;
    80001a28:	0000a797          	auipc	a5,0xa
    80001a2c:	d807b423          	sd	zero,-632(a5) # 8000b7b0 <_ZN7_thread16timeSliceCounterE>
			if (_thread::running)
    80001a30:	0000a797          	auipc	a5,0xa
    80001a34:	d887b783          	ld	a5,-632(a5) # 8000b7b8 <_ZN7_thread7runningE>
    80001a38:	02078063          	beqz	a5,80001a58 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x1cc>

	uint64 getTimeSlice() const
	{
		return timeSlice;
	}
	void setFinished(bool finished) { _thread::finished = finished; };
    80001a3c:	00100713          	li	a4,1
    80001a40:	04e780a3          	sb	a4,65(a5)
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001a44:	00000793          	li	a5,0
    80001a48:	00078513          	mv	a0,a5
			_thread::dispatch();
    80001a4c:	00001097          	auipc	ra,0x1
    80001a50:	058080e7          	jalr	88(ra) # 80002aa4 <_ZN7_thread8dispatchEv>
			break;
    80001a54:	f19ff06f          	j	8000196c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe0>
    80001a58:	fff00793          	li	a5,-1
    80001a5c:	00078513          	mv	a0,a5
}
    80001a60:	fedff06f          	j	80001a4c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x1c0>
			_thread::timeSliceCounter = 0;
    80001a64:	0000a797          	auipc	a5,0xa
    80001a68:	d407b623          	sd	zero,-692(a5) # 8000b7b0 <_ZN7_thread16timeSliceCounterE>
			_thread::dispatch();
    80001a6c:	00001097          	auipc	ra,0x1
    80001a70:	038080e7          	jalr	56(ra) # 80002aa4 <_ZN7_thread8dispatchEv>
			break;
    80001a74:	ef9ff06f          	j	8000196c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe0>

class _sem {
public:

    void* operator new(size_t size){
        void* ptr = MemoryAllocator::kmalloc(size);
    80001a78:	02000513          	li	a0,32
    80001a7c:	00000097          	auipc	ra,0x0
    80001a80:	bc4080e7          	jalr	-1084(ra) # 80001640 <_ZN15MemoryAllocator7kmallocEm>
    80001a84:	00050993          	mv	s3,a0
			*handle = new _sem(a2);
    80001a88:	0009059b          	sext.w	a1,s2
    80001a8c:	00000097          	auipc	ra,0x0
    80001a90:	450080e7          	jalr	1104(ra) # 80001edc <_ZN4_semC1Ei>
    80001a94:	0134b023          	sd	s3,0(s1)
			if (*handle)
    80001a98:	00098863          	beqz	s3,80001aa8 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x21c>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001a9c:	00000793          	li	a5,0
    80001aa0:	00078513          	mv	a0,a5
}
    80001aa4:	ec9ff06f          	j	8000196c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe0>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001aa8:	fff00793          	li	a5,-1
    80001aac:	00078513          	mv	a0,a5
}
    80001ab0:	ebdff06f          	j	8000196c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe0>
			if (s == nullptr)
    80001ab4:	00059863          	bnez	a1,80001ac4 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x238>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001ab8:	fff00793          	li	a5,-1
    80001abc:	00078513          	mv	a0,a5
}
    80001ac0:	eadff06f          	j	8000196c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe0>
				writeARegister(0, s->close());
    80001ac4:	00058513          	mv	a0,a1
    80001ac8:	00000097          	auipc	ra,0x0
    80001acc:	4b4080e7          	jalr	1204(ra) # 80001f7c <_ZN4_sem5closeEv>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001ad0:	00050513          	mv	a0,a0
				delete s;
    80001ad4:	00048513          	mv	a0,s1
    80001ad8:	00001097          	auipc	ra,0x1
    80001adc:	b8c080e7          	jalr	-1140(ra) # 80002664 <_ZdlPv>
    80001ae0:	e8dff06f          	j	8000196c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe0>
			if (s == nullptr)
    80001ae4:	00059863          	bnez	a1,80001af4 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x268>
    80001ae8:	fff00793          	li	a5,-1
    80001aec:	00078513          	mv	a0,a5
}
    80001af0:	e7dff06f          	j	8000196c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe0>
				writeARegister(0, s->wait());
    80001af4:	00058513          	mv	a0,a1
    80001af8:	00000097          	auipc	ra,0x0
    80001afc:	5d0080e7          	jalr	1488(ra) # 800020c8 <_ZN4_sem4waitEv>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001b00:	00050513          	mv	a0,a0
}
    80001b04:	e69ff06f          	j	8000196c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe0>
			if (s == nullptr)
    80001b08:	00059863          	bnez	a1,80001b18 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x28c>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001b0c:	fff00793          	li	a5,-1
    80001b10:	00078513          	mv	a0,a5
}
    80001b14:	e59ff06f          	j	8000196c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe0>
				writeARegister(0, s->signal());
    80001b18:	00058513          	mv	a0,a1
    80001b1c:	00000097          	auipc	ra,0x0
    80001b20:	6ac080e7          	jalr	1708(ra) # 800021c8 <_ZN4_sem6signalEv>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001b24:	00050513          	mv	a0,a0
}
    80001b28:	e45ff06f          	j	8000196c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe0>
			unsigned n = (unsigned)a2;
    80001b2c:	0009059b          	sext.w	a1,s2
			if (s == nullptr)
    80001b30:	00049863          	bnez	s1,80001b40 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x2b4>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001b34:	fff00793          	li	a5,-1
    80001b38:	00078513          	mv	a0,a5
}
    80001b3c:	e31ff06f          	j	8000196c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe0>
				writeARegister(0, s->wait_n(n));
    80001b40:	00048513          	mv	a0,s1
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	4d8080e7          	jalr	1240(ra) # 8000201c <_ZN4_sem6wait_nEj>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001b4c:	00050513          	mv	a0,a0
}
    80001b50:	e1dff06f          	j	8000196c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe0>
			unsigned n = (unsigned)a2;
    80001b54:	0009059b          	sext.w	a1,s2
			if (s == nullptr)
    80001b58:	00049863          	bnez	s1,80001b68 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x2dc>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001b5c:	fff00793          	li	a5,-1
    80001b60:	00078513          	mv	a0,a5
}
    80001b64:	e09ff06f          	j	8000196c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe0>
				writeARegister(0, s->signal_n(n));
    80001b68:	00048513          	mv	a0,s1
    80001b6c:	00000097          	auipc	ra,0x0
    80001b70:	588080e7          	jalr	1416(ra) # 800020f4 <_ZN4_sem8signal_nEj>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001b74:	00050513          	mv	a0,a0
}
    80001b78:	df5ff06f          	j	8000196c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe0>
			if (_thread::running == nullptr)
    80001b7c:	0000a517          	auipc	a0,0xa
    80001b80:	c3c53503          	ld	a0,-964(a0) # 8000b7b8 <_ZN7_thread7runningE>
    80001b84:	00050c63          	beqz	a0,80001b9c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x310>
				_thread::running->time_sleep(a1);
    80001b88:	00001097          	auipc	ra,0x1
    80001b8c:	ff4080e7          	jalr	-12(ra) # 80002b7c <_ZN7_thread10time_sleepEm>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001b90:	00000793          	li	a5,0
    80001b94:	00078513          	mv	a0,a5
}
    80001b98:	dd5ff06f          	j	8000196c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe0>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001b9c:	fff00793          	li	a5,-1
    80001ba0:	00078513          	mv	a0,a5
}
    80001ba4:	dc9ff06f          	j	8000196c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe0>
			char c = _console::getc();
    80001ba8:	fffff097          	auipc	ra,0xfffff
    80001bac:	7e4080e7          	jalr	2020(ra) # 8000138c <_ZN8_console4getcEv>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001bb0:	00050513          	mv	a0,a0
}
    80001bb4:	db9ff06f          	j	8000196c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe0>
			_console::putc(c);
    80001bb8:	0ff5f513          	andi	a0,a1,255
    80001bbc:	00000097          	auipc	ra,0x0
    80001bc0:	808080e7          	jalr	-2040(ra) # 800013c4 <_ZN8_console4putcEc>
			break;
    80001bc4:	da9ff06f          	j	8000196c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe0>
		int irq = plic_claim(); // Potvrđujemo prekid PLIC kontroleru
    80001bc8:	00005097          	auipc	ra,0x5
    80001bcc:	02c080e7          	jalr	44(ra) # 80006bf4 <plic_claim>
    80001bd0:	00050913          	mv	s2,a0
		if (irq == CONSOLE_IRQ)
    80001bd4:	00a00793          	li	a5,10
    80001bd8:	00f50a63          	beq	a0,a5,80001bec <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x360>
		plic_complete(irq); // Obaveštavamo PLIC da je obrada završena
    80001bdc:	00090513          	mv	a0,s2
    80001be0:	00005097          	auipc	ra,0x5
    80001be4:	04c080e7          	jalr	76(ra) # 80006c2c <plic_complete>
    80001be8:	d95ff06f          	j	8000197c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xf0>
			while ((*((volatile uint8 *)CONSOLE_STATUS) & 0x01) && !_console::getInBuff()->isFull())
    80001bec:	00007497          	auipc	s1,0x7
    80001bf0:	4244b483          	ld	s1,1060(s1) # 80009010 <CONSOLE_STATUS>
    80001bf4:	0004c783          	lbu	a5,0(s1)
    80001bf8:	0017f793          	andi	a5,a5,1
    80001bfc:	06078463          	beqz	a5,80001c64 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x3d8>
        ensureInit();
    80001c00:	fffff097          	auipc	ra,0xfffff
    80001c04:	648080e7          	jalr	1608(ra) # 80001248 <_ZN8_console10ensureInitEv>
    80001c08:	0000a517          	auipc	a0,0xa
    80001c0c:	b7853503          	ld	a0,-1160(a0) # 8000b780 <_ZN8_console6inbuffE>
    80001c10:	fffff097          	auipc	ra,0xfffff
    80001c14:	5f4080e7          	jalr	1524(ra) # 80001204 <_ZN7kBuffer6isFullEv>
    80001c18:	04051663          	bnez	a0,80001c64 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x3d8>
				char c = *((volatile uint8 *)CONSOLE_RX_DATA);
    80001c1c:	00007797          	auipc	a5,0x7
    80001c20:	3e47b783          	ld	a5,996(a5) # 80009000 <CONSOLE_RX_DATA>
    80001c24:	0007c483          	lbu	s1,0(a5)
    80001c28:	0ff4f493          	andi	s1,s1,255
    80001c2c:	fffff097          	auipc	ra,0xfffff
    80001c30:	61c080e7          	jalr	1564(ra) # 80001248 <_ZN8_console10ensureInitEv>
				_console::getInBuff()->put(c);
    80001c34:	00048593          	mv	a1,s1
    80001c38:	0000a517          	auipc	a0,0xa
    80001c3c:	b4853503          	ld	a0,-1208(a0) # 8000b780 <_ZN8_console6inbuffE>
    80001c40:	fffff097          	auipc	ra,0xfffff
    80001c44:	528080e7          	jalr	1320(ra) # 80001168 <_ZN7kBuffer3putEc>
        ensureInit();
    80001c48:	fffff097          	auipc	ra,0xfffff
    80001c4c:	600080e7          	jalr	1536(ra) # 80001248 <_ZN8_console10ensureInitEv>
				_console::getInSem()->signal();
    80001c50:	0000a517          	auipc	a0,0xa
    80001c54:	b2053503          	ld	a0,-1248(a0) # 8000b770 <_ZN8_console5inSemE>
    80001c58:	00000097          	auipc	ra,0x0
    80001c5c:	570080e7          	jalr	1392(ra) # 800021c8 <_ZN4_sem6signalEv>
			while ((*((volatile uint8 *)CONSOLE_STATUS) & 0x01) && !_console::getInBuff()->isFull())
    80001c60:	f8dff06f          	j	80001bec <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x360>
			while ((*((volatile uint8 *)CONSOLE_STATUS) & 0x20) && !_console::getOutBuff()->isEmpty())
    80001c64:	0004c783          	lbu	a5,0(s1)
    80001c68:	0207f793          	andi	a5,a5,32
    80001c6c:	f60788e3          	beqz	a5,80001bdc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x350>
        ensureInit();
    80001c70:	fffff097          	auipc	ra,0xfffff
    80001c74:	5d8080e7          	jalr	1496(ra) # 80001248 <_ZN8_console10ensureInitEv>
    80001c78:	0000a517          	auipc	a0,0xa
    80001c7c:	b0053503          	ld	a0,-1280(a0) # 8000b778 <_ZN8_console7outbuffE>
    80001c80:	fffff097          	auipc	ra,0xfffff
    80001c84:	5a8080e7          	jalr	1448(ra) # 80001228 <_ZN7kBuffer7isEmptyEv>
    80001c88:	f4051ae3          	bnez	a0,80001bdc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x350>
    80001c8c:	fffff097          	auipc	ra,0xfffff
    80001c90:	5bc080e7          	jalr	1468(ra) # 80001248 <_ZN8_console10ensureInitEv>
				char c = _console::getOutBuff()->get();
    80001c94:	0000a517          	auipc	a0,0xa
    80001c98:	ae453503          	ld	a0,-1308(a0) # 8000b778 <_ZN8_console7outbuffE>
    80001c9c:	fffff097          	auipc	ra,0xfffff
    80001ca0:	518080e7          	jalr	1304(ra) # 800011b4 <_ZN7kBuffer3getEv>
				*((volatile uint8 *)CONSOLE_TX_DATA) = (uint8)c;
    80001ca4:	00007797          	auipc	a5,0x7
    80001ca8:	3647b783          	ld	a5,868(a5) # 80009008 <CONSOLE_TX_DATA>
    80001cac:	00a78023          	sb	a0,0(a5)
        ensureInit();
    80001cb0:	fffff097          	auipc	ra,0xfffff
    80001cb4:	598080e7          	jalr	1432(ra) # 80001248 <_ZN8_console10ensureInitEv>
				_console::getOutSem()->signal();
    80001cb8:	0000a517          	auipc	a0,0xa
    80001cbc:	ab053503          	ld	a0,-1360(a0) # 8000b768 <_ZN8_console6outSemE>
    80001cc0:	00000097          	auipc	ra,0x0
    80001cc4:	508080e7          	jalr	1288(ra) # 800021c8 <_ZN4_sem6signalEv>
			while ((*((volatile uint8 *)CONSOLE_STATUS) & 0x20) && !_console::getOutBuff()->isEmpty())
    80001cc8:	f9dff06f          	j	80001c64 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x3d8>
		_thread::timeSliceCounter++;
    80001ccc:	0000a717          	auipc	a4,0xa
    80001cd0:	ae470713          	addi	a4,a4,-1308 # 8000b7b0 <_ZN7_thread16timeSliceCounterE>
    80001cd4:	00073783          	ld	a5,0(a4)
    80001cd8:	00178793          	addi	a5,a5,1
    80001cdc:	00f73023          	sd	a5,0(a4)
		if (_thread::sleepingHead)
    80001ce0:	0000a797          	auipc	a5,0xa
    80001ce4:	ac87b783          	ld	a5,-1336(a5) # 8000b7a8 <_ZN7_thread12sleepingHeadE>
    80001ce8:	08078063          	beqz	a5,80001d68 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x4dc>
			if (_thread::sleepingHead->timeSleeping > 0)
    80001cec:	0507b703          	ld	a4,80(a5)
    80001cf0:	02070063          	beqz	a4,80001d10 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x484>
				_thread::sleepingHead->timeSleeping--;
    80001cf4:	fff70713          	addi	a4,a4,-1
    80001cf8:	04e7b823          	sd	a4,80(a5)
    80001cfc:	0140006f          	j	80001d10 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x484>
				Scheduler::instance().put(t);
    80001d00:	0000a517          	auipc	a0,0xa
    80001d04:	b3050513          	addi	a0,a0,-1232 # 8000b830 <_ZZN9Scheduler8instanceEvE8instance>
    80001d08:	00000097          	auipc	ra,0x0
    80001d0c:	15c080e7          	jalr	348(ra) # 80001e64 <_ZN9Scheduler3putEP7_thread>
			while (_thread::sleepingHead && _thread::sleepingHead->timeSleeping == 0)
    80001d10:	0000a597          	auipc	a1,0xa
    80001d14:	a985b583          	ld	a1,-1384(a1) # 8000b7a8 <_ZN7_thread12sleepingHeadE>
    80001d18:	04058863          	beqz	a1,80001d68 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x4dc>
    80001d1c:	0505b783          	ld	a5,80(a1)
    80001d20:	04079463          	bnez	a5,80001d68 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x4dc>
				_thread::sleepingHead = t->waitnext;
    80001d24:	0085b783          	ld	a5,8(a1)
    80001d28:	0000a717          	auipc	a4,0xa
    80001d2c:	a8f73023          	sd	a5,-1408(a4) # 8000b7a8 <_ZN7_thread12sleepingHeadE>
				t->waitnext = nullptr;
    80001d30:	0005b423          	sd	zero,8(a1)
				t->isReady = true;
    80001d34:	00100793          	li	a5,1
    80001d38:	04f58023          	sb	a5,64(a1)
    80001d3c:	0000a797          	auipc	a5,0xa
    80001d40:	a647c783          	lbu	a5,-1436(a5) # 8000b7a0 <_ZGVZN9Scheduler8instanceEvE8instance>
    80001d44:	fa079ee3          	bnez	a5,80001d00 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x474>
    Scheduler() : head(nullptr), tail(nullptr) {};
    80001d48:	0000a797          	auipc	a5,0xa
    80001d4c:	ae878793          	addi	a5,a5,-1304 # 8000b830 <_ZZN9Scheduler8instanceEvE8instance>
    80001d50:	0007b023          	sd	zero,0(a5)
    80001d54:	0007b423          	sd	zero,8(a5)
        static Scheduler instance;
    80001d58:	00100793          	li	a5,1
    80001d5c:	0000a717          	auipc	a4,0xa
    80001d60:	a4f70223          	sb	a5,-1468(a4) # 8000b7a0 <_ZGVZN9Scheduler8instanceEvE8instance>
    80001d64:	f9dff06f          	j	80001d00 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x474>
		if (_thread::timeSliceCounter >= _thread::running->getTimeSlice())
    80001d68:	0000a797          	auipc	a5,0xa
    80001d6c:	a507b783          	ld	a5,-1456(a5) # 8000b7b8 <_ZN7_thread7runningE>
		return timeSlice;
    80001d70:	0387b783          	ld	a5,56(a5)
    80001d74:	0000a717          	auipc	a4,0xa
    80001d78:	a3c73703          	ld	a4,-1476(a4) # 8000b7b0 <_ZN7_thread16timeSliceCounterE>
    80001d7c:	00f77863          	bgeu	a4,a5,80001d8c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x500>
    __asm__ volatile("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001d80:	00200793          	li	a5,2
    80001d84:	1447b073          	csrc	sip,a5
}
    80001d88:	bf5ff06f          	j	8000197c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xf0>
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d8c:	141027f3          	csrr	a5,sepc
    80001d90:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001d94:	fc843783          	ld	a5,-56(s0)
			uint64 volatile sepc = r_sepc();
    80001d98:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d9c:	100027f3          	csrr	a5,sstatus
    80001da0:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001da4:	fc043783          	ld	a5,-64(s0)
			uint64 volatile sstatus = r_sstatus();
    80001da8:	faf43023          	sd	a5,-96(s0)
			_thread::timeSliceCounter = 0;
    80001dac:	0000a797          	auipc	a5,0xa
    80001db0:	a007b223          	sd	zero,-1532(a5) # 8000b7b0 <_ZN7_thread16timeSliceCounterE>
			_thread::dispatch();
    80001db4:	00001097          	auipc	ra,0x1
    80001db8:	cf0080e7          	jalr	-784(ra) # 80002aa4 <_ZN7_thread8dispatchEv>
			w_sstatus(sstatus);
    80001dbc:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001dc0:	10079073          	csrw	sstatus,a5
			w_sepc(sepc);
    80001dc4:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001dc8:	14179073          	csrw	sepc,a5
}
    80001dcc:	fb5ff06f          	j	80001d80 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x4f4>
        for (int i = 15; i >= 0; i--)
    80001dd0:	00f00493          	li	s1,15
    80001dd4:	0204c863          	bltz	s1,80001e04 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x578>
            char c = "0123456789abcdef"[(scause >> i*4) & 0xf];
    80001dd8:	0024979b          	slliw	a5,s1,0x2
    80001ddc:	00f9d7b3          	srl	a5,s3,a5
    80001de0:	00f7f793          	andi	a5,a5,15
    80001de4:	00007717          	auipc	a4,0x7
    80001de8:	25470713          	addi	a4,a4,596 # 80009038 <CONSOLE_STATUS+0x28>
    80001dec:	00f707b3          	add	a5,a4,a5
            _console::putc(c);
    80001df0:	0007c503          	lbu	a0,0(a5)
    80001df4:	fffff097          	auipc	ra,0xfffff
    80001df8:	5d0080e7          	jalr	1488(ra) # 800013c4 <_ZN8_console4putcEc>
        for (int i = 15; i >= 0; i--)
    80001dfc:	fff4849b          	addiw	s1,s1,-1
    80001e00:	fd5ff06f          	j	80001dd4 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x548>
        _console::putc(' ');
    80001e04:	02000513          	li	a0,32
    80001e08:	fffff097          	auipc	ra,0xfffff
    80001e0c:	5bc080e7          	jalr	1468(ra) # 800013c4 <_ZN8_console4putcEc>
        for (int i = 15; i >= 0; i--)
    80001e10:	00f00493          	li	s1,15
    80001e14:	0204c863          	bltz	s1,80001e44 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x5b8>
            char c = "0123456789abcdef"[(sepc >> i*4) & 0xf];
    80001e18:	0024979b          	slliw	a5,s1,0x2
    80001e1c:	00f957b3          	srl	a5,s2,a5
    80001e20:	00f7f793          	andi	a5,a5,15
    80001e24:	00007717          	auipc	a4,0x7
    80001e28:	21470713          	addi	a4,a4,532 # 80009038 <CONSOLE_STATUS+0x28>
    80001e2c:	00f707b3          	add	a5,a4,a5
            _console::putc(c);
    80001e30:	0007c503          	lbu	a0,0(a5)
    80001e34:	fffff097          	auipc	ra,0xfffff
    80001e38:	590080e7          	jalr	1424(ra) # 800013c4 <_ZN8_console4putcEc>
        for (int i = 15; i >= 0; i--)
    80001e3c:	fff4849b          	addiw	s1,s1,-1
    80001e40:	fd5ff06f          	j	80001e14 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x588>
        while (1);
    80001e44:	0000006f          	j	80001e44 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x5b8>
			*handle = new _sem(a2);
    80001e48:	00050493          	mv	s1,a0
    80001e4c:	00098513          	mv	a0,s3
    80001e50:	00001097          	auipc	ra,0x1
    80001e54:	814080e7          	jalr	-2028(ra) # 80002664 <_ZdlPv>
    80001e58:	00048513          	mv	a0,s1
    80001e5c:	0000b097          	auipc	ra,0xb
    80001e60:	aac080e7          	jalr	-1364(ra) # 8000c908 <_Unwind_Resume>

0000000080001e64 <_ZN9Scheduler3putEP7_thread>:
#include "../h/Scheduler.h"

#include "../h/Thread.h"

void Scheduler::put(_thread *t)
{
    80001e64:	ff010113          	addi	sp,sp,-16
    80001e68:	00813423          	sd	s0,8(sp)
    80001e6c:	01010413          	addi	s0,sp,16
    if (!t)
    80001e70:	00058e63          	beqz	a1,80001e8c <_ZN9Scheduler3putEP7_thread+0x28>
        return;
    t->next = nullptr;
    80001e74:	0005b023          	sd	zero,0(a1)

    if (!head)
    80001e78:	00053783          	ld	a5,0(a0)
    80001e7c:	00078e63          	beqz	a5,80001e98 <_ZN9Scheduler3putEP7_thread+0x34>
    {
        head = t;
    }
    else
    {
        tail->next = t;
    80001e80:	00853783          	ld	a5,8(a0)
    80001e84:	00b7b023          	sd	a1,0(a5)
    }
    tail = t;
    80001e88:	00b53423          	sd	a1,8(a0)
}
    80001e8c:	00813403          	ld	s0,8(sp)
    80001e90:	01010113          	addi	sp,sp,16
    80001e94:	00008067          	ret
        head = t;
    80001e98:	00b53023          	sd	a1,0(a0)
    80001e9c:	fedff06f          	j	80001e88 <_ZN9Scheduler3putEP7_thread+0x24>

0000000080001ea0 <_ZN9Scheduler3getEv>:

_thread *Scheduler::get()
{
    80001ea0:	ff010113          	addi	sp,sp,-16
    80001ea4:	00813423          	sd	s0,8(sp)
    80001ea8:	01010413          	addi	s0,sp,16
    80001eac:	00050793          	mv	a5,a0
    if (!head)
    80001eb0:	00053503          	ld	a0,0(a0)
    80001eb4:	00050a63          	beqz	a0,80001ec8 <_ZN9Scheduler3getEv+0x28>
    {
        return nullptr;
    }

    _thread *t = head;
    head = head->next;
    80001eb8:	00053703          	ld	a4,0(a0)
    80001ebc:	00e7b023          	sd	a4,0(a5)

    if (!head)
    80001ec0:	00070a63          	beqz	a4,80001ed4 <_ZN9Scheduler3getEv+0x34>
    {
        tail = nullptr;
    }

    t->next = nullptr;
    80001ec4:	00053023          	sd	zero,0(a0)
    return t;
    80001ec8:	00813403          	ld	s0,8(sp)
    80001ecc:	01010113          	addi	sp,sp,16
    80001ed0:	00008067          	ret
        tail = nullptr;
    80001ed4:	0007b423          	sd	zero,8(a5)
    80001ed8:	fedff06f          	j	80001ec4 <_ZN9Scheduler3getEv+0x24>

0000000080001edc <_ZN4_semC1Ei>:
#include "../h/Semaphore.h"
#include "../h/Thread.h"

_sem::_sem(int init) : val(init), head(nullptr), tail(nullptr), closed(false)
    80001edc:	ff010113          	addi	sp,sp,-16
    80001ee0:	00813423          	sd	s0,8(sp)
    80001ee4:	01010413          	addi	s0,sp,16
    80001ee8:	00b52023          	sw	a1,0(a0)
    80001eec:	00053423          	sd	zero,8(a0)
    80001ef0:	00053823          	sd	zero,16(a0)
    80001ef4:	00050c23          	sb	zero,24(a0)
{
}
    80001ef8:	00813403          	ld	s0,8(sp)
    80001efc:	01010113          	addi	sp,sp,16
    80001f00:	00008067          	ret

0000000080001f04 <_ZN4_sem3addEP7_thread>:
{
    return signal_n(1);
}

void _sem::add(_thread *t)
{
    80001f04:	ff010113          	addi	sp,sp,-16
    80001f08:	00813423          	sd	s0,8(sp)
    80001f0c:	01010413          	addi	s0,sp,16
    if (!t)
    80001f10:	00058e63          	beqz	a1,80001f2c <_ZN4_sem3addEP7_thread+0x28>
        return;
    t->waitnext = nullptr;
    80001f14:	0005b423          	sd	zero,8(a1)

    if (!head)
    80001f18:	00853783          	ld	a5,8(a0)
    80001f1c:	00078e63          	beqz	a5,80001f38 <_ZN4_sem3addEP7_thread+0x34>
    {
        head = t;
    }
    else
    {
        tail->waitnext = t;
    80001f20:	01053783          	ld	a5,16(a0)
    80001f24:	00b7b423          	sd	a1,8(a5)
    }
    tail = t;
    80001f28:	00b53823          	sd	a1,16(a0)
}
    80001f2c:	00813403          	ld	s0,8(sp)
    80001f30:	01010113          	addi	sp,sp,16
    80001f34:	00008067          	ret
        head = t;
    80001f38:	00b53423          	sd	a1,8(a0)
    80001f3c:	fedff06f          	j	80001f28 <_ZN4_sem3addEP7_thread+0x24>

0000000080001f40 <_ZN4_sem3getEv>:
_thread *_sem::get()
{
    80001f40:	ff010113          	addi	sp,sp,-16
    80001f44:	00813423          	sd	s0,8(sp)
    80001f48:	01010413          	addi	s0,sp,16
    80001f4c:	00050793          	mv	a5,a0
    if (!head)
    80001f50:	00853503          	ld	a0,8(a0)
    80001f54:	00050a63          	beqz	a0,80001f68 <_ZN4_sem3getEv+0x28>
    {
        return nullptr;
    }

    _thread *t = head;
    head = head->waitnext;
    80001f58:	00853703          	ld	a4,8(a0)
    80001f5c:	00e7b423          	sd	a4,8(a5)

    if (!head)
    80001f60:	00070a63          	beqz	a4,80001f74 <_ZN4_sem3getEv+0x34>
    {
        tail = nullptr;
    }

    t->waitnext = nullptr;
    80001f64:	00053423          	sd	zero,8(a0)
    return t;
}
    80001f68:	00813403          	ld	s0,8(sp)
    80001f6c:	01010113          	addi	sp,sp,16
    80001f70:	00008067          	ret
        tail = nullptr;
    80001f74:	0007b823          	sd	zero,16(a5)
    80001f78:	fedff06f          	j	80001f64 <_ZN4_sem3getEv+0x24>

0000000080001f7c <_ZN4_sem5closeEv>:

int _sem::close()
{
    80001f7c:	fe010113          	addi	sp,sp,-32
    80001f80:	00113c23          	sd	ra,24(sp)
    80001f84:	00813823          	sd	s0,16(sp)
    80001f88:	00913423          	sd	s1,8(sp)
    80001f8c:	02010413          	addi	s0,sp,32
    80001f90:	00050493          	mv	s1,a0
    closed = true;
    80001f94:	00100793          	li	a5,1
    80001f98:	00f50c23          	sb	a5,24(a0)

    while (head)
    80001f9c:	0084b783          	ld	a5,8(s1)
    80001fa0:	06078263          	beqz	a5,80002004 <_ZN4_sem5closeEv+0x88>
    {
        _thread *t = get();
    80001fa4:	00048513          	mv	a0,s1
    80001fa8:	00000097          	auipc	ra,0x0
    80001fac:	f98080e7          	jalr	-104(ra) # 80001f40 <_ZN4_sem3getEv>
        if (t)
    80001fb0:	fe0506e3          	beqz	a0,80001f9c <_ZN4_sem5closeEv+0x20>
        {
            t->isReady = true;
    80001fb4:	00100793          	li	a5,1
    80001fb8:	04f50023          	sb	a5,64(a0)

            t->semStatus = -1;
    80001fbc:	fff00793          	li	a5,-1
    80001fc0:	04f52223          	sw	a5,68(a0)
    80001fc4:	00009797          	auipc	a5,0x9
    80001fc8:	7dc7c783          	lbu	a5,2012(a5) # 8000b7a0 <_ZGVZN9Scheduler8instanceEvE8instance>
    80001fcc:	02079063          	bnez	a5,80001fec <_ZN4_sem5closeEv+0x70>
    Scheduler() : head(nullptr), tail(nullptr) {};
    80001fd0:	0000a797          	auipc	a5,0xa
    80001fd4:	86078793          	addi	a5,a5,-1952 # 8000b830 <_ZZN9Scheduler8instanceEvE8instance>
    80001fd8:	0007b023          	sd	zero,0(a5)
    80001fdc:	0007b423          	sd	zero,8(a5)
        static Scheduler instance;
    80001fe0:	00100793          	li	a5,1
    80001fe4:	00009717          	auipc	a4,0x9
    80001fe8:	7af70e23          	sb	a5,1980(a4) # 8000b7a0 <_ZGVZN9Scheduler8instanceEvE8instance>

            Scheduler::instance().put(t);
    80001fec:	00050593          	mv	a1,a0
    80001ff0:	0000a517          	auipc	a0,0xa
    80001ff4:	84050513          	addi	a0,a0,-1984 # 8000b830 <_ZZN9Scheduler8instanceEvE8instance>
    80001ff8:	00000097          	auipc	ra,0x0
    80001ffc:	e6c080e7          	jalr	-404(ra) # 80001e64 <_ZN9Scheduler3putEP7_thread>
    80002000:	f9dff06f          	j	80001f9c <_ZN4_sem5closeEv+0x20>
        }
    }

    return 0;
}
    80002004:	00000513          	li	a0,0
    80002008:	01813083          	ld	ra,24(sp)
    8000200c:	01013403          	ld	s0,16(sp)
    80002010:	00813483          	ld	s1,8(sp)
    80002014:	02010113          	addi	sp,sp,32
    80002018:	00008067          	ret

000000008000201c <_ZN4_sem6wait_nEj>:
int _sem::wait_n(unsigned n)
{
    if(closed) return -1;
    8000201c:	01854703          	lbu	a4,24(a0)
    80002020:	08071c63          	bnez	a4,800020b8 <_ZN4_sem6wait_nEj+0x9c>
    80002024:	00058793          	mv	a5,a1
    if(n == 0) return 0;
    80002028:	08058c63          	beqz	a1,800020c0 <_ZN4_sem6wait_nEj+0xa4>

    if(head == nullptr && val >=(int) n){
    8000202c:	00853703          	ld	a4,8(a0)
    80002030:	06070263          	beqz	a4,80002094 <_ZN4_sem6wait_nEj+0x78>
{
    80002034:	fe010113          	addi	sp,sp,-32
    80002038:	00113c23          	sd	ra,24(sp)
    8000203c:	00813823          	sd	s0,16(sp)
    80002040:	00913423          	sd	s1,8(sp)
    80002044:	02010413          	addi	s0,sp,32
        val -= n;
        return 0;
    }else{
        _thread::running->isReady = false;
    80002048:	00009497          	auipc	s1,0x9
    8000204c:	77048493          	addi	s1,s1,1904 # 8000b7b8 <_ZN7_thread7runningE>
    80002050:	0004b583          	ld	a1,0(s1)
    80002054:	04058023          	sb	zero,64(a1)
        _thread::running->requestedN = n; 
    80002058:	04f5a423          	sw	a5,72(a1)
        _thread::running->semStatus = 0;
    8000205c:	0405a223          	sw	zero,68(a1)

        add(_thread::running); 
    80002060:	00000097          	auipc	ra,0x0
    80002064:	ea4080e7          	jalr	-348(ra) # 80001f04 <_ZN4_sem3addEP7_thread>
        _thread::dispatch();
    80002068:	00001097          	auipc	ra,0x1
    8000206c:	a3c080e7          	jalr	-1476(ra) # 80002aa4 <_ZN7_thread8dispatchEv>

  
        if (_thread::running->semStatus < 0) {
    80002070:	0004b783          	ld	a5,0(s1)
    80002074:	0447a783          	lw	a5,68(a5)
    80002078:	0207cc63          	bltz	a5,800020b0 <_ZN4_sem6wait_nEj+0x94>
            return -1;
        }
        return 0;
    8000207c:	00000513          	li	a0,0
    }
}
    80002080:	01813083          	ld	ra,24(sp)
    80002084:	01013403          	ld	s0,16(sp)
    80002088:	00813483          	ld	s1,8(sp)
    8000208c:	02010113          	addi	sp,sp,32
    80002090:	00008067          	ret
    if(head == nullptr && val >=(int) n){
    80002094:	00052703          	lw	a4,0(a0)
    80002098:	0005869b          	sext.w	a3,a1
    8000209c:	f8d74ce3          	blt	a4,a3,80002034 <_ZN4_sem6wait_nEj+0x18>
        val -= n;
    800020a0:	40b707bb          	subw	a5,a4,a1
    800020a4:	00f52023          	sw	a5,0(a0)
        return 0;
    800020a8:	00000513          	li	a0,0
    800020ac:	00008067          	ret
            return -1;
    800020b0:	fff00513          	li	a0,-1
    800020b4:	fcdff06f          	j	80002080 <_ZN4_sem6wait_nEj+0x64>
    if(closed) return -1;
    800020b8:	fff00513          	li	a0,-1
    800020bc:	00008067          	ret
    if(n == 0) return 0;
    800020c0:	00000513          	li	a0,0
}
    800020c4:	00008067          	ret

00000000800020c8 <_ZN4_sem4waitEv>:
{   
    800020c8:	ff010113          	addi	sp,sp,-16
    800020cc:	00113423          	sd	ra,8(sp)
    800020d0:	00813023          	sd	s0,0(sp)
    800020d4:	01010413          	addi	s0,sp,16
    return wait_n(1);
    800020d8:	00100593          	li	a1,1
    800020dc:	00000097          	auipc	ra,0x0
    800020e0:	f40080e7          	jalr	-192(ra) # 8000201c <_ZN4_sem6wait_nEj>
}
    800020e4:	00813083          	ld	ra,8(sp)
    800020e8:	00013403          	ld	s0,0(sp)
    800020ec:	01010113          	addi	sp,sp,16
    800020f0:	00008067          	ret

00000000800020f4 <_ZN4_sem8signal_nEj>:

int _sem::signal_n(unsigned n) {
    if (closed) return -1;
    800020f4:	01854783          	lbu	a5,24(a0)
    800020f8:	0a079463          	bnez	a5,800021a0 <_ZN4_sem8signal_nEj+0xac>
int _sem::signal_n(unsigned n) {
    800020fc:	fe010113          	addi	sp,sp,-32
    80002100:	00113c23          	sd	ra,24(sp)
    80002104:	00813823          	sd	s0,16(sp)
    80002108:	00913423          	sd	s1,8(sp)
    8000210c:	02010413          	addi	s0,sp,32
    80002110:	00050493          	mv	s1,a0
    
    val += n;
    80002114:	00052783          	lw	a5,0(a0)
    80002118:	00b785bb          	addw	a1,a5,a1
    8000211c:	00b52023          	sw	a1,0(a0)
    80002120:	0140006f          	j	80002134 <_ZN4_sem8signal_nEj+0x40>
        
        val -= t->requestedN; 
        t->isReady = true;
        t->semStatus = 0;
        
        Scheduler::instance().put(t);
    80002124:	00009517          	auipc	a0,0x9
    80002128:	70c50513          	addi	a0,a0,1804 # 8000b830 <_ZZN9Scheduler8instanceEvE8instance>
    8000212c:	00000097          	auipc	ra,0x0
    80002130:	d38080e7          	jalr	-712(ra) # 80001e64 <_ZN9Scheduler3putEP7_thread>
    while (head && val >= (int)head->requestedN) {
    80002134:	0084b783          	ld	a5,8(s1)
    80002138:	06078863          	beqz	a5,800021a8 <_ZN4_sem8signal_nEj+0xb4>
    8000213c:	0004a703          	lw	a4,0(s1)
    80002140:	0487a783          	lw	a5,72(a5)
    80002144:	06f74e63          	blt	a4,a5,800021c0 <_ZN4_sem8signal_nEj+0xcc>
        _thread *t = get(); 
    80002148:	00048513          	mv	a0,s1
    8000214c:	00000097          	auipc	ra,0x0
    80002150:	df4080e7          	jalr	-524(ra) # 80001f40 <_ZN4_sem3getEv>
    80002154:	00050593          	mv	a1,a0
        val -= t->requestedN; 
    80002158:	04852703          	lw	a4,72(a0)
    8000215c:	0004a783          	lw	a5,0(s1)
    80002160:	40e787bb          	subw	a5,a5,a4
    80002164:	00f4a023          	sw	a5,0(s1)
        t->isReady = true;
    80002168:	00100793          	li	a5,1
    8000216c:	04f50023          	sb	a5,64(a0)
        t->semStatus = 0;
    80002170:	04052223          	sw	zero,68(a0)
    80002174:	00009797          	auipc	a5,0x9
    80002178:	62c7c783          	lbu	a5,1580(a5) # 8000b7a0 <_ZGVZN9Scheduler8instanceEvE8instance>
    8000217c:	fa0794e3          	bnez	a5,80002124 <_ZN4_sem8signal_nEj+0x30>
    Scheduler() : head(nullptr), tail(nullptr) {};
    80002180:	00009797          	auipc	a5,0x9
    80002184:	6b078793          	addi	a5,a5,1712 # 8000b830 <_ZZN9Scheduler8instanceEvE8instance>
    80002188:	0007b023          	sd	zero,0(a5)
    8000218c:	0007b423          	sd	zero,8(a5)
        static Scheduler instance;
    80002190:	00100793          	li	a5,1
    80002194:	00009717          	auipc	a4,0x9
    80002198:	60f70623          	sb	a5,1548(a4) # 8000b7a0 <_ZGVZN9Scheduler8instanceEvE8instance>
    8000219c:	f89ff06f          	j	80002124 <_ZN4_sem8signal_nEj+0x30>
    if (closed) return -1;
    800021a0:	fff00513          	li	a0,-1

    }

    return 0;
    800021a4:	00008067          	ret
    return 0;
    800021a8:	00000513          	li	a0,0
    800021ac:	01813083          	ld	ra,24(sp)
    800021b0:	01013403          	ld	s0,16(sp)
    800021b4:	00813483          	ld	s1,8(sp)
    800021b8:	02010113          	addi	sp,sp,32
    800021bc:	00008067          	ret
    return 0;
    800021c0:	00000513          	li	a0,0
    800021c4:	fe9ff06f          	j	800021ac <_ZN4_sem8signal_nEj+0xb8>

00000000800021c8 <_ZN4_sem6signalEv>:
{
    800021c8:	ff010113          	addi	sp,sp,-16
    800021cc:	00113423          	sd	ra,8(sp)
    800021d0:	00813023          	sd	s0,0(sp)
    800021d4:	01010413          	addi	s0,sp,16
    return signal_n(1);
    800021d8:	00100593          	li	a1,1
    800021dc:	00000097          	auipc	ra,0x0
    800021e0:	f18080e7          	jalr	-232(ra) # 800020f4 <_ZN4_sem8signal_nEj>
}
    800021e4:	00813083          	ld	ra,8(sp)
    800021e8:	00013403          	ld	s0,0(sp)
    800021ec:	01010113          	addi	sp,sp,16
    800021f0:	00008067          	ret

00000000800021f4 <_Z9mem_allocm>:
#include "../h/syscall_c.h"
#include  "../h/riscv.h"
#include "../h/Console.h"

void *mem_alloc(size_t size) {
    800021f4:	fe010113          	addi	sp,sp,-32
    800021f8:	00813c23          	sd	s0,24(sp)
    800021fc:	02010413          	addi	s0,sp,32
    size_t blocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002200:	03f50513          	addi	a0,a0,63
    80002204:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80002208:	00050593          	mv	a1,a0
    8000220c:	00100793          	li	a5,1
    80002210:	00078513          	mv	a0,a5

    Riscv::writeARegister(1, blocks);
    Riscv::writeARegister(0, 0x01);

    __asm__ volatile("ecall");
    80002214:	00000073          	ecall
    __asm__ volatile("mv %[val], a%[reg]" : [val] "=r"(value) : [reg] "i"(reg_number));
    80002218:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    8000221c:	fef43423          	sd	a5,-24(s0)
    return (void*) a0;
    80002220:	fe843503          	ld	a0,-24(s0)


}
    80002224:	01813403          	ld	s0,24(sp)
    80002228:	02010113          	addi	sp,sp,32
    8000222c:	00008067          	ret

0000000080002230 <_Z8mem_freePv>:

int mem_free (void* ptr) {
    80002230:	fe010113          	addi	sp,sp,-32
    80002234:	00813c23          	sd	s0,24(sp)
    80002238:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    8000223c:	00050593          	mv	a1,a0
    80002240:	00200793          	li	a5,2
    80002244:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)ptr);
    Riscv::writeARegister(0, 0x02);

    __asm__ volatile("ecall");
    80002248:	00000073          	ecall
    __asm__ volatile("mv %[val], a%[reg]" : [val] "=r"(value) : [reg] "i"(reg_number));
    8000224c:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80002250:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    80002254:	fe843503          	ld	a0,-24(s0)
}
    80002258:	0005051b          	sext.w	a0,a0
    8000225c:	01813403          	ld	s0,24(sp)
    80002260:	02010113          	addi	sp,sp,32
    80002264:	00008067          	ret

0000000080002268 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void(*start_routine)(void *), void *arg) {
    80002268:	fc010113          	addi	sp,sp,-64
    8000226c:	02113c23          	sd	ra,56(sp)
    80002270:	02813823          	sd	s0,48(sp)
    80002274:	02913423          	sd	s1,40(sp)
    80002278:	03213023          	sd	s2,32(sp)
    8000227c:	01313c23          	sd	s3,24(sp)
    80002280:	04010413          	addi	s0,sp,64
    80002284:	00050913          	mv	s2,a0
    80002288:	00058493          	mv	s1,a1
    8000228c:	00060993          	mv	s3,a2
    void* volatile stack = nullptr;
    80002290:	fc043423          	sd	zero,-56(s0)
    if (start_routine) {
    80002294:	00058a63          	beqz	a1,800022a8 <_Z13thread_createPP7_threadPFvPvES2_+0x40>
        stack = mem_alloc(DEFAULT_STACK_SIZE);
    80002298:	00001537          	lui	a0,0x1
    8000229c:	00000097          	auipc	ra,0x0
    800022a0:	f58080e7          	jalr	-168(ra) # 800021f4 <_Z9mem_allocm>
    800022a4:	fca43423          	sd	a0,-56(s0)
    }


    Riscv::writeARegister(4, (uint64)stack);
    800022a8:	fc843783          	ld	a5,-56(s0)
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    800022ac:	00078713          	mv	a4,a5
    800022b0:	00098693          	mv	a3,s3
    800022b4:	00048613          	mv	a2,s1
    800022b8:	00090593          	mv	a1,s2
    800022bc:	01100793          	li	a5,17
    800022c0:	00078513          	mv	a0,a5
    Riscv::writeARegister(2, (uint64)start_routine);
    Riscv::writeARegister(1, (uint64)handle);

    Riscv::writeARegister(0, 0x11);

    __asm__ volatile("ecall");
    800022c4:	00000073          	ecall
    __asm__ volatile("mv %[val], a%[reg]" : [val] "=r"(value) : [reg] "i"(reg_number));
    800022c8:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    800022cc:	fcf43023          	sd	a5,-64(s0)
    return (int) a0;
    800022d0:	fc043503          	ld	a0,-64(s0)
}
    800022d4:	0005051b          	sext.w	a0,a0
    800022d8:	03813083          	ld	ra,56(sp)
    800022dc:	03013403          	ld	s0,48(sp)
    800022e0:	02813483          	ld	s1,40(sp)
    800022e4:	02013903          	ld	s2,32(sp)
    800022e8:	01813983          	ld	s3,24(sp)
    800022ec:	04010113          	addi	sp,sp,64
    800022f0:	00008067          	ret

00000000800022f4 <_Z15thread_dispatchv>:

void thread_dispatch() {
    800022f4:	ff010113          	addi	sp,sp,-16
    800022f8:	00813423          	sd	s0,8(sp)
    800022fc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80002300:	01300793          	li	a5,19
    80002304:	00078513          	mv	a0,a5
    Riscv::writeARegister(0, 0x13);

    __asm__ volatile("ecall");
    80002308:	00000073          	ecall

}
    8000230c:	00813403          	ld	s0,8(sp)
    80002310:	01010113          	addi	sp,sp,16
    80002314:	00008067          	ret

0000000080002318 <_Z11thread_exitv>:

int thread_exit() {
    80002318:	fe010113          	addi	sp,sp,-32
    8000231c:	00813c23          	sd	s0,24(sp)
    80002320:	02010413          	addi	s0,sp,32
    80002324:	01200793          	li	a5,18
    80002328:	00078513          	mv	a0,a5
    Riscv::writeARegister(0, 0x12);

    __asm__ volatile("ecall");
    8000232c:	00000073          	ecall
    __asm__ volatile("mv %[val], a%[reg]" : [val] "=r"(value) : [reg] "i"(reg_number));
    80002330:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80002334:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    80002338:	fe843503          	ld	a0,-24(s0)

}
    8000233c:	0005051b          	sext.w	a0,a0
    80002340:	01813403          	ld	s0,24(sp)
    80002344:	02010113          	addi	sp,sp,32
    80002348:	00008067          	ret

000000008000234c <_Z8sem_openPP4_semj>:

int sem_open(sem_t*handle, unsigned init) {
    8000234c:	fe010113          	addi	sp,sp,-32
    80002350:	00813c23          	sd	s0,24(sp)
    80002354:	02010413          	addi	s0,sp,32
    Riscv::writeARegister(2, (uint64)init);
    80002358:	02059593          	slli	a1,a1,0x20
    8000235c:	0205d593          	srli	a1,a1,0x20
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80002360:	00058613          	mv	a2,a1
    80002364:	00050593          	mv	a1,a0
    80002368:	02100793          	li	a5,33
    8000236c:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)handle);

    Riscv::writeARegister(0, 0x21);

    __asm__ volatile("ecall");
    80002370:	00000073          	ecall
    __asm__ volatile("mv %[val], a%[reg]" : [val] "=r"(value) : [reg] "i"(reg_number));
    80002374:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80002378:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    8000237c:	fe843503          	ld	a0,-24(s0)

}
    80002380:	0005051b          	sext.w	a0,a0
    80002384:	01813403          	ld	s0,24(sp)
    80002388:	02010113          	addi	sp,sp,32
    8000238c:	00008067          	ret

0000000080002390 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    80002390:	fe010113          	addi	sp,sp,-32
    80002394:	00813c23          	sd	s0,24(sp)
    80002398:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    8000239c:	00050593          	mv	a1,a0
    800023a0:	02200793          	li	a5,34
    800023a4:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)handle);

    Riscv::writeARegister(0, 0x22);

    __asm__ volatile("ecall");
    800023a8:	00000073          	ecall
    __asm__ volatile("mv %[val], a%[reg]" : [val] "=r"(value) : [reg] "i"(reg_number));
    800023ac:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    800023b0:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    800023b4:	fe843503          	ld	a0,-24(s0)
}
    800023b8:	0005051b          	sext.w	a0,a0
    800023bc:	01813403          	ld	s0,24(sp)
    800023c0:	02010113          	addi	sp,sp,32
    800023c4:	00008067          	ret

00000000800023c8 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    800023c8:	fe010113          	addi	sp,sp,-32
    800023cc:	00813c23          	sd	s0,24(sp)
    800023d0:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    800023d4:	00050593          	mv	a1,a0
    800023d8:	02300793          	li	a5,35
    800023dc:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)id);

    Riscv::writeARegister(0, 0x23);

    __asm__ volatile("ecall");
    800023e0:	00000073          	ecall
    __asm__ volatile("mv %[val], a%[reg]" : [val] "=r"(value) : [reg] "i"(reg_number));
    800023e4:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    800023e8:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    800023ec:	fe843503          	ld	a0,-24(s0)
}
    800023f0:	0005051b          	sext.w	a0,a0
    800023f4:	01813403          	ld	s0,24(sp)
    800023f8:	02010113          	addi	sp,sp,32
    800023fc:	00008067          	ret

0000000080002400 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    80002400:	fe010113          	addi	sp,sp,-32
    80002404:	00813c23          	sd	s0,24(sp)
    80002408:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    8000240c:	00050593          	mv	a1,a0
    80002410:	02400793          	li	a5,36
    80002414:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)id);

    Riscv::writeARegister(0, 0x24);

    __asm__ volatile("ecall");
    80002418:	00000073          	ecall
    __asm__ volatile("mv %[val], a%[reg]" : [val] "=r"(value) : [reg] "i"(reg_number));
    8000241c:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80002420:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    80002424:	fe843503          	ld	a0,-24(s0)
}
    80002428:	0005051b          	sext.w	a0,a0
    8000242c:	01813403          	ld	s0,24(sp)
    80002430:	02010113          	addi	sp,sp,32
    80002434:	00008067          	ret

0000000080002438 <_Z10sem_wait_nP4_semj>:

int sem_wait_n(sem_t id, unsigned n)
{
    80002438:	fe010113          	addi	sp,sp,-32
    8000243c:	00813c23          	sd	s0,24(sp)
    80002440:	02010413          	addi	s0,sp,32
    Riscv::writeARegister(2, (uint64)n);
    80002444:	02059593          	slli	a1,a1,0x20
    80002448:	0205d593          	srli	a1,a1,0x20
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    8000244c:	00058613          	mv	a2,a1
    80002450:	00050593          	mv	a1,a0
    80002454:	02500793          	li	a5,37
    80002458:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)id);

    Riscv::writeARegister(0, 0x25);

    __asm__ volatile("ecall");
    8000245c:	00000073          	ecall
    __asm__ volatile("mv %[val], a%[reg]" : [val] "=r"(value) : [reg] "i"(reg_number));
    80002460:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80002464:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    80002468:	fe843503          	ld	a0,-24(s0)
}
    8000246c:	0005051b          	sext.w	a0,a0
    80002470:	01813403          	ld	s0,24(sp)
    80002474:	02010113          	addi	sp,sp,32
    80002478:	00008067          	ret

000000008000247c <_Z12sem_signal_nP4_semj>:
int sem_signal_n(sem_t id, unsigned n)
{   
    8000247c:	fe010113          	addi	sp,sp,-32
    80002480:	00813c23          	sd	s0,24(sp)
    80002484:	02010413          	addi	s0,sp,32
    Riscv::writeARegister(2, (uint64)n);
    80002488:	02059593          	slli	a1,a1,0x20
    8000248c:	0205d593          	srli	a1,a1,0x20
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80002490:	00058613          	mv	a2,a1
    80002494:	00050593          	mv	a1,a0
    80002498:	02600793          	li	a5,38
    8000249c:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)id);

    Riscv::writeARegister(0, 0x26);

    __asm__ volatile("ecall");
    800024a0:	00000073          	ecall
    __asm__ volatile("mv %[val], a%[reg]" : [val] "=r"(value) : [reg] "i"(reg_number));
    800024a4:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    800024a8:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    800024ac:	fe843503          	ld	a0,-24(s0)
}
    800024b0:	0005051b          	sext.w	a0,a0
    800024b4:	01813403          	ld	s0,24(sp)
    800024b8:	02010113          	addi	sp,sp,32
    800024bc:	00008067          	ret

00000000800024c0 <_Z10time_sleepm>:
int time_sleep(time_t t)
{
    800024c0:	fe010113          	addi	sp,sp,-32
    800024c4:	00813c23          	sd	s0,24(sp)
    800024c8:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    800024cc:	00050593          	mv	a1,a0
    800024d0:	03100793          	li	a5,49
    800024d4:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)t);
    Riscv::writeARegister(0, 0x31);

    __asm__ volatile("ecall");
    800024d8:	00000073          	ecall
    __asm__ volatile("mv %[val], a%[reg]" : [val] "=r"(value) : [reg] "i"(reg_number));
    800024dc:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    800024e0:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    800024e4:	fe843503          	ld	a0,-24(s0)
}
    800024e8:	0005051b          	sext.w	a0,a0
    800024ec:	01813403          	ld	s0,24(sp)
    800024f0:	02010113          	addi	sp,sp,32
    800024f4:	00008067          	ret

00000000800024f8 <_Z4getcv>:

char getc() {
    800024f8:	fe010113          	addi	sp,sp,-32
    800024fc:	00113c23          	sd	ra,24(sp)
    80002500:	00813823          	sd	s0,16(sp)
    80002504:	02010413          	addi	s0,sp,32
        ensureInit();
    80002508:	fffff097          	auipc	ra,0xfffff
    8000250c:	d40080e7          	jalr	-704(ra) # 80001248 <_ZN8_console10ensureInitEv>
     sem_wait(reinterpret_cast<sem_t>(_console::getInSem()));
    80002510:	00009517          	auipc	a0,0x9
    80002514:	26053503          	ld	a0,608(a0) # 8000b770 <_ZN8_console5inSemE>
    80002518:	00000097          	auipc	ra,0x0
    8000251c:	eb0080e7          	jalr	-336(ra) # 800023c8 <_Z8sem_waitP4_sem>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80002520:	04100793          	li	a5,65
    80002524:	00078513          	mv	a0,a5
    Riscv::writeARegister(0, 0x41);

    __asm__ volatile("ecall");
    80002528:	00000073          	ecall
    __asm__ volatile("mv %[val], a%[reg]" : [val] "=r"(value) : [reg] "i"(reg_number));
    8000252c:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80002530:	fef43423          	sd	a5,-24(s0)
    return (char) a0;
    80002534:	fe843503          	ld	a0,-24(s0)
}
    80002538:	0ff57513          	andi	a0,a0,255
    8000253c:	01813083          	ld	ra,24(sp)
    80002540:	01013403          	ld	s0,16(sp)
    80002544:	02010113          	addi	sp,sp,32
    80002548:	00008067          	ret

000000008000254c <_Z4putcc>:

void putc(char c) {
    8000254c:	fe010113          	addi	sp,sp,-32
    80002550:	00113c23          	sd	ra,24(sp)
    80002554:	00813823          	sd	s0,16(sp)
    80002558:	00913423          	sd	s1,8(sp)
    8000255c:	02010413          	addi	s0,sp,32
    80002560:	00050493          	mv	s1,a0
        ensureInit();
    80002564:	fffff097          	auipc	ra,0xfffff
    80002568:	ce4080e7          	jalr	-796(ra) # 80001248 <_ZN8_console10ensureInitEv>
    sem_wait(reinterpret_cast<sem_t>(_console::getOutSem()));
    8000256c:	00009517          	auipc	a0,0x9
    80002570:	1fc53503          	ld	a0,508(a0) # 8000b768 <_ZN8_console6outSemE>
    80002574:	00000097          	auipc	ra,0x0
    80002578:	e54080e7          	jalr	-428(ra) # 800023c8 <_Z8sem_waitP4_sem>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    8000257c:	00048593          	mv	a1,s1
    80002580:	04200793          	li	a5,66
    80002584:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)c);
    Riscv::writeARegister(0, 0x42);

    __asm__ volatile("ecall");
    80002588:	00000073          	ecall

}
    8000258c:	01813083          	ld	ra,24(sp)
    80002590:	01013403          	ld	s0,16(sp)
    80002594:	00813483          	ld	s1,8(sp)
    80002598:	02010113          	addi	sp,sp,32
    8000259c:	00008067          	ret

00000000800025a0 <_ZN6ThreadD1Ev>:
    this->myHandle = 0;
    this->body = body;
    this->arg = arg;
}

Thread::~Thread() = default;
    800025a0:	ff010113          	addi	sp,sp,-16
    800025a4:	00813423          	sd	s0,8(sp)
    800025a8:	01010413          	addi	s0,sp,16
    800025ac:	00007797          	auipc	a5,0x7
    800025b0:	bbc78793          	addi	a5,a5,-1092 # 80009168 <_ZTV6Thread+0x10>
    800025b4:	00f53023          	sd	a5,0(a0)
    800025b8:	00813403          	ld	s0,8(sp)
    800025bc:	01010113          	addi	sp,sp,16
    800025c0:	00008067          	ret

00000000800025c4 <_ZN6Thread7wrapperEPv>:
{
    return time_sleep(t);
}

void Thread::wrapper(void * arg)
{
    800025c4:	ff010113          	addi	sp,sp,-16
    800025c8:	00113423          	sd	ra,8(sp)
    800025cc:	00813023          	sd	s0,0(sp)
    800025d0:	01010413          	addi	s0,sp,16
    Thread* t = (Thread*) arg;
    t->run();
    800025d4:	00053783          	ld	a5,0(a0)
    800025d8:	0107b783          	ld	a5,16(a5)
    800025dc:	000780e7          	jalr	a5
}
    800025e0:	00813083          	ld	ra,8(sp)
    800025e4:	00013403          	ld	s0,0(sp)
    800025e8:	01010113          	addi	sp,sp,16
    800025ec:	00008067          	ret

00000000800025f0 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init)
{
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore()
    800025f0:	fe010113          	addi	sp,sp,-32
    800025f4:	00113c23          	sd	ra,24(sp)
    800025f8:	00813823          	sd	s0,16(sp)
    800025fc:	00913423          	sd	s1,8(sp)
    80002600:	02010413          	addi	s0,sp,32
    80002604:	00050493          	mv	s1,a0
    80002608:	00007797          	auipc	a5,0x7
    8000260c:	b8878793          	addi	a5,a5,-1144 # 80009190 <_ZTV9Semaphore+0x10>
    80002610:	00f53023          	sd	a5,0(a0)
{
    if (!myHandle) return;
    80002614:	00853503          	ld	a0,8(a0)
    80002618:	00050863          	beqz	a0,80002628 <_ZN9SemaphoreD1Ev+0x38>
    sem_close(myHandle);
    8000261c:	00000097          	auipc	ra,0x0
    80002620:	d74080e7          	jalr	-652(ra) # 80002390 <_Z9sem_closeP4_sem>
    myHandle = 0;
    80002624:	0004b423          	sd	zero,8(s1)
}
    80002628:	01813083          	ld	ra,24(sp)
    8000262c:	01013403          	ld	s0,16(sp)
    80002630:	00813483          	ld	s1,8(sp)
    80002634:	02010113          	addi	sp,sp,32
    80002638:	00008067          	ret

000000008000263c <_Znwm>:
void* operator new(size_t size) {
    8000263c:	ff010113          	addi	sp,sp,-16
    80002640:	00113423          	sd	ra,8(sp)
    80002644:	00813023          	sd	s0,0(sp)
    80002648:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000264c:	00000097          	auipc	ra,0x0
    80002650:	ba8080e7          	jalr	-1112(ra) # 800021f4 <_Z9mem_allocm>
}
    80002654:	00813083          	ld	ra,8(sp)
    80002658:	00013403          	ld	s0,0(sp)
    8000265c:	01010113          	addi	sp,sp,16
    80002660:	00008067          	ret

0000000080002664 <_ZdlPv>:
void operator delete(void* ptr) {
    80002664:	ff010113          	addi	sp,sp,-16
    80002668:	00113423          	sd	ra,8(sp)
    8000266c:	00813023          	sd	s0,0(sp)
    80002670:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80002674:	00000097          	auipc	ra,0x0
    80002678:	bbc080e7          	jalr	-1092(ra) # 80002230 <_Z8mem_freePv>
}
    8000267c:	00813083          	ld	ra,8(sp)
    80002680:	00013403          	ld	s0,0(sp)
    80002684:	01010113          	addi	sp,sp,16
    80002688:	00008067          	ret

000000008000268c <_ZN6ThreadD0Ev>:
Thread::~Thread() = default;
    8000268c:	fe010113          	addi	sp,sp,-32
    80002690:	00113c23          	sd	ra,24(sp)
    80002694:	00813823          	sd	s0,16(sp)
    80002698:	00913423          	sd	s1,8(sp)
    8000269c:	02010413          	addi	s0,sp,32
    800026a0:	00050493          	mv	s1,a0
    800026a4:	00000097          	auipc	ra,0x0
    800026a8:	efc080e7          	jalr	-260(ra) # 800025a0 <_ZN6ThreadD1Ev>
    800026ac:	00048513          	mv	a0,s1
    800026b0:	00000097          	auipc	ra,0x0
    800026b4:	fb4080e7          	jalr	-76(ra) # 80002664 <_ZdlPv>
    800026b8:	01813083          	ld	ra,24(sp)
    800026bc:	01013403          	ld	s0,16(sp)
    800026c0:	00813483          	ld	s1,8(sp)
    800026c4:	02010113          	addi	sp,sp,32
    800026c8:	00008067          	ret

00000000800026cc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore()
    800026cc:	fe010113          	addi	sp,sp,-32
    800026d0:	00113c23          	sd	ra,24(sp)
    800026d4:	00813823          	sd	s0,16(sp)
    800026d8:	00913423          	sd	s1,8(sp)
    800026dc:	02010413          	addi	s0,sp,32
    800026e0:	00050493          	mv	s1,a0
}
    800026e4:	00000097          	auipc	ra,0x0
    800026e8:	f0c080e7          	jalr	-244(ra) # 800025f0 <_ZN9SemaphoreD1Ev>
    800026ec:	00048513          	mv	a0,s1
    800026f0:	00000097          	auipc	ra,0x0
    800026f4:	f74080e7          	jalr	-140(ra) # 80002664 <_ZdlPv>
    800026f8:	01813083          	ld	ra,24(sp)
    800026fc:	01013403          	ld	s0,16(sp)
    80002700:	00813483          	ld	s1,8(sp)
    80002704:	02010113          	addi	sp,sp,32
    80002708:	00008067          	ret

000000008000270c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg)
    8000270c:	ff010113          	addi	sp,sp,-16
    80002710:	00813423          	sd	s0,8(sp)
    80002714:	01010413          	addi	s0,sp,16
    80002718:	00007797          	auipc	a5,0x7
    8000271c:	a5078793          	addi	a5,a5,-1456 # 80009168 <_ZTV6Thread+0x10>
    80002720:	00f53023          	sd	a5,0(a0)
    this->myHandle = 0;
    80002724:	00053423          	sd	zero,8(a0)
    this->body = body;
    80002728:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    8000272c:	00c53c23          	sd	a2,24(a0)
}
    80002730:	00813403          	ld	s0,8(sp)
    80002734:	01010113          	addi	sp,sp,16
    80002738:	00008067          	ret

000000008000273c <_ZN6Thread5startEv>:
{
    8000273c:	ff010113          	addi	sp,sp,-16
    80002740:	00113423          	sd	ra,8(sp)
    80002744:	00813023          	sd	s0,0(sp)
    80002748:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, body, arg);
    8000274c:	01853603          	ld	a2,24(a0)
    80002750:	01053583          	ld	a1,16(a0)
    80002754:	00850513          	addi	a0,a0,8
    80002758:	00000097          	auipc	ra,0x0
    8000275c:	b10080e7          	jalr	-1264(ra) # 80002268 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80002760:	00813083          	ld	ra,8(sp)
    80002764:	00013403          	ld	s0,0(sp)
    80002768:	01010113          	addi	sp,sp,16
    8000276c:	00008067          	ret

0000000080002770 <_ZN6Thread8dispatchEv>:
{
    80002770:	ff010113          	addi	sp,sp,-16
    80002774:	00113423          	sd	ra,8(sp)
    80002778:	00813023          	sd	s0,0(sp)
    8000277c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002780:	00000097          	auipc	ra,0x0
    80002784:	b74080e7          	jalr	-1164(ra) # 800022f4 <_Z15thread_dispatchv>
}
    80002788:	00813083          	ld	ra,8(sp)
    8000278c:	00013403          	ld	s0,0(sp)
    80002790:	01010113          	addi	sp,sp,16
    80002794:	00008067          	ret

0000000080002798 <_ZN6Thread5sleepEm>:
{
    80002798:	ff010113          	addi	sp,sp,-16
    8000279c:	00113423          	sd	ra,8(sp)
    800027a0:	00813023          	sd	s0,0(sp)
    800027a4:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    800027a8:	00000097          	auipc	ra,0x0
    800027ac:	d18080e7          	jalr	-744(ra) # 800024c0 <_Z10time_sleepm>
}
    800027b0:	00813083          	ld	ra,8(sp)
    800027b4:	00013403          	ld	s0,0(sp)
    800027b8:	01010113          	addi	sp,sp,16
    800027bc:	00008067          	ret

00000000800027c0 <_ZN14PeriodicThread3runEv>:
{
    this->period = period;
}

void PeriodicThread::run()
{
    800027c0:	fe010113          	addi	sp,sp,-32
    800027c4:	00113c23          	sd	ra,24(sp)
    800027c8:	00813823          	sd	s0,16(sp)
    800027cc:	00913423          	sd	s1,8(sp)
    800027d0:	02010413          	addi	s0,sp,32
    800027d4:	00050493          	mv	s1,a0
    800027d8:	01c0006f          	j	800027f4 <_ZN14PeriodicThread3runEv+0x34>
    while(this->period != (time_t) -1){
        Thread::sleep(period);
    800027dc:	00000097          	auipc	ra,0x0
    800027e0:	fbc080e7          	jalr	-68(ra) # 80002798 <_ZN6Thread5sleepEm>
        periodicActivation();
    800027e4:	0004b783          	ld	a5,0(s1)
    800027e8:	0187b783          	ld	a5,24(a5)
    800027ec:	00048513          	mv	a0,s1
    800027f0:	000780e7          	jalr	a5
    while(this->period != (time_t) -1){
    800027f4:	0204b503          	ld	a0,32(s1)
    800027f8:	fff00793          	li	a5,-1
    800027fc:	fef510e3          	bne	a0,a5,800027dc <_ZN14PeriodicThread3runEv+0x1c>
    }
}
    80002800:	01813083          	ld	ra,24(sp)
    80002804:	01013403          	ld	s0,16(sp)
    80002808:	00813483          	ld	s1,8(sp)
    8000280c:	02010113          	addi	sp,sp,32
    80002810:	00008067          	ret

0000000080002814 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80002814:	ff010113          	addi	sp,sp,-16
    80002818:	00813423          	sd	s0,8(sp)
    8000281c:	01010413          	addi	s0,sp,16
    80002820:	00007797          	auipc	a5,0x7
    80002824:	94878793          	addi	a5,a5,-1720 # 80009168 <_ZTV6Thread+0x10>
    80002828:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    8000282c:	00053423          	sd	zero,8(a0)
    body = wrapper;
    80002830:	00000797          	auipc	a5,0x0
    80002834:	d9478793          	addi	a5,a5,-620 # 800025c4 <_ZN6Thread7wrapperEPv>
    80002838:	00f53823          	sd	a5,16(a0)
    arg = this;
    8000283c:	00a53c23          	sd	a0,24(a0)
}
    80002840:	00813403          	ld	s0,8(sp)
    80002844:	01010113          	addi	sp,sp,16
    80002848:	00008067          	ret

000000008000284c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init)
    8000284c:	ff010113          	addi	sp,sp,-16
    80002850:	00113423          	sd	ra,8(sp)
    80002854:	00813023          	sd	s0,0(sp)
    80002858:	01010413          	addi	s0,sp,16
    8000285c:	00007797          	auipc	a5,0x7
    80002860:	93478793          	addi	a5,a5,-1740 # 80009190 <_ZTV9Semaphore+0x10>
    80002864:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80002868:	00850513          	addi	a0,a0,8
    8000286c:	00000097          	auipc	ra,0x0
    80002870:	ae0080e7          	jalr	-1312(ra) # 8000234c <_Z8sem_openPP4_semj>
}
    80002874:	00813083          	ld	ra,8(sp)
    80002878:	00013403          	ld	s0,0(sp)
    8000287c:	01010113          	addi	sp,sp,16
    80002880:	00008067          	ret

0000000080002884 <_ZN9Semaphore4waitEv>:
{
    80002884:	ff010113          	addi	sp,sp,-16
    80002888:	00113423          	sd	ra,8(sp)
    8000288c:	00813023          	sd	s0,0(sp)
    80002890:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002894:	00853503          	ld	a0,8(a0)
    80002898:	00000097          	auipc	ra,0x0
    8000289c:	b30080e7          	jalr	-1232(ra) # 800023c8 <_Z8sem_waitP4_sem>
}
    800028a0:	00813083          	ld	ra,8(sp)
    800028a4:	00013403          	ld	s0,0(sp)
    800028a8:	01010113          	addi	sp,sp,16
    800028ac:	00008067          	ret

00000000800028b0 <_ZN9Semaphore6signalEv>:
{
    800028b0:	ff010113          	addi	sp,sp,-16
    800028b4:	00113423          	sd	ra,8(sp)
    800028b8:	00813023          	sd	s0,0(sp)
    800028bc:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800028c0:	00853503          	ld	a0,8(a0)
    800028c4:	00000097          	auipc	ra,0x0
    800028c8:	b3c080e7          	jalr	-1220(ra) # 80002400 <_Z10sem_signalP4_sem>
}
    800028cc:	00813083          	ld	ra,8(sp)
    800028d0:	00013403          	ld	s0,0(sp)
    800028d4:	01010113          	addi	sp,sp,16
    800028d8:	00008067          	ret

00000000800028dc <_ZN14PeriodicThread9terminateEv>:
{
    800028dc:	ff010113          	addi	sp,sp,-16
    800028e0:	00813423          	sd	s0,8(sp)
    800028e4:	01010413          	addi	s0,sp,16
    this->period = (time_t) -1;
    800028e8:	fff00793          	li	a5,-1
    800028ec:	02f53023          	sd	a5,32(a0)
}
    800028f0:	00813403          	ld	s0,8(sp)
    800028f4:	01010113          	addi	sp,sp,16
    800028f8:	00008067          	ret

00000000800028fc <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread()
    800028fc:	fe010113          	addi	sp,sp,-32
    80002900:	00113c23          	sd	ra,24(sp)
    80002904:	00813823          	sd	s0,16(sp)
    80002908:	00913423          	sd	s1,8(sp)
    8000290c:	01213023          	sd	s2,0(sp)
    80002910:	02010413          	addi	s0,sp,32
    80002914:	00050493          	mv	s1,a0
    80002918:	00058913          	mv	s2,a1
    8000291c:	00000097          	auipc	ra,0x0
    80002920:	ef8080e7          	jalr	-264(ra) # 80002814 <_ZN6ThreadC1Ev>
    80002924:	00007797          	auipc	a5,0x7
    80002928:	88c78793          	addi	a5,a5,-1908 # 800091b0 <_ZTV14PeriodicThread+0x10>
    8000292c:	00f4b023          	sd	a5,0(s1)
    this->period = period;
    80002930:	0324b023          	sd	s2,32(s1)
}
    80002934:	01813083          	ld	ra,24(sp)
    80002938:	01013403          	ld	s0,16(sp)
    8000293c:	00813483          	ld	s1,8(sp)
    80002940:	00013903          	ld	s2,0(sp)
    80002944:	02010113          	addi	sp,sp,32
    80002948:	00008067          	ret

000000008000294c <_ZN7Console4getcEv>:

char Console::getc()
{
    8000294c:	ff010113          	addi	sp,sp,-16
    80002950:	00113423          	sd	ra,8(sp)
    80002954:	00813023          	sd	s0,0(sp)
    80002958:	01010413          	addi	s0,sp,16
    return ::getc();
    8000295c:	00000097          	auipc	ra,0x0
    80002960:	b9c080e7          	jalr	-1124(ra) # 800024f8 <_Z4getcv>
}
    80002964:	00813083          	ld	ra,8(sp)
    80002968:	00013403          	ld	s0,0(sp)
    8000296c:	01010113          	addi	sp,sp,16
    80002970:	00008067          	ret

0000000080002974 <_ZN7Console4putcEc>:

void Console::putc(char c)
{
    80002974:	ff010113          	addi	sp,sp,-16
    80002978:	00113423          	sd	ra,8(sp)
    8000297c:	00813023          	sd	s0,0(sp)
    80002980:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002984:	00000097          	auipc	ra,0x0
    80002988:	bc8080e7          	jalr	-1080(ra) # 8000254c <_Z4putcc>
}
    8000298c:	00813083          	ld	ra,8(sp)
    80002990:	00013403          	ld	s0,0(sp)
    80002994:	01010113          	addi	sp,sp,16
    80002998:	00008067          	ret

000000008000299c <_ZN6Thread3runEv>:
    static void dispatch();
    static int sleep(time_t);

protected:
    Thread();
    virtual void run() {}
    8000299c:	ff010113          	addi	sp,sp,-16
    800029a0:	00813423          	sd	s0,8(sp)
    800029a4:	01010413          	addi	s0,sp,16
    800029a8:	00813403          	ld	s0,8(sp)
    800029ac:	01010113          	addi	sp,sp,16
    800029b0:	00008067          	ret

00000000800029b4 <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void terminate();

protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    800029b4:	ff010113          	addi	sp,sp,-16
    800029b8:	00813423          	sd	s0,8(sp)
    800029bc:	01010413          	addi	s0,sp,16
    800029c0:	00813403          	ld	s0,8(sp)
    800029c4:	01010113          	addi	sp,sp,16
    800029c8:	00008067          	ret

00000000800029cc <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    800029cc:	ff010113          	addi	sp,sp,-16
    800029d0:	00113423          	sd	ra,8(sp)
    800029d4:	00813023          	sd	s0,0(sp)
    800029d8:	01010413          	addi	s0,sp,16
    800029dc:	00006797          	auipc	a5,0x6
    800029e0:	7d478793          	addi	a5,a5,2004 # 800091b0 <_ZTV14PeriodicThread+0x10>
    800029e4:	00f53023          	sd	a5,0(a0)
    800029e8:	00000097          	auipc	ra,0x0
    800029ec:	bb8080e7          	jalr	-1096(ra) # 800025a0 <_ZN6ThreadD1Ev>
    800029f0:	00813083          	ld	ra,8(sp)
    800029f4:	00013403          	ld	s0,0(sp)
    800029f8:	01010113          	addi	sp,sp,16
    800029fc:	00008067          	ret

0000000080002a00 <_ZN14PeriodicThreadD0Ev>:
    80002a00:	fe010113          	addi	sp,sp,-32
    80002a04:	00113c23          	sd	ra,24(sp)
    80002a08:	00813823          	sd	s0,16(sp)
    80002a0c:	00913423          	sd	s1,8(sp)
    80002a10:	02010413          	addi	s0,sp,32
    80002a14:	00050493          	mv	s1,a0
    80002a18:	00006797          	auipc	a5,0x6
    80002a1c:	79878793          	addi	a5,a5,1944 # 800091b0 <_ZTV14PeriodicThread+0x10>
    80002a20:	00f53023          	sd	a5,0(a0)
    80002a24:	00000097          	auipc	ra,0x0
    80002a28:	b7c080e7          	jalr	-1156(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80002a2c:	00048513          	mv	a0,s1
    80002a30:	00000097          	auipc	ra,0x0
    80002a34:	c34080e7          	jalr	-972(ra) # 80002664 <_ZdlPv>
    80002a38:	01813083          	ld	ra,24(sp)
    80002a3c:	01013403          	ld	s0,16(sp)
    80002a40:	00813483          	ld	s1,8(sp)
    80002a44:	02010113          	addi	sp,sp,32
    80002a48:	00008067          	ret

0000000080002a4c <_ZN7_thread13threadWrapperEv>:
        context.sp = 0;
    }
}

void _thread::threadWrapper()
{
    80002a4c:	ff010113          	addi	sp,sp,-16
    80002a50:	00113423          	sd	ra,8(sp)
    80002a54:	00813023          	sd	s0,0(sp)
    80002a58:	01010413          	addi	s0,sp,16

    Riscv::popSppSpie();
    80002a5c:	fffff097          	auipc	ra,0xfffff
    80002a60:	e08080e7          	jalr	-504(ra) # 80001864 <_ZN5Riscv10popSppSpieEv>
    if (running->body)
    80002a64:	00009717          	auipc	a4,0x9
    80002a68:	d5473703          	ld	a4,-684(a4) # 8000b7b8 <_ZN7_thread7runningE>
    80002a6c:	01073783          	ld	a5,16(a4)
    80002a70:	00078663          	beqz	a5,80002a7c <_ZN7_thread13threadWrapperEv+0x30>
        running->body(running->args);
    80002a74:	01873503          	ld	a0,24(a4)
    80002a78:	000780e7          	jalr	a5
	void setFinished(bool finished) { _thread::finished = finished; };
    80002a7c:	00009797          	auipc	a5,0x9
    80002a80:	d3c7b783          	ld	a5,-708(a5) # 8000b7b8 <_ZN7_thread7runningE>
    80002a84:	00100713          	li	a4,1
    80002a88:	04e780a3          	sb	a4,65(a5)

    running->setFinished(true);

    thread_dispatch();
    80002a8c:	00000097          	auipc	ra,0x0
    80002a90:	868080e7          	jalr	-1944(ra) # 800022f4 <_Z15thread_dispatchv>
}
    80002a94:	00813083          	ld	ra,8(sp)
    80002a98:	00013403          	ld	s0,0(sp)
    80002a9c:	01010113          	addi	sp,sp,16
    80002aa0:	00008067          	ret

0000000080002aa4 <_ZN7_thread8dispatchEv>:
{
    80002aa4:	fe010113          	addi	sp,sp,-32
    80002aa8:	00113c23          	sd	ra,24(sp)
    80002aac:	00813823          	sd	s0,16(sp)
    80002ab0:	00913423          	sd	s1,8(sp)
    80002ab4:	02010413          	addi	s0,sp,32
    _thread *old = running;
    80002ab8:	00009497          	auipc	s1,0x9
    80002abc:	d004b483          	ld	s1,-768(s1) # 8000b7b8 <_ZN7_thread7runningE>
    if (old && !old->finished && old->isReady)
    80002ac0:	04048863          	beqz	s1,80002b10 <_ZN7_thread8dispatchEv+0x6c>
    80002ac4:	0414c783          	lbu	a5,65(s1)
    80002ac8:	04079463          	bnez	a5,80002b10 <_ZN7_thread8dispatchEv+0x6c>
    80002acc:	0404c783          	lbu	a5,64(s1)
    80002ad0:	04078063          	beqz	a5,80002b10 <_ZN7_thread8dispatchEv+0x6c>
    80002ad4:	00009797          	auipc	a5,0x9
    80002ad8:	ccc7c783          	lbu	a5,-820(a5) # 8000b7a0 <_ZGVZN9Scheduler8instanceEvE8instance>
    80002adc:	02079063          	bnez	a5,80002afc <_ZN7_thread8dispatchEv+0x58>
    Scheduler() : head(nullptr), tail(nullptr) {};
    80002ae0:	00009797          	auipc	a5,0x9
    80002ae4:	d5078793          	addi	a5,a5,-688 # 8000b830 <_ZZN9Scheduler8instanceEvE8instance>
    80002ae8:	0007b023          	sd	zero,0(a5)
    80002aec:	0007b423          	sd	zero,8(a5)
        static Scheduler instance;
    80002af0:	00100793          	li	a5,1
    80002af4:	00009717          	auipc	a4,0x9
    80002af8:	caf70623          	sb	a5,-852(a4) # 8000b7a0 <_ZGVZN9Scheduler8instanceEvE8instance>
        Scheduler::instance().put(old);
    80002afc:	00048593          	mv	a1,s1
    80002b00:	00009517          	auipc	a0,0x9
    80002b04:	d3050513          	addi	a0,a0,-720 # 8000b830 <_ZZN9Scheduler8instanceEvE8instance>
    80002b08:	fffff097          	auipc	ra,0xfffff
    80002b0c:	35c080e7          	jalr	860(ra) # 80001e64 <_ZN9Scheduler3putEP7_thread>
    80002b10:	00009797          	auipc	a5,0x9
    80002b14:	c907c783          	lbu	a5,-880(a5) # 8000b7a0 <_ZGVZN9Scheduler8instanceEvE8instance>
    80002b18:	02079063          	bnez	a5,80002b38 <_ZN7_thread8dispatchEv+0x94>
    Scheduler() : head(nullptr), tail(nullptr) {};
    80002b1c:	00009797          	auipc	a5,0x9
    80002b20:	d1478793          	addi	a5,a5,-748 # 8000b830 <_ZZN9Scheduler8instanceEvE8instance>
    80002b24:	0007b023          	sd	zero,0(a5)
    80002b28:	0007b423          	sd	zero,8(a5)
        static Scheduler instance;
    80002b2c:	00100793          	li	a5,1
    80002b30:	00009717          	auipc	a4,0x9
    80002b34:	c6f70823          	sb	a5,-912(a4) # 8000b7a0 <_ZGVZN9Scheduler8instanceEvE8instance>
    running = Scheduler::instance().get();
    80002b38:	00009517          	auipc	a0,0x9
    80002b3c:	cf850513          	addi	a0,a0,-776 # 8000b830 <_ZZN9Scheduler8instanceEvE8instance>
    80002b40:	fffff097          	auipc	ra,0xfffff
    80002b44:	360080e7          	jalr	864(ra) # 80001ea0 <_ZN9Scheduler3getEv>
    80002b48:	00009797          	auipc	a5,0x9
    80002b4c:	c6a7b823          	sd	a0,-912(a5) # 8000b7b8 <_ZN7_thread7runningE>
    _thread::timeSliceCounter = 0;
    80002b50:	00009797          	auipc	a5,0x9
    80002b54:	c607b023          	sd	zero,-928(a5) # 8000b7b0 <_ZN7_thread16timeSliceCounterE>
    switchContext(&old->context, &running->context);
    80002b58:	02850593          	addi	a1,a0,40
    80002b5c:	02848513          	addi	a0,s1,40
    80002b60:	ffffe097          	auipc	ra,0xffffe
    80002b64:	5b0080e7          	jalr	1456(ra) # 80001110 <_ZN7_thread13switchContextEPNS_7ContextES1_>
}
    80002b68:	01813083          	ld	ra,24(sp)
    80002b6c:	01013403          	ld	s0,16(sp)
    80002b70:	00813483          	ld	s1,8(sp)
    80002b74:	02010113          	addi	sp,sp,32
    80002b78:	00008067          	ret

0000000080002b7c <_ZN7_thread10time_sleepEm>:
    if (n == 0)
    80002b7c:	08058663          	beqz	a1,80002c08 <_ZN7_thread10time_sleepEm+0x8c>
{
    80002b80:	ff010113          	addi	sp,sp,-16
    80002b84:	00113423          	sd	ra,8(sp)
    80002b88:	00813023          	sd	s0,0(sp)
    80002b8c:	01010413          	addi	s0,sp,16
    _thread *curr = sleepingHead;
    80002b90:	00009797          	auipc	a5,0x9
    80002b94:	c187b783          	ld	a5,-1000(a5) # 8000b7a8 <_ZN7_thread12sleepingHeadE>
    _thread *prev = nullptr;
    80002b98:	00000693          	li	a3,0
    while (curr && n >= curr->timeSleeping)
    80002b9c:	00078e63          	beqz	a5,80002bb8 <_ZN7_thread10time_sleepEm+0x3c>
    80002ba0:	0507b703          	ld	a4,80(a5)
    80002ba4:	00e5ea63          	bltu	a1,a4,80002bb8 <_ZN7_thread10time_sleepEm+0x3c>
        n -= curr->timeSleeping;
    80002ba8:	40e585b3          	sub	a1,a1,a4
        prev = curr;
    80002bac:	00078693          	mv	a3,a5
        curr = curr->waitnext;
    80002bb0:	0087b783          	ld	a5,8(a5)
    while (curr && n >= curr->timeSleeping)
    80002bb4:	fe9ff06f          	j	80002b9c <_ZN7_thread10time_sleepEm+0x20>
    _thread::running->timeSleeping = n;
    80002bb8:	00009717          	auipc	a4,0x9
    80002bbc:	c0073703          	ld	a4,-1024(a4) # 8000b7b8 <_ZN7_thread7runningE>
    80002bc0:	04b73823          	sd	a1,80(a4)
    _thread::running->waitnext = curr;
    80002bc4:	00f73423          	sd	a5,8(a4)
    if (!prev)
    80002bc8:	02068a63          	beqz	a3,80002bfc <_ZN7_thread10time_sleepEm+0x80>
        prev->waitnext = _thread::running;
    80002bcc:	00e6b423          	sd	a4,8(a3)
    if (curr)
    80002bd0:	00078863          	beqz	a5,80002be0 <_ZN7_thread10time_sleepEm+0x64>
        curr->timeSleeping -= n;
    80002bd4:	0507b683          	ld	a3,80(a5)
    80002bd8:	40b685b3          	sub	a1,a3,a1
    80002bdc:	04b7b823          	sd	a1,80(a5)
    _thread::running->isReady = false;
    80002be0:	04070023          	sb	zero,64(a4)
    _thread::dispatch();
    80002be4:	00000097          	auipc	ra,0x0
    80002be8:	ec0080e7          	jalr	-320(ra) # 80002aa4 <_ZN7_thread8dispatchEv>
}
    80002bec:	00813083          	ld	ra,8(sp)
    80002bf0:	00013403          	ld	s0,0(sp)
    80002bf4:	01010113          	addi	sp,sp,16
    80002bf8:	00008067          	ret
        sleepingHead = _thread::running;
    80002bfc:	00009697          	auipc	a3,0x9
    80002c00:	bae6b623          	sd	a4,-1108(a3) # 8000b7a8 <_ZN7_thread12sleepingHeadE>
    80002c04:	fcdff06f          	j	80002bd0 <_ZN7_thread10time_sleepEm+0x54>
    80002c08:	00008067          	ret

0000000080002c0c <_ZN7_threadC1EPFvPvES0_S0_m>:
_thread::_thread(Body body, void *args, void *stack_space, uint64 time) : next(nullptr), waitnext(nullptr), body(body), args(args), stack((uint64 *)stack_space),
    80002c0c:	ff010113          	addi	sp,sp,-16
    80002c10:	00813423          	sd	s0,8(sp)
    80002c14:	01010413          	addi	s0,sp,16
                                                                          timeSlice(time), isReady(true), finished(false), semStatus(0), timeSleeping(0)
    80002c18:	00053023          	sd	zero,0(a0)
    80002c1c:	00053423          	sd	zero,8(a0)
    80002c20:	00b53823          	sd	a1,16(a0)
    80002c24:	00c53c23          	sd	a2,24(a0)
    80002c28:	02d53023          	sd	a3,32(a0)
    80002c2c:	02e53c23          	sd	a4,56(a0)
    80002c30:	00100793          	li	a5,1
    80002c34:	04f50023          	sb	a5,64(a0)
    80002c38:	040500a3          	sb	zero,65(a0)
    80002c3c:	04052223          	sw	zero,68(a0)
    80002c40:	04053823          	sd	zero,80(a0)
    if (body != nullptr)
    80002c44:	02058663          	beqz	a1,80002c70 <_ZN7_threadC1EPFvPvES0_S0_m+0x64>
        context.ra = (uint64)&threadWrapper;
    80002c48:	00000797          	auipc	a5,0x0
    80002c4c:	e0478793          	addi	a5,a5,-508 # 80002a4c <_ZN7_thread13threadWrapperEv>
    80002c50:	02f53423          	sd	a5,40(a0)
        context.sp = ((uint64)stack_space + DEFAULT_STACK_SIZE) & ~0xFUL;
    80002c54:	000017b7          	lui	a5,0x1
    80002c58:	00f686b3          	add	a3,a3,a5
    80002c5c:	ff06f693          	andi	a3,a3,-16
    80002c60:	02d53823          	sd	a3,48(a0)
}
    80002c64:	00813403          	ld	s0,8(sp)
    80002c68:	01010113          	addi	sp,sp,16
    80002c6c:	00008067          	ret
        context.ra = 0;
    80002c70:	02053423          	sd	zero,40(a0)
        context.sp = 0;
    80002c74:	02053823          	sd	zero,48(a0)
}
    80002c78:	fedff06f          	j	80002c64 <_ZN7_threadC1EPFvPvES0_S0_m+0x58>

0000000080002c7c <_ZN7_thread12createThreadEPFvPvES0_S0_>:
{
    80002c7c:	fd010113          	addi	sp,sp,-48
    80002c80:	02113423          	sd	ra,40(sp)
    80002c84:	02813023          	sd	s0,32(sp)
    80002c88:	00913c23          	sd	s1,24(sp)
    80002c8c:	01213823          	sd	s2,16(sp)
    80002c90:	01313423          	sd	s3,8(sp)
    80002c94:	01413023          	sd	s4,0(sp)
    80002c98:	03010413          	addi	s0,sp,48
    80002c9c:	00050913          	mv	s2,a0
    80002ca0:	00058993          	mv	s3,a1
    80002ca4:	00060a13          	mv	s4,a2
		void *ptr = MemoryAllocator::kmalloc(size);
    80002ca8:	05800513          	li	a0,88
    80002cac:	fffff097          	auipc	ra,0xfffff
    80002cb0:	994080e7          	jalr	-1644(ra) # 80001640 <_ZN15MemoryAllocator7kmallocEm>
    80002cb4:	00050493          	mv	s1,a0
    return new _thread(body, args, stack, DEFAULT_TIME_SLICE);
    80002cb8:	00200713          	li	a4,2
    80002cbc:	000a0693          	mv	a3,s4
    80002cc0:	00098613          	mv	a2,s3
    80002cc4:	00090593          	mv	a1,s2
    80002cc8:	00000097          	auipc	ra,0x0
    80002ccc:	f44080e7          	jalr	-188(ra) # 80002c0c <_ZN7_threadC1EPFvPvES0_S0_m>
}
    80002cd0:	00048513          	mv	a0,s1
    80002cd4:	02813083          	ld	ra,40(sp)
    80002cd8:	02013403          	ld	s0,32(sp)
    80002cdc:	01813483          	ld	s1,24(sp)
    80002ce0:	01013903          	ld	s2,16(sp)
    80002ce4:	00813983          	ld	s3,8(sp)
    80002ce8:	00013a03          	ld	s4,0(sp)
    80002cec:	03010113          	addi	sp,sp,48
    80002cf0:	00008067          	ret

0000000080002cf4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002cf4:	fe010113          	addi	sp,sp,-32
    80002cf8:	00113c23          	sd	ra,24(sp)
    80002cfc:	00813823          	sd	s0,16(sp)
    80002d00:	00913423          	sd	s1,8(sp)
    80002d04:	01213023          	sd	s2,0(sp)
    80002d08:	02010413          	addi	s0,sp,32
    80002d0c:	00050493          	mv	s1,a0
    80002d10:	00058913          	mv	s2,a1
    80002d14:	0015879b          	addiw	a5,a1,1
    80002d18:	0007851b          	sext.w	a0,a5
    80002d1c:	00f4a023          	sw	a5,0(s1)
    80002d20:	0004a823          	sw	zero,16(s1)
    80002d24:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002d28:	00251513          	slli	a0,a0,0x2
    80002d2c:	fffff097          	auipc	ra,0xfffff
    80002d30:	4c8080e7          	jalr	1224(ra) # 800021f4 <_Z9mem_allocm>
    80002d34:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80002d38:	00000593          	li	a1,0
    80002d3c:	02048513          	addi	a0,s1,32
    80002d40:	fffff097          	auipc	ra,0xfffff
    80002d44:	60c080e7          	jalr	1548(ra) # 8000234c <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80002d48:	00090593          	mv	a1,s2
    80002d4c:	01848513          	addi	a0,s1,24
    80002d50:	fffff097          	auipc	ra,0xfffff
    80002d54:	5fc080e7          	jalr	1532(ra) # 8000234c <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80002d58:	00100593          	li	a1,1
    80002d5c:	02848513          	addi	a0,s1,40
    80002d60:	fffff097          	auipc	ra,0xfffff
    80002d64:	5ec080e7          	jalr	1516(ra) # 8000234c <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80002d68:	00100593          	li	a1,1
    80002d6c:	03048513          	addi	a0,s1,48
    80002d70:	fffff097          	auipc	ra,0xfffff
    80002d74:	5dc080e7          	jalr	1500(ra) # 8000234c <_Z8sem_openPP4_semj>
}
    80002d78:	01813083          	ld	ra,24(sp)
    80002d7c:	01013403          	ld	s0,16(sp)
    80002d80:	00813483          	ld	s1,8(sp)
    80002d84:	00013903          	ld	s2,0(sp)
    80002d88:	02010113          	addi	sp,sp,32
    80002d8c:	00008067          	ret

0000000080002d90 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80002d90:	fe010113          	addi	sp,sp,-32
    80002d94:	00113c23          	sd	ra,24(sp)
    80002d98:	00813823          	sd	s0,16(sp)
    80002d9c:	00913423          	sd	s1,8(sp)
    80002da0:	01213023          	sd	s2,0(sp)
    80002da4:	02010413          	addi	s0,sp,32
    80002da8:	00050493          	mv	s1,a0
    80002dac:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80002db0:	01853503          	ld	a0,24(a0)
    80002db4:	fffff097          	auipc	ra,0xfffff
    80002db8:	614080e7          	jalr	1556(ra) # 800023c8 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80002dbc:	0304b503          	ld	a0,48(s1)
    80002dc0:	fffff097          	auipc	ra,0xfffff
    80002dc4:	608080e7          	jalr	1544(ra) # 800023c8 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80002dc8:	0084b783          	ld	a5,8(s1)
    80002dcc:	0144a703          	lw	a4,20(s1)
    80002dd0:	00271713          	slli	a4,a4,0x2
    80002dd4:	00e787b3          	add	a5,a5,a4
    80002dd8:	0127a023          	sw	s2,0(a5) # 1000 <_entry-0x7ffff000>
    tail = (tail + 1) % cap;
    80002ddc:	0144a783          	lw	a5,20(s1)
    80002de0:	0017879b          	addiw	a5,a5,1
    80002de4:	0004a703          	lw	a4,0(s1)
    80002de8:	02e7e7bb          	remw	a5,a5,a4
    80002dec:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80002df0:	0304b503          	ld	a0,48(s1)
    80002df4:	fffff097          	auipc	ra,0xfffff
    80002df8:	60c080e7          	jalr	1548(ra) # 80002400 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80002dfc:	0204b503          	ld	a0,32(s1)
    80002e00:	fffff097          	auipc	ra,0xfffff
    80002e04:	600080e7          	jalr	1536(ra) # 80002400 <_Z10sem_signalP4_sem>

}
    80002e08:	01813083          	ld	ra,24(sp)
    80002e0c:	01013403          	ld	s0,16(sp)
    80002e10:	00813483          	ld	s1,8(sp)
    80002e14:	00013903          	ld	s2,0(sp)
    80002e18:	02010113          	addi	sp,sp,32
    80002e1c:	00008067          	ret

0000000080002e20 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80002e20:	fe010113          	addi	sp,sp,-32
    80002e24:	00113c23          	sd	ra,24(sp)
    80002e28:	00813823          	sd	s0,16(sp)
    80002e2c:	00913423          	sd	s1,8(sp)
    80002e30:	01213023          	sd	s2,0(sp)
    80002e34:	02010413          	addi	s0,sp,32
    80002e38:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80002e3c:	02053503          	ld	a0,32(a0)
    80002e40:	fffff097          	auipc	ra,0xfffff
    80002e44:	588080e7          	jalr	1416(ra) # 800023c8 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80002e48:	0284b503          	ld	a0,40(s1)
    80002e4c:	fffff097          	auipc	ra,0xfffff
    80002e50:	57c080e7          	jalr	1404(ra) # 800023c8 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80002e54:	0084b703          	ld	a4,8(s1)
    80002e58:	0104a783          	lw	a5,16(s1)
    80002e5c:	00279693          	slli	a3,a5,0x2
    80002e60:	00d70733          	add	a4,a4,a3
    80002e64:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002e68:	0017879b          	addiw	a5,a5,1
    80002e6c:	0004a703          	lw	a4,0(s1)
    80002e70:	02e7e7bb          	remw	a5,a5,a4
    80002e74:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80002e78:	0284b503          	ld	a0,40(s1)
    80002e7c:	fffff097          	auipc	ra,0xfffff
    80002e80:	584080e7          	jalr	1412(ra) # 80002400 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80002e84:	0184b503          	ld	a0,24(s1)
    80002e88:	fffff097          	auipc	ra,0xfffff
    80002e8c:	578080e7          	jalr	1400(ra) # 80002400 <_Z10sem_signalP4_sem>

    return ret;
}
    80002e90:	00090513          	mv	a0,s2
    80002e94:	01813083          	ld	ra,24(sp)
    80002e98:	01013403          	ld	s0,16(sp)
    80002e9c:	00813483          	ld	s1,8(sp)
    80002ea0:	00013903          	ld	s2,0(sp)
    80002ea4:	02010113          	addi	sp,sp,32
    80002ea8:	00008067          	ret

0000000080002eac <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80002eac:	fe010113          	addi	sp,sp,-32
    80002eb0:	00113c23          	sd	ra,24(sp)
    80002eb4:	00813823          	sd	s0,16(sp)
    80002eb8:	00913423          	sd	s1,8(sp)
    80002ebc:	01213023          	sd	s2,0(sp)
    80002ec0:	02010413          	addi	s0,sp,32
    80002ec4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80002ec8:	02853503          	ld	a0,40(a0)
    80002ecc:	fffff097          	auipc	ra,0xfffff
    80002ed0:	4fc080e7          	jalr	1276(ra) # 800023c8 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80002ed4:	0304b503          	ld	a0,48(s1)
    80002ed8:	fffff097          	auipc	ra,0xfffff
    80002edc:	4f0080e7          	jalr	1264(ra) # 800023c8 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80002ee0:	0144a783          	lw	a5,20(s1)
    80002ee4:	0104a903          	lw	s2,16(s1)
    80002ee8:	0327ce63          	blt	a5,s2,80002f24 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80002eec:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80002ef0:	0304b503          	ld	a0,48(s1)
    80002ef4:	fffff097          	auipc	ra,0xfffff
    80002ef8:	50c080e7          	jalr	1292(ra) # 80002400 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80002efc:	0284b503          	ld	a0,40(s1)
    80002f00:	fffff097          	auipc	ra,0xfffff
    80002f04:	500080e7          	jalr	1280(ra) # 80002400 <_Z10sem_signalP4_sem>

    return ret;
}
    80002f08:	00090513          	mv	a0,s2
    80002f0c:	01813083          	ld	ra,24(sp)
    80002f10:	01013403          	ld	s0,16(sp)
    80002f14:	00813483          	ld	s1,8(sp)
    80002f18:	00013903          	ld	s2,0(sp)
    80002f1c:	02010113          	addi	sp,sp,32
    80002f20:	00008067          	ret
        ret = cap - head + tail;
    80002f24:	0004a703          	lw	a4,0(s1)
    80002f28:	4127093b          	subw	s2,a4,s2
    80002f2c:	00f9093b          	addw	s2,s2,a5
    80002f30:	fc1ff06f          	j	80002ef0 <_ZN6Buffer6getCntEv+0x44>

0000000080002f34 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80002f34:	fe010113          	addi	sp,sp,-32
    80002f38:	00113c23          	sd	ra,24(sp)
    80002f3c:	00813823          	sd	s0,16(sp)
    80002f40:	00913423          	sd	s1,8(sp)
    80002f44:	02010413          	addi	s0,sp,32
    80002f48:	00050493          	mv	s1,a0
    putc('\n');
    80002f4c:	00a00513          	li	a0,10
    80002f50:	fffff097          	auipc	ra,0xfffff
    80002f54:	5fc080e7          	jalr	1532(ra) # 8000254c <_Z4putcc>
    printString("Buffer deleted!\n");
    80002f58:	00006517          	auipc	a0,0x6
    80002f5c:	27850513          	addi	a0,a0,632 # 800091d0 <_ZTV14PeriodicThread+0x30>
    80002f60:	00002097          	auipc	ra,0x2
    80002f64:	988080e7          	jalr	-1656(ra) # 800048e8 <_Z11printStringPKc>
    80002f68:	0340006f          	j	80002f9c <_ZN6BufferD1Ev+0x68>
        char ch = buffer[head];
    80002f6c:	0084b783          	ld	a5,8(s1)
    80002f70:	0104a703          	lw	a4,16(s1)
    80002f74:	00271713          	slli	a4,a4,0x2
    80002f78:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80002f7c:	0007c503          	lbu	a0,0(a5)
    80002f80:	fffff097          	auipc	ra,0xfffff
    80002f84:	5cc080e7          	jalr	1484(ra) # 8000254c <_Z4putcc>
        head = (head + 1) % cap;
    80002f88:	0104a783          	lw	a5,16(s1)
    80002f8c:	0017879b          	addiw	a5,a5,1
    80002f90:	0004a703          	lw	a4,0(s1)
    80002f94:	02e7e7bb          	remw	a5,a5,a4
    80002f98:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80002f9c:	00048513          	mv	a0,s1
    80002fa0:	00000097          	auipc	ra,0x0
    80002fa4:	f0c080e7          	jalr	-244(ra) # 80002eac <_ZN6Buffer6getCntEv>
    80002fa8:	fca042e3          	bgtz	a0,80002f6c <_ZN6BufferD1Ev+0x38>
    putc('!');
    80002fac:	02100513          	li	a0,33
    80002fb0:	fffff097          	auipc	ra,0xfffff
    80002fb4:	59c080e7          	jalr	1436(ra) # 8000254c <_Z4putcc>
    putc('\n');
    80002fb8:	00a00513          	li	a0,10
    80002fbc:	fffff097          	auipc	ra,0xfffff
    80002fc0:	590080e7          	jalr	1424(ra) # 8000254c <_Z4putcc>
    mem_free(buffer);
    80002fc4:	0084b503          	ld	a0,8(s1)
    80002fc8:	fffff097          	auipc	ra,0xfffff
    80002fcc:	268080e7          	jalr	616(ra) # 80002230 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80002fd0:	0204b503          	ld	a0,32(s1)
    80002fd4:	fffff097          	auipc	ra,0xfffff
    80002fd8:	3bc080e7          	jalr	956(ra) # 80002390 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80002fdc:	0184b503          	ld	a0,24(s1)
    80002fe0:	fffff097          	auipc	ra,0xfffff
    80002fe4:	3b0080e7          	jalr	944(ra) # 80002390 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80002fe8:	0304b503          	ld	a0,48(s1)
    80002fec:	fffff097          	auipc	ra,0xfffff
    80002ff0:	3a4080e7          	jalr	932(ra) # 80002390 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80002ff4:	0284b503          	ld	a0,40(s1)
    80002ff8:	fffff097          	auipc	ra,0xfffff
    80002ffc:	398080e7          	jalr	920(ra) # 80002390 <_Z9sem_closeP4_sem>
}
    80003000:	01813083          	ld	ra,24(sp)
    80003004:	01013403          	ld	s0,16(sp)
    80003008:	00813483          	ld	s1,8(sp)
    8000300c:	02010113          	addi	sp,sp,32
    80003010:	00008067          	ret

0000000080003014 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003014:	fd010113          	addi	sp,sp,-48
    80003018:	02113423          	sd	ra,40(sp)
    8000301c:	02813023          	sd	s0,32(sp)
    80003020:	00913c23          	sd	s1,24(sp)
    80003024:	01213823          	sd	s2,16(sp)
    80003028:	01313423          	sd	s3,8(sp)
    8000302c:	03010413          	addi	s0,sp,48
    80003030:	00050493          	mv	s1,a0
    80003034:	00058913          	mv	s2,a1
    80003038:	0015879b          	addiw	a5,a1,1
    8000303c:	0007851b          	sext.w	a0,a5
    80003040:	00f4a023          	sw	a5,0(s1)
    80003044:	0004a823          	sw	zero,16(s1)
    80003048:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000304c:	00251513          	slli	a0,a0,0x2
    80003050:	fffff097          	auipc	ra,0xfffff
    80003054:	1a4080e7          	jalr	420(ra) # 800021f4 <_Z9mem_allocm>
    80003058:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000305c:	01000513          	li	a0,16
    80003060:	fffff097          	auipc	ra,0xfffff
    80003064:	5dc080e7          	jalr	1500(ra) # 8000263c <_Znwm>
    80003068:	00050993          	mv	s3,a0
    8000306c:	00000593          	li	a1,0
    80003070:	fffff097          	auipc	ra,0xfffff
    80003074:	7dc080e7          	jalr	2012(ra) # 8000284c <_ZN9SemaphoreC1Ej>
    80003078:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    8000307c:	01000513          	li	a0,16
    80003080:	fffff097          	auipc	ra,0xfffff
    80003084:	5bc080e7          	jalr	1468(ra) # 8000263c <_Znwm>
    80003088:	00050993          	mv	s3,a0
    8000308c:	00090593          	mv	a1,s2
    80003090:	fffff097          	auipc	ra,0xfffff
    80003094:	7bc080e7          	jalr	1980(ra) # 8000284c <_ZN9SemaphoreC1Ej>
    80003098:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    8000309c:	01000513          	li	a0,16
    800030a0:	fffff097          	auipc	ra,0xfffff
    800030a4:	59c080e7          	jalr	1436(ra) # 8000263c <_Znwm>
    800030a8:	00050913          	mv	s2,a0
    800030ac:	00100593          	li	a1,1
    800030b0:	fffff097          	auipc	ra,0xfffff
    800030b4:	79c080e7          	jalr	1948(ra) # 8000284c <_ZN9SemaphoreC1Ej>
    800030b8:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800030bc:	01000513          	li	a0,16
    800030c0:	fffff097          	auipc	ra,0xfffff
    800030c4:	57c080e7          	jalr	1404(ra) # 8000263c <_Znwm>
    800030c8:	00050913          	mv	s2,a0
    800030cc:	00100593          	li	a1,1
    800030d0:	fffff097          	auipc	ra,0xfffff
    800030d4:	77c080e7          	jalr	1916(ra) # 8000284c <_ZN9SemaphoreC1Ej>
    800030d8:	0324b823          	sd	s2,48(s1)
}
    800030dc:	02813083          	ld	ra,40(sp)
    800030e0:	02013403          	ld	s0,32(sp)
    800030e4:	01813483          	ld	s1,24(sp)
    800030e8:	01013903          	ld	s2,16(sp)
    800030ec:	00813983          	ld	s3,8(sp)
    800030f0:	03010113          	addi	sp,sp,48
    800030f4:	00008067          	ret
    itemAvailable = new Semaphore(0);
    800030f8:	00050493          	mv	s1,a0
    800030fc:	00098513          	mv	a0,s3
    80003100:	fffff097          	auipc	ra,0xfffff
    80003104:	564080e7          	jalr	1380(ra) # 80002664 <_ZdlPv>
    80003108:	00048513          	mv	a0,s1
    8000310c:	00009097          	auipc	ra,0x9
    80003110:	7fc080e7          	jalr	2044(ra) # 8000c908 <_Unwind_Resume>
    spaceAvailable = new Semaphore(_cap);
    80003114:	00050493          	mv	s1,a0
    80003118:	00098513          	mv	a0,s3
    8000311c:	fffff097          	auipc	ra,0xfffff
    80003120:	548080e7          	jalr	1352(ra) # 80002664 <_ZdlPv>
    80003124:	00048513          	mv	a0,s1
    80003128:	00009097          	auipc	ra,0x9
    8000312c:	7e0080e7          	jalr	2016(ra) # 8000c908 <_Unwind_Resume>
    mutexHead = new Semaphore(1);
    80003130:	00050493          	mv	s1,a0
    80003134:	00090513          	mv	a0,s2
    80003138:	fffff097          	auipc	ra,0xfffff
    8000313c:	52c080e7          	jalr	1324(ra) # 80002664 <_ZdlPv>
    80003140:	00048513          	mv	a0,s1
    80003144:	00009097          	auipc	ra,0x9
    80003148:	7c4080e7          	jalr	1988(ra) # 8000c908 <_Unwind_Resume>
    mutexTail = new Semaphore(1);
    8000314c:	00050493          	mv	s1,a0
    80003150:	00090513          	mv	a0,s2
    80003154:	fffff097          	auipc	ra,0xfffff
    80003158:	510080e7          	jalr	1296(ra) # 80002664 <_ZdlPv>
    8000315c:	00048513          	mv	a0,s1
    80003160:	00009097          	auipc	ra,0x9
    80003164:	7a8080e7          	jalr	1960(ra) # 8000c908 <_Unwind_Resume>

0000000080003168 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80003168:	fe010113          	addi	sp,sp,-32
    8000316c:	00113c23          	sd	ra,24(sp)
    80003170:	00813823          	sd	s0,16(sp)
    80003174:	00913423          	sd	s1,8(sp)
    80003178:	01213023          	sd	s2,0(sp)
    8000317c:	02010413          	addi	s0,sp,32
    80003180:	00050493          	mv	s1,a0
    80003184:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80003188:	01853503          	ld	a0,24(a0)
    8000318c:	fffff097          	auipc	ra,0xfffff
    80003190:	6f8080e7          	jalr	1784(ra) # 80002884 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80003194:	0304b503          	ld	a0,48(s1)
    80003198:	fffff097          	auipc	ra,0xfffff
    8000319c:	6ec080e7          	jalr	1772(ra) # 80002884 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800031a0:	0084b783          	ld	a5,8(s1)
    800031a4:	0144a703          	lw	a4,20(s1)
    800031a8:	00271713          	slli	a4,a4,0x2
    800031ac:	00e787b3          	add	a5,a5,a4
    800031b0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800031b4:	0144a783          	lw	a5,20(s1)
    800031b8:	0017879b          	addiw	a5,a5,1
    800031bc:	0004a703          	lw	a4,0(s1)
    800031c0:	02e7e7bb          	remw	a5,a5,a4
    800031c4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800031c8:	0304b503          	ld	a0,48(s1)
    800031cc:	fffff097          	auipc	ra,0xfffff
    800031d0:	6e4080e7          	jalr	1764(ra) # 800028b0 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800031d4:	0204b503          	ld	a0,32(s1)
    800031d8:	fffff097          	auipc	ra,0xfffff
    800031dc:	6d8080e7          	jalr	1752(ra) # 800028b0 <_ZN9Semaphore6signalEv>

}
    800031e0:	01813083          	ld	ra,24(sp)
    800031e4:	01013403          	ld	s0,16(sp)
    800031e8:	00813483          	ld	s1,8(sp)
    800031ec:	00013903          	ld	s2,0(sp)
    800031f0:	02010113          	addi	sp,sp,32
    800031f4:	00008067          	ret

00000000800031f8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800031f8:	fe010113          	addi	sp,sp,-32
    800031fc:	00113c23          	sd	ra,24(sp)
    80003200:	00813823          	sd	s0,16(sp)
    80003204:	00913423          	sd	s1,8(sp)
    80003208:	01213023          	sd	s2,0(sp)
    8000320c:	02010413          	addi	s0,sp,32
    80003210:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80003214:	02053503          	ld	a0,32(a0)
    80003218:	fffff097          	auipc	ra,0xfffff
    8000321c:	66c080e7          	jalr	1644(ra) # 80002884 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80003220:	0284b503          	ld	a0,40(s1)
    80003224:	fffff097          	auipc	ra,0xfffff
    80003228:	660080e7          	jalr	1632(ra) # 80002884 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000322c:	0084b703          	ld	a4,8(s1)
    80003230:	0104a783          	lw	a5,16(s1)
    80003234:	00279693          	slli	a3,a5,0x2
    80003238:	00d70733          	add	a4,a4,a3
    8000323c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003240:	0017879b          	addiw	a5,a5,1
    80003244:	0004a703          	lw	a4,0(s1)
    80003248:	02e7e7bb          	remw	a5,a5,a4
    8000324c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80003250:	0284b503          	ld	a0,40(s1)
    80003254:	fffff097          	auipc	ra,0xfffff
    80003258:	65c080e7          	jalr	1628(ra) # 800028b0 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000325c:	0184b503          	ld	a0,24(s1)
    80003260:	fffff097          	auipc	ra,0xfffff
    80003264:	650080e7          	jalr	1616(ra) # 800028b0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80003268:	00090513          	mv	a0,s2
    8000326c:	01813083          	ld	ra,24(sp)
    80003270:	01013403          	ld	s0,16(sp)
    80003274:	00813483          	ld	s1,8(sp)
    80003278:	00013903          	ld	s2,0(sp)
    8000327c:	02010113          	addi	sp,sp,32
    80003280:	00008067          	ret

0000000080003284 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80003284:	fe010113          	addi	sp,sp,-32
    80003288:	00113c23          	sd	ra,24(sp)
    8000328c:	00813823          	sd	s0,16(sp)
    80003290:	00913423          	sd	s1,8(sp)
    80003294:	01213023          	sd	s2,0(sp)
    80003298:	02010413          	addi	s0,sp,32
    8000329c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800032a0:	02853503          	ld	a0,40(a0)
    800032a4:	fffff097          	auipc	ra,0xfffff
    800032a8:	5e0080e7          	jalr	1504(ra) # 80002884 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800032ac:	0304b503          	ld	a0,48(s1)
    800032b0:	fffff097          	auipc	ra,0xfffff
    800032b4:	5d4080e7          	jalr	1492(ra) # 80002884 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800032b8:	0144a783          	lw	a5,20(s1)
    800032bc:	0104a903          	lw	s2,16(s1)
    800032c0:	0327ce63          	blt	a5,s2,800032fc <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800032c4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800032c8:	0304b503          	ld	a0,48(s1)
    800032cc:	fffff097          	auipc	ra,0xfffff
    800032d0:	5e4080e7          	jalr	1508(ra) # 800028b0 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800032d4:	0284b503          	ld	a0,40(s1)
    800032d8:	fffff097          	auipc	ra,0xfffff
    800032dc:	5d8080e7          	jalr	1496(ra) # 800028b0 <_ZN9Semaphore6signalEv>

    return ret;
}
    800032e0:	00090513          	mv	a0,s2
    800032e4:	01813083          	ld	ra,24(sp)
    800032e8:	01013403          	ld	s0,16(sp)
    800032ec:	00813483          	ld	s1,8(sp)
    800032f0:	00013903          	ld	s2,0(sp)
    800032f4:	02010113          	addi	sp,sp,32
    800032f8:	00008067          	ret
        ret = cap - head + tail;
    800032fc:	0004a703          	lw	a4,0(s1)
    80003300:	4127093b          	subw	s2,a4,s2
    80003304:	00f9093b          	addw	s2,s2,a5
    80003308:	fc1ff06f          	j	800032c8 <_ZN9BufferCPP6getCntEv+0x44>

000000008000330c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000330c:	fe010113          	addi	sp,sp,-32
    80003310:	00113c23          	sd	ra,24(sp)
    80003314:	00813823          	sd	s0,16(sp)
    80003318:	00913423          	sd	s1,8(sp)
    8000331c:	02010413          	addi	s0,sp,32
    80003320:	00050493          	mv	s1,a0
    Console::putc('\n');
    80003324:	00a00513          	li	a0,10
    80003328:	fffff097          	auipc	ra,0xfffff
    8000332c:	64c080e7          	jalr	1612(ra) # 80002974 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80003330:	00006517          	auipc	a0,0x6
    80003334:	ea050513          	addi	a0,a0,-352 # 800091d0 <_ZTV14PeriodicThread+0x30>
    80003338:	00001097          	auipc	ra,0x1
    8000333c:	5b0080e7          	jalr	1456(ra) # 800048e8 <_Z11printStringPKc>
    80003340:	0340006f          	j	80003374 <_ZN9BufferCPPD1Ev+0x68>
        char ch = buffer[head];
    80003344:	0084b783          	ld	a5,8(s1)
    80003348:	0104a703          	lw	a4,16(s1)
    8000334c:	00271713          	slli	a4,a4,0x2
    80003350:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80003354:	0007c503          	lbu	a0,0(a5)
    80003358:	fffff097          	auipc	ra,0xfffff
    8000335c:	61c080e7          	jalr	1564(ra) # 80002974 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80003360:	0104a783          	lw	a5,16(s1)
    80003364:	0017879b          	addiw	a5,a5,1
    80003368:	0004a703          	lw	a4,0(s1)
    8000336c:	02e7e7bb          	remw	a5,a5,a4
    80003370:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80003374:	00048513          	mv	a0,s1
    80003378:	00000097          	auipc	ra,0x0
    8000337c:	f0c080e7          	jalr	-244(ra) # 80003284 <_ZN9BufferCPP6getCntEv>
    80003380:	fc0512e3          	bnez	a0,80003344 <_ZN9BufferCPPD1Ev+0x38>
    Console::putc('!');
    80003384:	02100513          	li	a0,33
    80003388:	fffff097          	auipc	ra,0xfffff
    8000338c:	5ec080e7          	jalr	1516(ra) # 80002974 <_ZN7Console4putcEc>
    Console::putc('\n');
    80003390:	00a00513          	li	a0,10
    80003394:	fffff097          	auipc	ra,0xfffff
    80003398:	5e0080e7          	jalr	1504(ra) # 80002974 <_ZN7Console4putcEc>
    mem_free(buffer);
    8000339c:	0084b503          	ld	a0,8(s1)
    800033a0:	fffff097          	auipc	ra,0xfffff
    800033a4:	e90080e7          	jalr	-368(ra) # 80002230 <_Z8mem_freePv>
    delete itemAvailable;
    800033a8:	0204b503          	ld	a0,32(s1)
    800033ac:	00050863          	beqz	a0,800033bc <_ZN9BufferCPPD1Ev+0xb0>
    800033b0:	00053783          	ld	a5,0(a0)
    800033b4:	0087b783          	ld	a5,8(a5)
    800033b8:	000780e7          	jalr	a5
    delete spaceAvailable;
    800033bc:	0184b503          	ld	a0,24(s1)
    800033c0:	00050863          	beqz	a0,800033d0 <_ZN9BufferCPPD1Ev+0xc4>
    800033c4:	00053783          	ld	a5,0(a0)
    800033c8:	0087b783          	ld	a5,8(a5)
    800033cc:	000780e7          	jalr	a5
    delete mutexTail;
    800033d0:	0304b503          	ld	a0,48(s1)
    800033d4:	00050863          	beqz	a0,800033e4 <_ZN9BufferCPPD1Ev+0xd8>
    800033d8:	00053783          	ld	a5,0(a0)
    800033dc:	0087b783          	ld	a5,8(a5)
    800033e0:	000780e7          	jalr	a5
    delete mutexHead;
    800033e4:	0284b503          	ld	a0,40(s1)
    800033e8:	00050863          	beqz	a0,800033f8 <_ZN9BufferCPPD1Ev+0xec>
    800033ec:	00053783          	ld	a5,0(a0)
    800033f0:	0087b783          	ld	a5,8(a5)
    800033f4:	000780e7          	jalr	a5
}
    800033f8:	01813083          	ld	ra,24(sp)
    800033fc:	01013403          	ld	s0,16(sp)
    80003400:	00813483          	ld	s1,8(sp)
    80003404:	02010113          	addi	sp,sp,32
    80003408:	00008067          	ret

000000008000340c <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    8000340c:	f8010113          	addi	sp,sp,-128
    80003410:	06113c23          	sd	ra,120(sp)
    80003414:	06813823          	sd	s0,112(sp)
    80003418:	06913423          	sd	s1,104(sp)
    8000341c:	07213023          	sd	s2,96(sp)
    80003420:	05313c23          	sd	s3,88(sp)
    80003424:	05413823          	sd	s4,80(sp)
    80003428:	05513423          	sd	s5,72(sp)
    8000342c:	05613023          	sd	s6,64(sp)
    80003430:	03713c23          	sd	s7,56(sp)
    80003434:	03813823          	sd	s8,48(sp)
    80003438:	03913423          	sd	s9,40(sp)
    8000343c:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003440:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003444:	00006517          	auipc	a0,0x6
    80003448:	da450513          	addi	a0,a0,-604 # 800091e8 <_ZTV14PeriodicThread+0x48>
    8000344c:	00001097          	auipc	ra,0x1
    80003450:	49c080e7          	jalr	1180(ra) # 800048e8 <_Z11printStringPKc>
    getString(input, 30);
    80003454:	01e00593          	li	a1,30
    80003458:	f8040513          	addi	a0,s0,-128
    8000345c:	00001097          	auipc	ra,0x1
    80003460:	514080e7          	jalr	1300(ra) # 80004970 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003464:	f8040513          	addi	a0,s0,-128
    80003468:	00001097          	auipc	ra,0x1
    8000346c:	5e0080e7          	jalr	1504(ra) # 80004a48 <_Z11stringToIntPKc>
    80003470:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003474:	00006517          	auipc	a0,0x6
    80003478:	d9450513          	addi	a0,a0,-620 # 80009208 <_ZTV14PeriodicThread+0x68>
    8000347c:	00001097          	auipc	ra,0x1
    80003480:	46c080e7          	jalr	1132(ra) # 800048e8 <_Z11printStringPKc>
    getString(input, 30);
    80003484:	01e00593          	li	a1,30
    80003488:	f8040513          	addi	a0,s0,-128
    8000348c:	00001097          	auipc	ra,0x1
    80003490:	4e4080e7          	jalr	1252(ra) # 80004970 <_Z9getStringPci>
    n = stringToInt(input);
    80003494:	f8040513          	addi	a0,s0,-128
    80003498:	00001097          	auipc	ra,0x1
    8000349c:	5b0080e7          	jalr	1456(ra) # 80004a48 <_Z11stringToIntPKc>
    800034a0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800034a4:	00006517          	auipc	a0,0x6
    800034a8:	d8450513          	addi	a0,a0,-636 # 80009228 <_ZTV14PeriodicThread+0x88>
    800034ac:	00001097          	auipc	ra,0x1
    800034b0:	43c080e7          	jalr	1084(ra) # 800048e8 <_Z11printStringPKc>
    printInt(threadNum);
    800034b4:	00000613          	li	a2,0
    800034b8:	00a00593          	li	a1,10
    800034bc:	00098513          	mv	a0,s3
    800034c0:	00001097          	auipc	ra,0x1
    800034c4:	5d8080e7          	jalr	1496(ra) # 80004a98 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800034c8:	00006517          	auipc	a0,0x6
    800034cc:	d7850513          	addi	a0,a0,-648 # 80009240 <_ZTV14PeriodicThread+0xa0>
    800034d0:	00001097          	auipc	ra,0x1
    800034d4:	418080e7          	jalr	1048(ra) # 800048e8 <_Z11printStringPKc>
    printInt(n);
    800034d8:	00000613          	li	a2,0
    800034dc:	00a00593          	li	a1,10
    800034e0:	00048513          	mv	a0,s1
    800034e4:	00001097          	auipc	ra,0x1
    800034e8:	5b4080e7          	jalr	1460(ra) # 80004a98 <_Z8printIntiii>
    printString(".\n");
    800034ec:	00006517          	auipc	a0,0x6
    800034f0:	d6c50513          	addi	a0,a0,-660 # 80009258 <_ZTV14PeriodicThread+0xb8>
    800034f4:	00001097          	auipc	ra,0x1
    800034f8:	3f4080e7          	jalr	1012(ra) # 800048e8 <_Z11printStringPKc>
    if (threadNum > n) {
    800034fc:	0334c463          	blt	s1,s3,80003524 <_Z20testConsumerProducerv+0x118>
    } else if (threadNum < 1) {
    80003500:	03305c63          	blez	s3,80003538 <_Z20testConsumerProducerv+0x12c>
    BufferCPP *buffer = new BufferCPP(n);
    80003504:	03800513          	li	a0,56
    80003508:	fffff097          	auipc	ra,0xfffff
    8000350c:	134080e7          	jalr	308(ra) # 8000263c <_Znwm>
    80003510:	00050a93          	mv	s5,a0
    80003514:	00048593          	mv	a1,s1
    80003518:	00000097          	auipc	ra,0x0
    8000351c:	afc080e7          	jalr	-1284(ra) # 80003014 <_ZN9BufferCPPC1Ei>
    80003520:	0300006f          	j	80003550 <_Z20testConsumerProducerv+0x144>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003524:	00006517          	auipc	a0,0x6
    80003528:	d3c50513          	addi	a0,a0,-708 # 80009260 <_ZTV14PeriodicThread+0xc0>
    8000352c:	00001097          	auipc	ra,0x1
    80003530:	3bc080e7          	jalr	956(ra) # 800048e8 <_Z11printStringPKc>
        return;
    80003534:	0140006f          	j	80003548 <_Z20testConsumerProducerv+0x13c>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003538:	00006517          	auipc	a0,0x6
    8000353c:	d6850513          	addi	a0,a0,-664 # 800092a0 <_ZTV14PeriodicThread+0x100>
    80003540:	00001097          	auipc	ra,0x1
    80003544:	3a8080e7          	jalr	936(ra) # 800048e8 <_Z11printStringPKc>
        return;
    80003548:	000c0113          	mv	sp,s8
    8000354c:	2140006f          	j	80003760 <_Z20testConsumerProducerv+0x354>
    waitForAll = new Semaphore(0);
    80003550:	01000513          	li	a0,16
    80003554:	fffff097          	auipc	ra,0xfffff
    80003558:	0e8080e7          	jalr	232(ra) # 8000263c <_Znwm>
    8000355c:	00050913          	mv	s2,a0
    80003560:	00000593          	li	a1,0
    80003564:	fffff097          	auipc	ra,0xfffff
    80003568:	2e8080e7          	jalr	744(ra) # 8000284c <_ZN9SemaphoreC1Ej>
    8000356c:	00008797          	auipc	a5,0x8
    80003570:	2527be23          	sd	s2,604(a5) # 8000b7c8 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003574:	00399793          	slli	a5,s3,0x3
    80003578:	00f78793          	addi	a5,a5,15
    8000357c:	ff07f793          	andi	a5,a5,-16
    80003580:	40f10133          	sub	sp,sp,a5
    80003584:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003588:	0019871b          	addiw	a4,s3,1
    8000358c:	00171793          	slli	a5,a4,0x1
    80003590:	00e787b3          	add	a5,a5,a4
    80003594:	00379793          	slli	a5,a5,0x3
    80003598:	00f78793          	addi	a5,a5,15
    8000359c:	ff07f793          	andi	a5,a5,-16
    800035a0:	40f10133          	sub	sp,sp,a5
    800035a4:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800035a8:	00199493          	slli	s1,s3,0x1
    800035ac:	013484b3          	add	s1,s1,s3
    800035b0:	00349493          	slli	s1,s1,0x3
    800035b4:	009b04b3          	add	s1,s6,s1
    800035b8:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800035bc:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800035c0:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800035c4:	02800513          	li	a0,40
    800035c8:	fffff097          	auipc	ra,0xfffff
    800035cc:	074080e7          	jalr	116(ra) # 8000263c <_Znwm>
    800035d0:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800035d4:	fffff097          	auipc	ra,0xfffff
    800035d8:	240080e7          	jalr	576(ra) # 80002814 <_ZN6ThreadC1Ev>
    800035dc:	00006797          	auipc	a5,0x6
    800035e0:	d5478793          	addi	a5,a5,-684 # 80009330 <_ZTV8Consumer+0x10>
    800035e4:	00fbb023          	sd	a5,0(s7)
    800035e8:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800035ec:	000b8513          	mv	a0,s7
    800035f0:	fffff097          	auipc	ra,0xfffff
    800035f4:	14c080e7          	jalr	332(ra) # 8000273c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800035f8:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800035fc:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003600:	00008797          	auipc	a5,0x8
    80003604:	1c87b783          	ld	a5,456(a5) # 8000b7c8 <_ZL10waitForAll>
    80003608:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000360c:	02800513          	li	a0,40
    80003610:	fffff097          	auipc	ra,0xfffff
    80003614:	02c080e7          	jalr	44(ra) # 8000263c <_Znwm>
    80003618:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    8000361c:	fffff097          	auipc	ra,0xfffff
    80003620:	1f8080e7          	jalr	504(ra) # 80002814 <_ZN6ThreadC1Ev>
    80003624:	00006797          	auipc	a5,0x6
    80003628:	cbc78793          	addi	a5,a5,-836 # 800092e0 <_ZTV16ProducerKeyborad+0x10>
    8000362c:	00f4b023          	sd	a5,0(s1)
    80003630:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003634:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003638:	00048513          	mv	a0,s1
    8000363c:	fffff097          	auipc	ra,0xfffff
    80003640:	100080e7          	jalr	256(ra) # 8000273c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003644:	00100913          	li	s2,1
    80003648:	0300006f          	j	80003678 <_Z20testConsumerProducerv+0x26c>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000364c:	00006797          	auipc	a5,0x6
    80003650:	cbc78793          	addi	a5,a5,-836 # 80009308 <_ZTV8Producer+0x10>
    80003654:	00fcb023          	sd	a5,0(s9)
    80003658:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    8000365c:	00391793          	slli	a5,s2,0x3
    80003660:	00fa07b3          	add	a5,s4,a5
    80003664:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003668:	000c8513          	mv	a0,s9
    8000366c:	fffff097          	auipc	ra,0xfffff
    80003670:	0d0080e7          	jalr	208(ra) # 8000273c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003674:	0019091b          	addiw	s2,s2,1
    80003678:	05395263          	bge	s2,s3,800036bc <_Z20testConsumerProducerv+0x2b0>
        threadData[i].id = i;
    8000367c:	00191493          	slli	s1,s2,0x1
    80003680:	012484b3          	add	s1,s1,s2
    80003684:	00349493          	slli	s1,s1,0x3
    80003688:	009b04b3          	add	s1,s6,s1
    8000368c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003690:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003694:	00008797          	auipc	a5,0x8
    80003698:	1347b783          	ld	a5,308(a5) # 8000b7c8 <_ZL10waitForAll>
    8000369c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800036a0:	02800513          	li	a0,40
    800036a4:	fffff097          	auipc	ra,0xfffff
    800036a8:	f98080e7          	jalr	-104(ra) # 8000263c <_Znwm>
    800036ac:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800036b0:	fffff097          	auipc	ra,0xfffff
    800036b4:	164080e7          	jalr	356(ra) # 80002814 <_ZN6ThreadC1Ev>
    800036b8:	f95ff06f          	j	8000364c <_Z20testConsumerProducerv+0x240>
    Thread::dispatch();
    800036bc:	fffff097          	auipc	ra,0xfffff
    800036c0:	0b4080e7          	jalr	180(ra) # 80002770 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800036c4:	00000493          	li	s1,0
    800036c8:	0180006f          	j	800036e0 <_Z20testConsumerProducerv+0x2d4>
        waitForAll->wait();
    800036cc:	00008517          	auipc	a0,0x8
    800036d0:	0fc53503          	ld	a0,252(a0) # 8000b7c8 <_ZL10waitForAll>
    800036d4:	fffff097          	auipc	ra,0xfffff
    800036d8:	1b0080e7          	jalr	432(ra) # 80002884 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800036dc:	0014849b          	addiw	s1,s1,1
    800036e0:	fe99d6e3          	bge	s3,s1,800036cc <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800036e4:	00008517          	auipc	a0,0x8
    800036e8:	0e453503          	ld	a0,228(a0) # 8000b7c8 <_ZL10waitForAll>
    800036ec:	00050863          	beqz	a0,800036fc <_Z20testConsumerProducerv+0x2f0>
    800036f0:	00053783          	ld	a5,0(a0)
    800036f4:	0087b783          	ld	a5,8(a5)
    800036f8:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800036fc:	00000493          	li	s1,0
    80003700:	0080006f          	j	80003708 <_Z20testConsumerProducerv+0x2fc>
    for (int i = 0; i < threadNum; i++) {
    80003704:	0014849b          	addiw	s1,s1,1
    80003708:	0334d263          	bge	s1,s3,8000372c <_Z20testConsumerProducerv+0x320>
        delete producers[i];
    8000370c:	00349793          	slli	a5,s1,0x3
    80003710:	00fa07b3          	add	a5,s4,a5
    80003714:	0007b503          	ld	a0,0(a5)
    80003718:	fe0506e3          	beqz	a0,80003704 <_Z20testConsumerProducerv+0x2f8>
    8000371c:	00053783          	ld	a5,0(a0)
    80003720:	0087b783          	ld	a5,8(a5)
    80003724:	000780e7          	jalr	a5
    80003728:	fddff06f          	j	80003704 <_Z20testConsumerProducerv+0x2f8>
    delete consumer;
    8000372c:	000b8a63          	beqz	s7,80003740 <_Z20testConsumerProducerv+0x334>
    80003730:	000bb783          	ld	a5,0(s7)
    80003734:	0087b783          	ld	a5,8(a5)
    80003738:	000b8513          	mv	a0,s7
    8000373c:	000780e7          	jalr	a5
    delete buffer;
    80003740:	000a8e63          	beqz	s5,8000375c <_Z20testConsumerProducerv+0x350>
    80003744:	000a8513          	mv	a0,s5
    80003748:	00000097          	auipc	ra,0x0
    8000374c:	bc4080e7          	jalr	-1084(ra) # 8000330c <_ZN9BufferCPPD1Ev>
    80003750:	000a8513          	mv	a0,s5
    80003754:	fffff097          	auipc	ra,0xfffff
    80003758:	f10080e7          	jalr	-240(ra) # 80002664 <_ZdlPv>
    8000375c:	000c0113          	mv	sp,s8
}
    80003760:	f8040113          	addi	sp,s0,-128
    80003764:	07813083          	ld	ra,120(sp)
    80003768:	07013403          	ld	s0,112(sp)
    8000376c:	06813483          	ld	s1,104(sp)
    80003770:	06013903          	ld	s2,96(sp)
    80003774:	05813983          	ld	s3,88(sp)
    80003778:	05013a03          	ld	s4,80(sp)
    8000377c:	04813a83          	ld	s5,72(sp)
    80003780:	04013b03          	ld	s6,64(sp)
    80003784:	03813b83          	ld	s7,56(sp)
    80003788:	03013c03          	ld	s8,48(sp)
    8000378c:	02813c83          	ld	s9,40(sp)
    80003790:	08010113          	addi	sp,sp,128
    80003794:	00008067          	ret
    BufferCPP *buffer = new BufferCPP(n);
    80003798:	00050493          	mv	s1,a0
    8000379c:	000a8513          	mv	a0,s5
    800037a0:	fffff097          	auipc	ra,0xfffff
    800037a4:	ec4080e7          	jalr	-316(ra) # 80002664 <_ZdlPv>
    800037a8:	00048513          	mv	a0,s1
    800037ac:	00009097          	auipc	ra,0x9
    800037b0:	15c080e7          	jalr	348(ra) # 8000c908 <_Unwind_Resume>
    waitForAll = new Semaphore(0);
    800037b4:	00050493          	mv	s1,a0
    800037b8:	00090513          	mv	a0,s2
    800037bc:	fffff097          	auipc	ra,0xfffff
    800037c0:	ea8080e7          	jalr	-344(ra) # 80002664 <_ZdlPv>
    800037c4:	00048513          	mv	a0,s1
    800037c8:	00009097          	auipc	ra,0x9
    800037cc:	140080e7          	jalr	320(ra) # 8000c908 <_Unwind_Resume>
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800037d0:	00050493          	mv	s1,a0
    800037d4:	000b8513          	mv	a0,s7
    800037d8:	fffff097          	auipc	ra,0xfffff
    800037dc:	e8c080e7          	jalr	-372(ra) # 80002664 <_ZdlPv>
    800037e0:	00048513          	mv	a0,s1
    800037e4:	00009097          	auipc	ra,0x9
    800037e8:	124080e7          	jalr	292(ra) # 8000c908 <_Unwind_Resume>
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800037ec:	00050913          	mv	s2,a0
    800037f0:	00048513          	mv	a0,s1
    800037f4:	fffff097          	auipc	ra,0xfffff
    800037f8:	e70080e7          	jalr	-400(ra) # 80002664 <_ZdlPv>
    800037fc:	00090513          	mv	a0,s2
    80003800:	00009097          	auipc	ra,0x9
    80003804:	108080e7          	jalr	264(ra) # 8000c908 <_Unwind_Resume>
        producers[i] = new Producer(&threadData[i]);
    80003808:	00050493          	mv	s1,a0
    8000380c:	000c8513          	mv	a0,s9
    80003810:	fffff097          	auipc	ra,0xfffff
    80003814:	e54080e7          	jalr	-428(ra) # 80002664 <_ZdlPv>
    80003818:	00048513          	mv	a0,s1
    8000381c:	00009097          	auipc	ra,0x9
    80003820:	0ec080e7          	jalr	236(ra) # 8000c908 <_Unwind_Resume>

0000000080003824 <_ZN8Consumer3runEv>:
    void run() override {
    80003824:	fd010113          	addi	sp,sp,-48
    80003828:	02113423          	sd	ra,40(sp)
    8000382c:	02813023          	sd	s0,32(sp)
    80003830:	00913c23          	sd	s1,24(sp)
    80003834:	01213823          	sd	s2,16(sp)
    80003838:	01313423          	sd	s3,8(sp)
    8000383c:	03010413          	addi	s0,sp,48
    80003840:	00050913          	mv	s2,a0
        int i = 0;
    80003844:	00000993          	li	s3,0
        while (!threadEnd) {
    80003848:	00008797          	auipc	a5,0x8
    8000384c:	f787a783          	lw	a5,-136(a5) # 8000b7c0 <_ZL9threadEnd>
    80003850:	06079063          	bnez	a5,800038b0 <_ZN8Consumer3runEv+0x8c>
            int key = td->buffer->get();
    80003854:	02093783          	ld	a5,32(s2)
    80003858:	0087b503          	ld	a0,8(a5)
    8000385c:	00000097          	auipc	ra,0x0
    80003860:	99c080e7          	jalr	-1636(ra) # 800031f8 <_ZN9BufferCPP3getEv>
            i++;
    80003864:	0019849b          	addiw	s1,s3,1
    80003868:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    8000386c:	0ff57513          	andi	a0,a0,255
    80003870:	fffff097          	auipc	ra,0xfffff
    80003874:	104080e7          	jalr	260(ra) # 80002974 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003878:	05000793          	li	a5,80
    8000387c:	02f4e4bb          	remw	s1,s1,a5
    80003880:	fc0494e3          	bnez	s1,80003848 <_ZN8Consumer3runEv+0x24>
                Console::putc('\n');
    80003884:	00a00513          	li	a0,10
    80003888:	fffff097          	auipc	ra,0xfffff
    8000388c:	0ec080e7          	jalr	236(ra) # 80002974 <_ZN7Console4putcEc>
    80003890:	fb9ff06f          	j	80003848 <_ZN8Consumer3runEv+0x24>
            int key = td->buffer->get();
    80003894:	02093783          	ld	a5,32(s2)
    80003898:	0087b503          	ld	a0,8(a5)
    8000389c:	00000097          	auipc	ra,0x0
    800038a0:	95c080e7          	jalr	-1700(ra) # 800031f8 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800038a4:	0ff57513          	andi	a0,a0,255
    800038a8:	fffff097          	auipc	ra,0xfffff
    800038ac:	0cc080e7          	jalr	204(ra) # 80002974 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800038b0:	02093783          	ld	a5,32(s2)
    800038b4:	0087b503          	ld	a0,8(a5)
    800038b8:	00000097          	auipc	ra,0x0
    800038bc:	9cc080e7          	jalr	-1588(ra) # 80003284 <_ZN9BufferCPP6getCntEv>
    800038c0:	fca04ae3          	bgtz	a0,80003894 <_ZN8Consumer3runEv+0x70>
        td->sem->signal();
    800038c4:	02093783          	ld	a5,32(s2)
    800038c8:	0107b503          	ld	a0,16(a5)
    800038cc:	fffff097          	auipc	ra,0xfffff
    800038d0:	fe4080e7          	jalr	-28(ra) # 800028b0 <_ZN9Semaphore6signalEv>
    }
    800038d4:	02813083          	ld	ra,40(sp)
    800038d8:	02013403          	ld	s0,32(sp)
    800038dc:	01813483          	ld	s1,24(sp)
    800038e0:	01013903          	ld	s2,16(sp)
    800038e4:	00813983          	ld	s3,8(sp)
    800038e8:	03010113          	addi	sp,sp,48
    800038ec:	00008067          	ret

00000000800038f0 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800038f0:	ff010113          	addi	sp,sp,-16
    800038f4:	00113423          	sd	ra,8(sp)
    800038f8:	00813023          	sd	s0,0(sp)
    800038fc:	01010413          	addi	s0,sp,16
    80003900:	00006797          	auipc	a5,0x6
    80003904:	a3078793          	addi	a5,a5,-1488 # 80009330 <_ZTV8Consumer+0x10>
    80003908:	00f53023          	sd	a5,0(a0)
    8000390c:	fffff097          	auipc	ra,0xfffff
    80003910:	c94080e7          	jalr	-876(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80003914:	00813083          	ld	ra,8(sp)
    80003918:	00013403          	ld	s0,0(sp)
    8000391c:	01010113          	addi	sp,sp,16
    80003920:	00008067          	ret

0000000080003924 <_ZN8ConsumerD0Ev>:
    80003924:	fe010113          	addi	sp,sp,-32
    80003928:	00113c23          	sd	ra,24(sp)
    8000392c:	00813823          	sd	s0,16(sp)
    80003930:	00913423          	sd	s1,8(sp)
    80003934:	02010413          	addi	s0,sp,32
    80003938:	00050493          	mv	s1,a0
    8000393c:	00006797          	auipc	a5,0x6
    80003940:	9f478793          	addi	a5,a5,-1548 # 80009330 <_ZTV8Consumer+0x10>
    80003944:	00f53023          	sd	a5,0(a0)
    80003948:	fffff097          	auipc	ra,0xfffff
    8000394c:	c58080e7          	jalr	-936(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80003950:	00048513          	mv	a0,s1
    80003954:	fffff097          	auipc	ra,0xfffff
    80003958:	d10080e7          	jalr	-752(ra) # 80002664 <_ZdlPv>
    8000395c:	01813083          	ld	ra,24(sp)
    80003960:	01013403          	ld	s0,16(sp)
    80003964:	00813483          	ld	s1,8(sp)
    80003968:	02010113          	addi	sp,sp,32
    8000396c:	00008067          	ret

0000000080003970 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80003970:	ff010113          	addi	sp,sp,-16
    80003974:	00113423          	sd	ra,8(sp)
    80003978:	00813023          	sd	s0,0(sp)
    8000397c:	01010413          	addi	s0,sp,16
    80003980:	00006797          	auipc	a5,0x6
    80003984:	96078793          	addi	a5,a5,-1696 # 800092e0 <_ZTV16ProducerKeyborad+0x10>
    80003988:	00f53023          	sd	a5,0(a0)
    8000398c:	fffff097          	auipc	ra,0xfffff
    80003990:	c14080e7          	jalr	-1004(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80003994:	00813083          	ld	ra,8(sp)
    80003998:	00013403          	ld	s0,0(sp)
    8000399c:	01010113          	addi	sp,sp,16
    800039a0:	00008067          	ret

00000000800039a4 <_ZN16ProducerKeyboradD0Ev>:
    800039a4:	fe010113          	addi	sp,sp,-32
    800039a8:	00113c23          	sd	ra,24(sp)
    800039ac:	00813823          	sd	s0,16(sp)
    800039b0:	00913423          	sd	s1,8(sp)
    800039b4:	02010413          	addi	s0,sp,32
    800039b8:	00050493          	mv	s1,a0
    800039bc:	00006797          	auipc	a5,0x6
    800039c0:	92478793          	addi	a5,a5,-1756 # 800092e0 <_ZTV16ProducerKeyborad+0x10>
    800039c4:	00f53023          	sd	a5,0(a0)
    800039c8:	fffff097          	auipc	ra,0xfffff
    800039cc:	bd8080e7          	jalr	-1064(ra) # 800025a0 <_ZN6ThreadD1Ev>
    800039d0:	00048513          	mv	a0,s1
    800039d4:	fffff097          	auipc	ra,0xfffff
    800039d8:	c90080e7          	jalr	-880(ra) # 80002664 <_ZdlPv>
    800039dc:	01813083          	ld	ra,24(sp)
    800039e0:	01013403          	ld	s0,16(sp)
    800039e4:	00813483          	ld	s1,8(sp)
    800039e8:	02010113          	addi	sp,sp,32
    800039ec:	00008067          	ret

00000000800039f0 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800039f0:	ff010113          	addi	sp,sp,-16
    800039f4:	00113423          	sd	ra,8(sp)
    800039f8:	00813023          	sd	s0,0(sp)
    800039fc:	01010413          	addi	s0,sp,16
    80003a00:	00006797          	auipc	a5,0x6
    80003a04:	90878793          	addi	a5,a5,-1784 # 80009308 <_ZTV8Producer+0x10>
    80003a08:	00f53023          	sd	a5,0(a0)
    80003a0c:	fffff097          	auipc	ra,0xfffff
    80003a10:	b94080e7          	jalr	-1132(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80003a14:	00813083          	ld	ra,8(sp)
    80003a18:	00013403          	ld	s0,0(sp)
    80003a1c:	01010113          	addi	sp,sp,16
    80003a20:	00008067          	ret

0000000080003a24 <_ZN8ProducerD0Ev>:
    80003a24:	fe010113          	addi	sp,sp,-32
    80003a28:	00113c23          	sd	ra,24(sp)
    80003a2c:	00813823          	sd	s0,16(sp)
    80003a30:	00913423          	sd	s1,8(sp)
    80003a34:	02010413          	addi	s0,sp,32
    80003a38:	00050493          	mv	s1,a0
    80003a3c:	00006797          	auipc	a5,0x6
    80003a40:	8cc78793          	addi	a5,a5,-1844 # 80009308 <_ZTV8Producer+0x10>
    80003a44:	00f53023          	sd	a5,0(a0)
    80003a48:	fffff097          	auipc	ra,0xfffff
    80003a4c:	b58080e7          	jalr	-1192(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80003a50:	00048513          	mv	a0,s1
    80003a54:	fffff097          	auipc	ra,0xfffff
    80003a58:	c10080e7          	jalr	-1008(ra) # 80002664 <_ZdlPv>
    80003a5c:	01813083          	ld	ra,24(sp)
    80003a60:	01013403          	ld	s0,16(sp)
    80003a64:	00813483          	ld	s1,8(sp)
    80003a68:	02010113          	addi	sp,sp,32
    80003a6c:	00008067          	ret

0000000080003a70 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003a70:	fe010113          	addi	sp,sp,-32
    80003a74:	00113c23          	sd	ra,24(sp)
    80003a78:	00813823          	sd	s0,16(sp)
    80003a7c:	00913423          	sd	s1,8(sp)
    80003a80:	02010413          	addi	s0,sp,32
    80003a84:	00050493          	mv	s1,a0
        int i = 0;
    80003a88:	0140006f          	j	80003a9c <_ZN16ProducerKeyborad3runEv+0x2c>
            td->buffer->put(key);
    80003a8c:	0204b783          	ld	a5,32(s1)
    80003a90:	0087b503          	ld	a0,8(a5)
    80003a94:	fffff097          	auipc	ra,0xfffff
    80003a98:	6d4080e7          	jalr	1748(ra) # 80003168 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80003a9c:	fffff097          	auipc	ra,0xfffff
    80003aa0:	a5c080e7          	jalr	-1444(ra) # 800024f8 <_Z4getcv>
    80003aa4:	0005059b          	sext.w	a1,a0
    80003aa8:	01b00793          	li	a5,27
    80003aac:	fef590e3          	bne	a1,a5,80003a8c <_ZN16ProducerKeyborad3runEv+0x1c>
        threadEnd = 1;
    80003ab0:	00100793          	li	a5,1
    80003ab4:	00008717          	auipc	a4,0x8
    80003ab8:	d0f72623          	sw	a5,-756(a4) # 8000b7c0 <_ZL9threadEnd>
        td->buffer->put('!');
    80003abc:	0204b783          	ld	a5,32(s1)
    80003ac0:	02100593          	li	a1,33
    80003ac4:	0087b503          	ld	a0,8(a5)
    80003ac8:	fffff097          	auipc	ra,0xfffff
    80003acc:	6a0080e7          	jalr	1696(ra) # 80003168 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80003ad0:	0204b783          	ld	a5,32(s1)
    80003ad4:	0107b503          	ld	a0,16(a5)
    80003ad8:	fffff097          	auipc	ra,0xfffff
    80003adc:	dd8080e7          	jalr	-552(ra) # 800028b0 <_ZN9Semaphore6signalEv>
    }
    80003ae0:	01813083          	ld	ra,24(sp)
    80003ae4:	01013403          	ld	s0,16(sp)
    80003ae8:	00813483          	ld	s1,8(sp)
    80003aec:	02010113          	addi	sp,sp,32
    80003af0:	00008067          	ret

0000000080003af4 <_ZN8Producer3runEv>:
    void run() override {
    80003af4:	fe010113          	addi	sp,sp,-32
    80003af8:	00113c23          	sd	ra,24(sp)
    80003afc:	00813823          	sd	s0,16(sp)
    80003b00:	00913423          	sd	s1,8(sp)
    80003b04:	01213023          	sd	s2,0(sp)
    80003b08:	02010413          	addi	s0,sp,32
    80003b0c:	00050493          	mv	s1,a0
        int i = 0;
    80003b10:	00000913          	li	s2,0
    80003b14:	0400006f          	j	80003b54 <_ZN8Producer3runEv+0x60>
            td->buffer->put(td->id + '0');
    80003b18:	0204b783          	ld	a5,32(s1)
    80003b1c:	0007a583          	lw	a1,0(a5)
    80003b20:	0305859b          	addiw	a1,a1,48
    80003b24:	0087b503          	ld	a0,8(a5)
    80003b28:	fffff097          	auipc	ra,0xfffff
    80003b2c:	640080e7          	jalr	1600(ra) # 80003168 <_ZN9BufferCPP3putEi>
            i++;
    80003b30:	0019071b          	addiw	a4,s2,1
    80003b34:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80003b38:	0204b783          	ld	a5,32(s1)
    80003b3c:	0007a783          	lw	a5,0(a5)
    80003b40:	00e787bb          	addw	a5,a5,a4
    80003b44:	00500513          	li	a0,5
    80003b48:	02a7e53b          	remw	a0,a5,a0
    80003b4c:	fffff097          	auipc	ra,0xfffff
    80003b50:	c4c080e7          	jalr	-948(ra) # 80002798 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80003b54:	00008797          	auipc	a5,0x8
    80003b58:	c6c7a783          	lw	a5,-916(a5) # 8000b7c0 <_ZL9threadEnd>
    80003b5c:	fa078ee3          	beqz	a5,80003b18 <_ZN8Producer3runEv+0x24>
        td->sem->signal();
    80003b60:	0204b783          	ld	a5,32(s1)
    80003b64:	0107b503          	ld	a0,16(a5)
    80003b68:	fffff097          	auipc	ra,0xfffff
    80003b6c:	d48080e7          	jalr	-696(ra) # 800028b0 <_ZN9Semaphore6signalEv>
    }
    80003b70:	01813083          	ld	ra,24(sp)
    80003b74:	01013403          	ld	s0,16(sp)
    80003b78:	00813483          	ld	s1,8(sp)
    80003b7c:	00013903          	ld	s2,0(sp)
    80003b80:	02010113          	addi	sp,sp,32
    80003b84:	00008067          	ret

0000000080003b88 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80003b88:	fd010113          	addi	sp,sp,-48
    80003b8c:	02113423          	sd	ra,40(sp)
    80003b90:	02813023          	sd	s0,32(sp)
    80003b94:	00913c23          	sd	s1,24(sp)
    80003b98:	01213823          	sd	s2,16(sp)
    80003b9c:	01313423          	sd	s3,8(sp)
    80003ba0:	03010413          	addi	s0,sp,48
    80003ba4:	00050993          	mv	s3,a0
    80003ba8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003bac:	00000913          	li	s2,0
    while ((key = getc()) != 0x1b) {
    80003bb0:	fffff097          	auipc	ra,0xfffff
    80003bb4:	948080e7          	jalr	-1720(ra) # 800024f8 <_Z4getcv>
    80003bb8:	0005059b          	sext.w	a1,a0
    80003bbc:	01b00793          	li	a5,27
    80003bc0:	02f58e63          	beq	a1,a5,80003bfc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x74>
        data->buffer->put(key);
    80003bc4:	0084b503          	ld	a0,8(s1)
    80003bc8:	fffff097          	auipc	ra,0xfffff
    80003bcc:	5a0080e7          	jalr	1440(ra) # 80003168 <_ZN9BufferCPP3putEi>
        i++;
    80003bd0:	0019071b          	addiw	a4,s2,1
    80003bd4:	0007091b          	sext.w	s2,a4

        if (i % (10 * data->id) == 0) {
    80003bd8:	0004a683          	lw	a3,0(s1)
    80003bdc:	0026979b          	slliw	a5,a3,0x2
    80003be0:	00d787bb          	addw	a5,a5,a3
    80003be4:	0017979b          	slliw	a5,a5,0x1
    80003be8:	02f767bb          	remw	a5,a4,a5
    80003bec:	fc0792e3          	bnez	a5,80003bb0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x28>
            Thread::dispatch();
    80003bf0:	fffff097          	auipc	ra,0xfffff
    80003bf4:	b80080e7          	jalr	-1152(ra) # 80002770 <_ZN6Thread8dispatchEv>
    80003bf8:	fb9ff06f          	j	80003bb0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x28>
        }
    }

    threadEnd = 1;
    80003bfc:	00100793          	li	a5,1
    80003c00:	00008717          	auipc	a4,0x8
    80003c04:	bcf72823          	sw	a5,-1072(a4) # 8000b7d0 <_ZL9threadEnd>
    td->buffer->put('!');
    80003c08:	0209b783          	ld	a5,32(s3)
    80003c0c:	02100593          	li	a1,33
    80003c10:	0087b503          	ld	a0,8(a5)
    80003c14:	fffff097          	auipc	ra,0xfffff
    80003c18:	554080e7          	jalr	1364(ra) # 80003168 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80003c1c:	0104b503          	ld	a0,16(s1)
    80003c20:	fffff097          	auipc	ra,0xfffff
    80003c24:	c90080e7          	jalr	-880(ra) # 800028b0 <_ZN9Semaphore6signalEv>
}
    80003c28:	02813083          	ld	ra,40(sp)
    80003c2c:	02013403          	ld	s0,32(sp)
    80003c30:	01813483          	ld	s1,24(sp)
    80003c34:	01013903          	ld	s2,16(sp)
    80003c38:	00813983          	ld	s3,8(sp)
    80003c3c:	03010113          	addi	sp,sp,48
    80003c40:	00008067          	ret

0000000080003c44 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80003c44:	fe010113          	addi	sp,sp,-32
    80003c48:	00113c23          	sd	ra,24(sp)
    80003c4c:	00813823          	sd	s0,16(sp)
    80003c50:	00913423          	sd	s1,8(sp)
    80003c54:	01213023          	sd	s2,0(sp)
    80003c58:	02010413          	addi	s0,sp,32
    80003c5c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003c60:	00000913          	li	s2,0
    while (!threadEnd) {
    80003c64:	00008797          	auipc	a5,0x8
    80003c68:	b6c7a783          	lw	a5,-1172(a5) # 8000b7d0 <_ZL9threadEnd>
    80003c6c:	04079263          	bnez	a5,80003cb0 <_ZN12ProducerSync8producerEPv+0x6c>
        data->buffer->put(data->id + '0');
    80003c70:	0004a583          	lw	a1,0(s1)
    80003c74:	0305859b          	addiw	a1,a1,48
    80003c78:	0084b503          	ld	a0,8(s1)
    80003c7c:	fffff097          	auipc	ra,0xfffff
    80003c80:	4ec080e7          	jalr	1260(ra) # 80003168 <_ZN9BufferCPP3putEi>
        i++;
    80003c84:	0019071b          	addiw	a4,s2,1
    80003c88:	0007091b          	sext.w	s2,a4

        if (i % (10 * data->id) == 0) {
    80003c8c:	0004a683          	lw	a3,0(s1)
    80003c90:	0026979b          	slliw	a5,a3,0x2
    80003c94:	00d787bb          	addw	a5,a5,a3
    80003c98:	0017979b          	slliw	a5,a5,0x1
    80003c9c:	02f767bb          	remw	a5,a4,a5
    80003ca0:	fc0792e3          	bnez	a5,80003c64 <_ZN12ProducerSync8producerEPv+0x20>
            Thread::dispatch();
    80003ca4:	fffff097          	auipc	ra,0xfffff
    80003ca8:	acc080e7          	jalr	-1332(ra) # 80002770 <_ZN6Thread8dispatchEv>
    80003cac:	fb9ff06f          	j	80003c64 <_ZN12ProducerSync8producerEPv+0x20>
        }
    }

    data->wait->signal();
    80003cb0:	0104b503          	ld	a0,16(s1)
    80003cb4:	fffff097          	auipc	ra,0xfffff
    80003cb8:	bfc080e7          	jalr	-1028(ra) # 800028b0 <_ZN9Semaphore6signalEv>
}
    80003cbc:	01813083          	ld	ra,24(sp)
    80003cc0:	01013403          	ld	s0,16(sp)
    80003cc4:	00813483          	ld	s1,8(sp)
    80003cc8:	00013903          	ld	s2,0(sp)
    80003ccc:	02010113          	addi	sp,sp,32
    80003cd0:	00008067          	ret

0000000080003cd4 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80003cd4:	fd010113          	addi	sp,sp,-48
    80003cd8:	02113423          	sd	ra,40(sp)
    80003cdc:	02813023          	sd	s0,32(sp)
    80003ce0:	00913c23          	sd	s1,24(sp)
    80003ce4:	01213823          	sd	s2,16(sp)
    80003ce8:	01313423          	sd	s3,8(sp)
    80003cec:	01413023          	sd	s4,0(sp)
    80003cf0:	03010413          	addi	s0,sp,48
    80003cf4:	00050993          	mv	s3,a0
    80003cf8:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003cfc:	00000a13          	li	s4,0
    while (!threadEnd) {
    80003d00:	00008797          	auipc	a5,0x8
    80003d04:	ad07a783          	lw	a5,-1328(a5) # 8000b7d0 <_ZL9threadEnd>
    80003d08:	06079e63          	bnez	a5,80003d84 <_ZN12ConsumerSync8consumerEPv+0xb0>
        int key = data->buffer->get();
    80003d0c:	00893503          	ld	a0,8(s2)
    80003d10:	fffff097          	auipc	ra,0xfffff
    80003d14:	4e8080e7          	jalr	1256(ra) # 800031f8 <_ZN9BufferCPP3getEv>
        i++;
    80003d18:	001a049b          	addiw	s1,s4,1
    80003d1c:	00048a1b          	sext.w	s4,s1

        putc(key);
    80003d20:	0ff57513          	andi	a0,a0,255
    80003d24:	fffff097          	auipc	ra,0xfffff
    80003d28:	828080e7          	jalr	-2008(ra) # 8000254c <_Z4putcc>

        if (i % (5 * data->id) == 0) {
    80003d2c:	00092703          	lw	a4,0(s2)
    80003d30:	0027179b          	slliw	a5,a4,0x2
    80003d34:	00e787bb          	addw	a5,a5,a4
    80003d38:	02f4e7bb          	remw	a5,s1,a5
    80003d3c:	02078063          	beqz	a5,80003d5c <_ZN12ConsumerSync8consumerEPv+0x88>
            Thread::dispatch();
        }

        if (i % 80 == 0) {
    80003d40:	05000793          	li	a5,80
    80003d44:	02f4e4bb          	remw	s1,s1,a5
    80003d48:	fa049ce3          	bnez	s1,80003d00 <_ZN12ConsumerSync8consumerEPv+0x2c>
            putc('\n');
    80003d4c:	00a00513          	li	a0,10
    80003d50:	ffffe097          	auipc	ra,0xffffe
    80003d54:	7fc080e7          	jalr	2044(ra) # 8000254c <_Z4putcc>
    80003d58:	fa9ff06f          	j	80003d00 <_ZN12ConsumerSync8consumerEPv+0x2c>
            Thread::dispatch();
    80003d5c:	fffff097          	auipc	ra,0xfffff
    80003d60:	a14080e7          	jalr	-1516(ra) # 80002770 <_ZN6Thread8dispatchEv>
    80003d64:	fddff06f          	j	80003d40 <_ZN12ConsumerSync8consumerEPv+0x6c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80003d68:	0209b783          	ld	a5,32(s3)
    80003d6c:	0087b503          	ld	a0,8(a5)
    80003d70:	fffff097          	auipc	ra,0xfffff
    80003d74:	488080e7          	jalr	1160(ra) # 800031f8 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80003d78:	0ff57513          	andi	a0,a0,255
    80003d7c:	fffff097          	auipc	ra,0xfffff
    80003d80:	bf8080e7          	jalr	-1032(ra) # 80002974 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80003d84:	0209b783          	ld	a5,32(s3)
    80003d88:	0087b503          	ld	a0,8(a5)
    80003d8c:	fffff097          	auipc	ra,0xfffff
    80003d90:	4f8080e7          	jalr	1272(ra) # 80003284 <_ZN9BufferCPP6getCntEv>
    80003d94:	fca04ae3          	bgtz	a0,80003d68 <_ZN12ConsumerSync8consumerEPv+0x94>
    }

    data->wait->signal();
    80003d98:	01093503          	ld	a0,16(s2)
    80003d9c:	fffff097          	auipc	ra,0xfffff
    80003da0:	b14080e7          	jalr	-1260(ra) # 800028b0 <_ZN9Semaphore6signalEv>
}
    80003da4:	02813083          	ld	ra,40(sp)
    80003da8:	02013403          	ld	s0,32(sp)
    80003dac:	01813483          	ld	s1,24(sp)
    80003db0:	01013903          	ld	s2,16(sp)
    80003db4:	00813983          	ld	s3,8(sp)
    80003db8:	00013a03          	ld	s4,0(sp)
    80003dbc:	03010113          	addi	sp,sp,48
    80003dc0:	00008067          	ret

0000000080003dc4 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80003dc4:	f8010113          	addi	sp,sp,-128
    80003dc8:	06113c23          	sd	ra,120(sp)
    80003dcc:	06813823          	sd	s0,112(sp)
    80003dd0:	06913423          	sd	s1,104(sp)
    80003dd4:	07213023          	sd	s2,96(sp)
    80003dd8:	05313c23          	sd	s3,88(sp)
    80003ddc:	05413823          	sd	s4,80(sp)
    80003de0:	05513423          	sd	s5,72(sp)
    80003de4:	05613023          	sd	s6,64(sp)
    80003de8:	03713c23          	sd	s7,56(sp)
    80003dec:	03813823          	sd	s8,48(sp)
    80003df0:	03913423          	sd	s9,40(sp)
    80003df4:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80003df8:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80003dfc:	00005517          	auipc	a0,0x5
    80003e00:	3ec50513          	addi	a0,a0,1004 # 800091e8 <_ZTV14PeriodicThread+0x48>
    80003e04:	00001097          	auipc	ra,0x1
    80003e08:	ae4080e7          	jalr	-1308(ra) # 800048e8 <_Z11printStringPKc>
    getString(input, 30);
    80003e0c:	01e00593          	li	a1,30
    80003e10:	f8040513          	addi	a0,s0,-128
    80003e14:	00001097          	auipc	ra,0x1
    80003e18:	b5c080e7          	jalr	-1188(ra) # 80004970 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003e1c:	f8040513          	addi	a0,s0,-128
    80003e20:	00001097          	auipc	ra,0x1
    80003e24:	c28080e7          	jalr	-984(ra) # 80004a48 <_Z11stringToIntPKc>
    80003e28:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003e2c:	00005517          	auipc	a0,0x5
    80003e30:	3dc50513          	addi	a0,a0,988 # 80009208 <_ZTV14PeriodicThread+0x68>
    80003e34:	00001097          	auipc	ra,0x1
    80003e38:	ab4080e7          	jalr	-1356(ra) # 800048e8 <_Z11printStringPKc>
    getString(input, 30);
    80003e3c:	01e00593          	li	a1,30
    80003e40:	f8040513          	addi	a0,s0,-128
    80003e44:	00001097          	auipc	ra,0x1
    80003e48:	b2c080e7          	jalr	-1236(ra) # 80004970 <_Z9getStringPci>
    n = stringToInt(input);
    80003e4c:	f8040513          	addi	a0,s0,-128
    80003e50:	00001097          	auipc	ra,0x1
    80003e54:	bf8080e7          	jalr	-1032(ra) # 80004a48 <_Z11stringToIntPKc>
    80003e58:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003e5c:	00005517          	auipc	a0,0x5
    80003e60:	3cc50513          	addi	a0,a0,972 # 80009228 <_ZTV14PeriodicThread+0x88>
    80003e64:	00001097          	auipc	ra,0x1
    80003e68:	a84080e7          	jalr	-1404(ra) # 800048e8 <_Z11printStringPKc>
    80003e6c:	00000613          	li	a2,0
    80003e70:	00a00593          	li	a1,10
    80003e74:	00090513          	mv	a0,s2
    80003e78:	00001097          	auipc	ra,0x1
    80003e7c:	c20080e7          	jalr	-992(ra) # 80004a98 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003e80:	00005517          	auipc	a0,0x5
    80003e84:	3c050513          	addi	a0,a0,960 # 80009240 <_ZTV14PeriodicThread+0xa0>
    80003e88:	00001097          	auipc	ra,0x1
    80003e8c:	a60080e7          	jalr	-1440(ra) # 800048e8 <_Z11printStringPKc>
    80003e90:	00000613          	li	a2,0
    80003e94:	00a00593          	li	a1,10
    80003e98:	00048513          	mv	a0,s1
    80003e9c:	00001097          	auipc	ra,0x1
    80003ea0:	bfc080e7          	jalr	-1028(ra) # 80004a98 <_Z8printIntiii>
    printString(".\n");
    80003ea4:	00005517          	auipc	a0,0x5
    80003ea8:	3b450513          	addi	a0,a0,948 # 80009258 <_ZTV14PeriodicThread+0xb8>
    80003eac:	00001097          	auipc	ra,0x1
    80003eb0:	a3c080e7          	jalr	-1476(ra) # 800048e8 <_Z11printStringPKc>
    if(threadNum > n) {
    80003eb4:	0324c463          	blt	s1,s2,80003edc <_Z29producerConsumer_CPP_Sync_APIv+0x118>
    } else if (threadNum < 1) {
    80003eb8:	03205c63          	blez	s2,80003ef0 <_Z29producerConsumer_CPP_Sync_APIv+0x12c>
    BufferCPP *buffer = new BufferCPP(n);
    80003ebc:	03800513          	li	a0,56
    80003ec0:	ffffe097          	auipc	ra,0xffffe
    80003ec4:	77c080e7          	jalr	1916(ra) # 8000263c <_Znwm>
    80003ec8:	00050a93          	mv	s5,a0
    80003ecc:	00048593          	mv	a1,s1
    80003ed0:	fffff097          	auipc	ra,0xfffff
    80003ed4:	144080e7          	jalr	324(ra) # 80003014 <_ZN9BufferCPPC1Ei>
    80003ed8:	0300006f          	j	80003f08 <_Z29producerConsumer_CPP_Sync_APIv+0x144>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003edc:	00005517          	auipc	a0,0x5
    80003ee0:	38450513          	addi	a0,a0,900 # 80009260 <_ZTV14PeriodicThread+0xc0>
    80003ee4:	00001097          	auipc	ra,0x1
    80003ee8:	a04080e7          	jalr	-1532(ra) # 800048e8 <_Z11printStringPKc>
        return;
    80003eec:	0140006f          	j	80003f00 <_Z29producerConsumer_CPP_Sync_APIv+0x13c>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003ef0:	00005517          	auipc	a0,0x5
    80003ef4:	3b050513          	addi	a0,a0,944 # 800092a0 <_ZTV14PeriodicThread+0x100>
    80003ef8:	00001097          	auipc	ra,0x1
    80003efc:	9f0080e7          	jalr	-1552(ra) # 800048e8 <_Z11printStringPKc>
        return;
    80003f00:	000b8113          	mv	sp,s7
    80003f04:	2380006f          	j	8000413c <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    waitForAll = new Semaphore(0);
    80003f08:	01000513          	li	a0,16
    80003f0c:	ffffe097          	auipc	ra,0xffffe
    80003f10:	730080e7          	jalr	1840(ra) # 8000263c <_Znwm>
    80003f14:	00050493          	mv	s1,a0
    80003f18:	00000593          	li	a1,0
    80003f1c:	fffff097          	auipc	ra,0xfffff
    80003f20:	930080e7          	jalr	-1744(ra) # 8000284c <_ZN9SemaphoreC1Ej>
    80003f24:	00008797          	auipc	a5,0x8
    80003f28:	8a97ba23          	sd	s1,-1868(a5) # 8000b7d8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80003f2c:	00391793          	slli	a5,s2,0x3
    80003f30:	00f78793          	addi	a5,a5,15
    80003f34:	ff07f793          	andi	a5,a5,-16
    80003f38:	40f10133          	sub	sp,sp,a5
    80003f3c:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80003f40:	0019071b          	addiw	a4,s2,1
    80003f44:	00171793          	slli	a5,a4,0x1
    80003f48:	00e787b3          	add	a5,a5,a4
    80003f4c:	00379793          	slli	a5,a5,0x3
    80003f50:	00f78793          	addi	a5,a5,15
    80003f54:	ff07f793          	andi	a5,a5,-16
    80003f58:	40f10133          	sub	sp,sp,a5
    80003f5c:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80003f60:	00191c13          	slli	s8,s2,0x1
    80003f64:	012c07b3          	add	a5,s8,s2
    80003f68:	00379793          	slli	a5,a5,0x3
    80003f6c:	00fa07b3          	add	a5,s4,a5
    80003f70:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003f74:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80003f78:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80003f7c:	02800513          	li	a0,40
    80003f80:	ffffe097          	auipc	ra,0xffffe
    80003f84:	6bc080e7          	jalr	1724(ra) # 8000263c <_Znwm>
    80003f88:	00050b13          	mv	s6,a0
    80003f8c:	012c0c33          	add	s8,s8,s2
    80003f90:	003c1c13          	slli	s8,s8,0x3
    80003f94:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80003f98:	fffff097          	auipc	ra,0xfffff
    80003f9c:	87c080e7          	jalr	-1924(ra) # 80002814 <_ZN6ThreadC1Ev>
    80003fa0:	00005797          	auipc	a5,0x5
    80003fa4:	40878793          	addi	a5,a5,1032 # 800093a8 <_ZTV12ConsumerSync+0x10>
    80003fa8:	00fb3023          	sd	a5,0(s6)
    80003fac:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80003fb0:	000b0513          	mv	a0,s6
    80003fb4:	ffffe097          	auipc	ra,0xffffe
    80003fb8:	788080e7          	jalr	1928(ra) # 8000273c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80003fbc:	00000493          	li	s1,0
    80003fc0:	0380006f          	j	80003ff8 <_Z29producerConsumer_CPP_Sync_APIv+0x234>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80003fc4:	00005797          	auipc	a5,0x5
    80003fc8:	3bc78793          	addi	a5,a5,956 # 80009380 <_ZTV12ProducerSync+0x10>
    80003fcc:	00fcb023          	sd	a5,0(s9)
    80003fd0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80003fd4:	00349793          	slli	a5,s1,0x3
    80003fd8:	00f987b3          	add	a5,s3,a5
    80003fdc:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80003fe0:	00349793          	slli	a5,s1,0x3
    80003fe4:	00f987b3          	add	a5,s3,a5
    80003fe8:	0007b503          	ld	a0,0(a5)
    80003fec:	ffffe097          	auipc	ra,0xffffe
    80003ff0:	750080e7          	jalr	1872(ra) # 8000273c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80003ff4:	0014849b          	addiw	s1,s1,1
    80003ff8:	0b24d063          	bge	s1,s2,80004098 <_Z29producerConsumer_CPP_Sync_APIv+0x2d4>
        data[i].id = i;
    80003ffc:	00149793          	slli	a5,s1,0x1
    80004000:	009787b3          	add	a5,a5,s1
    80004004:	00379793          	slli	a5,a5,0x3
    80004008:	00fa07b3          	add	a5,s4,a5
    8000400c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004010:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004014:	00007717          	auipc	a4,0x7
    80004018:	7c473703          	ld	a4,1988(a4) # 8000b7d8 <_ZL10waitForAll>
    8000401c:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004020:	02905863          	blez	s1,80004050 <_Z29producerConsumer_CPP_Sync_APIv+0x28c>
            threads[i] = new ProducerSync(data+i);
    80004024:	02800513          	li	a0,40
    80004028:	ffffe097          	auipc	ra,0xffffe
    8000402c:	614080e7          	jalr	1556(ra) # 8000263c <_Znwm>
    80004030:	00050c93          	mv	s9,a0
    80004034:	00149c13          	slli	s8,s1,0x1
    80004038:	009c0c33          	add	s8,s8,s1
    8000403c:	003c1c13          	slli	s8,s8,0x3
    80004040:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004044:	ffffe097          	auipc	ra,0xffffe
    80004048:	7d0080e7          	jalr	2000(ra) # 80002814 <_ZN6ThreadC1Ev>
    8000404c:	f79ff06f          	j	80003fc4 <_Z29producerConsumer_CPP_Sync_APIv+0x200>
            threads[i] = new ProducerKeyboard(data+i);
    80004050:	02800513          	li	a0,40
    80004054:	ffffe097          	auipc	ra,0xffffe
    80004058:	5e8080e7          	jalr	1512(ra) # 8000263c <_Znwm>
    8000405c:	00050c93          	mv	s9,a0
    80004060:	00149c13          	slli	s8,s1,0x1
    80004064:	009c0c33          	add	s8,s8,s1
    80004068:	003c1c13          	slli	s8,s8,0x3
    8000406c:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004070:	ffffe097          	auipc	ra,0xffffe
    80004074:	7a4080e7          	jalr	1956(ra) # 80002814 <_ZN6ThreadC1Ev>
    80004078:	00005797          	auipc	a5,0x5
    8000407c:	2e078793          	addi	a5,a5,736 # 80009358 <_ZTV16ProducerKeyboard+0x10>
    80004080:	00fcb023          	sd	a5,0(s9)
    80004084:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004088:	00349793          	slli	a5,s1,0x3
    8000408c:	00f987b3          	add	a5,s3,a5
    80004090:	0197b023          	sd	s9,0(a5)
    80004094:	f4dff06f          	j	80003fe0 <_Z29producerConsumer_CPP_Sync_APIv+0x21c>
    Thread::dispatch();
    80004098:	ffffe097          	auipc	ra,0xffffe
    8000409c:	6d8080e7          	jalr	1752(ra) # 80002770 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800040a0:	00000493          	li	s1,0
    800040a4:	0180006f          	j	800040bc <_Z29producerConsumer_CPP_Sync_APIv+0x2f8>
        waitForAll->wait();
    800040a8:	00007517          	auipc	a0,0x7
    800040ac:	73053503          	ld	a0,1840(a0) # 8000b7d8 <_ZL10waitForAll>
    800040b0:	ffffe097          	auipc	ra,0xffffe
    800040b4:	7d4080e7          	jalr	2004(ra) # 80002884 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800040b8:	0014849b          	addiw	s1,s1,1
    800040bc:	fe9956e3          	bge	s2,s1,800040a8 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800040c0:	00000493          	li	s1,0
    800040c4:	0140006f          	j	800040d8 <_Z29producerConsumer_CPP_Sync_APIv+0x314>
        delete threads[i];
    800040c8:	00053783          	ld	a5,0(a0)
    800040cc:	0087b783          	ld	a5,8(a5)
    800040d0:	000780e7          	jalr	a5
    for (int i = 0; i < threadNum; i++) {
    800040d4:	0014849b          	addiw	s1,s1,1
    800040d8:	0124dc63          	bge	s1,s2,800040f0 <_Z29producerConsumer_CPP_Sync_APIv+0x32c>
        delete threads[i];
    800040dc:	00349793          	slli	a5,s1,0x3
    800040e0:	00f987b3          	add	a5,s3,a5
    800040e4:	0007b503          	ld	a0,0(a5)
    800040e8:	fe0510e3          	bnez	a0,800040c8 <_Z29producerConsumer_CPP_Sync_APIv+0x304>
    800040ec:	fe9ff06f          	j	800040d4 <_Z29producerConsumer_CPP_Sync_APIv+0x310>
    delete consumerThread;
    800040f0:	000b0a63          	beqz	s6,80004104 <_Z29producerConsumer_CPP_Sync_APIv+0x340>
    800040f4:	000b3783          	ld	a5,0(s6)
    800040f8:	0087b783          	ld	a5,8(a5)
    800040fc:	000b0513          	mv	a0,s6
    80004100:	000780e7          	jalr	a5
    delete waitForAll;
    80004104:	00007517          	auipc	a0,0x7
    80004108:	6d453503          	ld	a0,1748(a0) # 8000b7d8 <_ZL10waitForAll>
    8000410c:	00050863          	beqz	a0,8000411c <_Z29producerConsumer_CPP_Sync_APIv+0x358>
    80004110:	00053783          	ld	a5,0(a0)
    80004114:	0087b783          	ld	a5,8(a5)
    80004118:	000780e7          	jalr	a5
    delete buffer;
    8000411c:	000a8e63          	beqz	s5,80004138 <_Z29producerConsumer_CPP_Sync_APIv+0x374>
    80004120:	000a8513          	mv	a0,s5
    80004124:	fffff097          	auipc	ra,0xfffff
    80004128:	1e8080e7          	jalr	488(ra) # 8000330c <_ZN9BufferCPPD1Ev>
    8000412c:	000a8513          	mv	a0,s5
    80004130:	ffffe097          	auipc	ra,0xffffe
    80004134:	534080e7          	jalr	1332(ra) # 80002664 <_ZdlPv>
    80004138:	000b8113          	mv	sp,s7

}
    8000413c:	f8040113          	addi	sp,s0,-128
    80004140:	07813083          	ld	ra,120(sp)
    80004144:	07013403          	ld	s0,112(sp)
    80004148:	06813483          	ld	s1,104(sp)
    8000414c:	06013903          	ld	s2,96(sp)
    80004150:	05813983          	ld	s3,88(sp)
    80004154:	05013a03          	ld	s4,80(sp)
    80004158:	04813a83          	ld	s5,72(sp)
    8000415c:	04013b03          	ld	s6,64(sp)
    80004160:	03813b83          	ld	s7,56(sp)
    80004164:	03013c03          	ld	s8,48(sp)
    80004168:	02813c83          	ld	s9,40(sp)
    8000416c:	08010113          	addi	sp,sp,128
    80004170:	00008067          	ret
    BufferCPP *buffer = new BufferCPP(n);
    80004174:	00050493          	mv	s1,a0
    80004178:	000a8513          	mv	a0,s5
    8000417c:	ffffe097          	auipc	ra,0xffffe
    80004180:	4e8080e7          	jalr	1256(ra) # 80002664 <_ZdlPv>
    80004184:	00048513          	mv	a0,s1
    80004188:	00008097          	auipc	ra,0x8
    8000418c:	780080e7          	jalr	1920(ra) # 8000c908 <_Unwind_Resume>
    waitForAll = new Semaphore(0);
    80004190:	00050913          	mv	s2,a0
    80004194:	00048513          	mv	a0,s1
    80004198:	ffffe097          	auipc	ra,0xffffe
    8000419c:	4cc080e7          	jalr	1228(ra) # 80002664 <_ZdlPv>
    800041a0:	00090513          	mv	a0,s2
    800041a4:	00008097          	auipc	ra,0x8
    800041a8:	764080e7          	jalr	1892(ra) # 8000c908 <_Unwind_Resume>
    consumerThread = new ConsumerSync(data+threadNum);
    800041ac:	00050493          	mv	s1,a0
    800041b0:	000b0513          	mv	a0,s6
    800041b4:	ffffe097          	auipc	ra,0xffffe
    800041b8:	4b0080e7          	jalr	1200(ra) # 80002664 <_ZdlPv>
    800041bc:	00048513          	mv	a0,s1
    800041c0:	00008097          	auipc	ra,0x8
    800041c4:	748080e7          	jalr	1864(ra) # 8000c908 <_Unwind_Resume>
            threads[i] = new ProducerSync(data+i);
    800041c8:	00050493          	mv	s1,a0
    800041cc:	000c8513          	mv	a0,s9
    800041d0:	ffffe097          	auipc	ra,0xffffe
    800041d4:	494080e7          	jalr	1172(ra) # 80002664 <_ZdlPv>
    800041d8:	00048513          	mv	a0,s1
    800041dc:	00008097          	auipc	ra,0x8
    800041e0:	72c080e7          	jalr	1836(ra) # 8000c908 <_Unwind_Resume>
            threads[i] = new ProducerKeyboard(data+i);
    800041e4:	00050493          	mv	s1,a0
    800041e8:	000c8513          	mv	a0,s9
    800041ec:	ffffe097          	auipc	ra,0xffffe
    800041f0:	478080e7          	jalr	1144(ra) # 80002664 <_ZdlPv>
    800041f4:	00048513          	mv	a0,s1
    800041f8:	00008097          	auipc	ra,0x8
    800041fc:	710080e7          	jalr	1808(ra) # 8000c908 <_Unwind_Resume>

0000000080004200 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004200:	ff010113          	addi	sp,sp,-16
    80004204:	00113423          	sd	ra,8(sp)
    80004208:	00813023          	sd	s0,0(sp)
    8000420c:	01010413          	addi	s0,sp,16
    80004210:	00005797          	auipc	a5,0x5
    80004214:	19878793          	addi	a5,a5,408 # 800093a8 <_ZTV12ConsumerSync+0x10>
    80004218:	00f53023          	sd	a5,0(a0)
    8000421c:	ffffe097          	auipc	ra,0xffffe
    80004220:	384080e7          	jalr	900(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80004224:	00813083          	ld	ra,8(sp)
    80004228:	00013403          	ld	s0,0(sp)
    8000422c:	01010113          	addi	sp,sp,16
    80004230:	00008067          	ret

0000000080004234 <_ZN12ConsumerSyncD0Ev>:
    80004234:	fe010113          	addi	sp,sp,-32
    80004238:	00113c23          	sd	ra,24(sp)
    8000423c:	00813823          	sd	s0,16(sp)
    80004240:	00913423          	sd	s1,8(sp)
    80004244:	02010413          	addi	s0,sp,32
    80004248:	00050493          	mv	s1,a0
    8000424c:	00005797          	auipc	a5,0x5
    80004250:	15c78793          	addi	a5,a5,348 # 800093a8 <_ZTV12ConsumerSync+0x10>
    80004254:	00f53023          	sd	a5,0(a0)
    80004258:	ffffe097          	auipc	ra,0xffffe
    8000425c:	348080e7          	jalr	840(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80004260:	00048513          	mv	a0,s1
    80004264:	ffffe097          	auipc	ra,0xffffe
    80004268:	400080e7          	jalr	1024(ra) # 80002664 <_ZdlPv>
    8000426c:	01813083          	ld	ra,24(sp)
    80004270:	01013403          	ld	s0,16(sp)
    80004274:	00813483          	ld	s1,8(sp)
    80004278:	02010113          	addi	sp,sp,32
    8000427c:	00008067          	ret

0000000080004280 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004280:	ff010113          	addi	sp,sp,-16
    80004284:	00113423          	sd	ra,8(sp)
    80004288:	00813023          	sd	s0,0(sp)
    8000428c:	01010413          	addi	s0,sp,16
    80004290:	00005797          	auipc	a5,0x5
    80004294:	0f078793          	addi	a5,a5,240 # 80009380 <_ZTV12ProducerSync+0x10>
    80004298:	00f53023          	sd	a5,0(a0)
    8000429c:	ffffe097          	auipc	ra,0xffffe
    800042a0:	304080e7          	jalr	772(ra) # 800025a0 <_ZN6ThreadD1Ev>
    800042a4:	00813083          	ld	ra,8(sp)
    800042a8:	00013403          	ld	s0,0(sp)
    800042ac:	01010113          	addi	sp,sp,16
    800042b0:	00008067          	ret

00000000800042b4 <_ZN12ProducerSyncD0Ev>:
    800042b4:	fe010113          	addi	sp,sp,-32
    800042b8:	00113c23          	sd	ra,24(sp)
    800042bc:	00813823          	sd	s0,16(sp)
    800042c0:	00913423          	sd	s1,8(sp)
    800042c4:	02010413          	addi	s0,sp,32
    800042c8:	00050493          	mv	s1,a0
    800042cc:	00005797          	auipc	a5,0x5
    800042d0:	0b478793          	addi	a5,a5,180 # 80009380 <_ZTV12ProducerSync+0x10>
    800042d4:	00f53023          	sd	a5,0(a0)
    800042d8:	ffffe097          	auipc	ra,0xffffe
    800042dc:	2c8080e7          	jalr	712(ra) # 800025a0 <_ZN6ThreadD1Ev>
    800042e0:	00048513          	mv	a0,s1
    800042e4:	ffffe097          	auipc	ra,0xffffe
    800042e8:	380080e7          	jalr	896(ra) # 80002664 <_ZdlPv>
    800042ec:	01813083          	ld	ra,24(sp)
    800042f0:	01013403          	ld	s0,16(sp)
    800042f4:	00813483          	ld	s1,8(sp)
    800042f8:	02010113          	addi	sp,sp,32
    800042fc:	00008067          	ret

0000000080004300 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004300:	ff010113          	addi	sp,sp,-16
    80004304:	00113423          	sd	ra,8(sp)
    80004308:	00813023          	sd	s0,0(sp)
    8000430c:	01010413          	addi	s0,sp,16
    80004310:	00005797          	auipc	a5,0x5
    80004314:	04878793          	addi	a5,a5,72 # 80009358 <_ZTV16ProducerKeyboard+0x10>
    80004318:	00f53023          	sd	a5,0(a0)
    8000431c:	ffffe097          	auipc	ra,0xffffe
    80004320:	284080e7          	jalr	644(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80004324:	00813083          	ld	ra,8(sp)
    80004328:	00013403          	ld	s0,0(sp)
    8000432c:	01010113          	addi	sp,sp,16
    80004330:	00008067          	ret

0000000080004334 <_ZN16ProducerKeyboardD0Ev>:
    80004334:	fe010113          	addi	sp,sp,-32
    80004338:	00113c23          	sd	ra,24(sp)
    8000433c:	00813823          	sd	s0,16(sp)
    80004340:	00913423          	sd	s1,8(sp)
    80004344:	02010413          	addi	s0,sp,32
    80004348:	00050493          	mv	s1,a0
    8000434c:	00005797          	auipc	a5,0x5
    80004350:	00c78793          	addi	a5,a5,12 # 80009358 <_ZTV16ProducerKeyboard+0x10>
    80004354:	00f53023          	sd	a5,0(a0)
    80004358:	ffffe097          	auipc	ra,0xffffe
    8000435c:	248080e7          	jalr	584(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80004360:	00048513          	mv	a0,s1
    80004364:	ffffe097          	auipc	ra,0xffffe
    80004368:	300080e7          	jalr	768(ra) # 80002664 <_ZdlPv>
    8000436c:	01813083          	ld	ra,24(sp)
    80004370:	01013403          	ld	s0,16(sp)
    80004374:	00813483          	ld	s1,8(sp)
    80004378:	02010113          	addi	sp,sp,32
    8000437c:	00008067          	ret

0000000080004380 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004380:	ff010113          	addi	sp,sp,-16
    80004384:	00113423          	sd	ra,8(sp)
    80004388:	00813023          	sd	s0,0(sp)
    8000438c:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004390:	02053583          	ld	a1,32(a0)
    80004394:	fffff097          	auipc	ra,0xfffff
    80004398:	7f4080e7          	jalr	2036(ra) # 80003b88 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    8000439c:	00813083          	ld	ra,8(sp)
    800043a0:	00013403          	ld	s0,0(sp)
    800043a4:	01010113          	addi	sp,sp,16
    800043a8:	00008067          	ret

00000000800043ac <_ZN12ProducerSync3runEv>:
    void run() override {
    800043ac:	ff010113          	addi	sp,sp,-16
    800043b0:	00113423          	sd	ra,8(sp)
    800043b4:	00813023          	sd	s0,0(sp)
    800043b8:	01010413          	addi	s0,sp,16
        producer(td);
    800043bc:	02053583          	ld	a1,32(a0)
    800043c0:	00000097          	auipc	ra,0x0
    800043c4:	884080e7          	jalr	-1916(ra) # 80003c44 <_ZN12ProducerSync8producerEPv>
    }
    800043c8:	00813083          	ld	ra,8(sp)
    800043cc:	00013403          	ld	s0,0(sp)
    800043d0:	01010113          	addi	sp,sp,16
    800043d4:	00008067          	ret

00000000800043d8 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800043d8:	ff010113          	addi	sp,sp,-16
    800043dc:	00113423          	sd	ra,8(sp)
    800043e0:	00813023          	sd	s0,0(sp)
    800043e4:	01010413          	addi	s0,sp,16
        consumer(td);
    800043e8:	02053583          	ld	a1,32(a0)
    800043ec:	00000097          	auipc	ra,0x0
    800043f0:	8e8080e7          	jalr	-1816(ra) # 80003cd4 <_ZN12ConsumerSync8consumerEPv>
    }
    800043f4:	00813083          	ld	ra,8(sp)
    800043f8:	00013403          	ld	s0,0(sp)
    800043fc:	01010113          	addi	sp,sp,16
    80004400:	00008067          	ret

0000000080004404 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80004404:	fe010113          	addi	sp,sp,-32
    80004408:	00113c23          	sd	ra,24(sp)
    8000440c:	00813823          	sd	s0,16(sp)
    80004410:	00913423          	sd	s1,8(sp)
    80004414:	01213023          	sd	s2,0(sp)
    80004418:	02010413          	addi	s0,sp,32
    8000441c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004420:	00000913          	li	s2,0
    while ((key = getc()) != 0x1b) {
    80004424:	ffffe097          	auipc	ra,0xffffe
    80004428:	0d4080e7          	jalr	212(ra) # 800024f8 <_Z4getcv>
    8000442c:	0005059b          	sext.w	a1,a0
    80004430:	01b00793          	li	a5,27
    80004434:	02f58e63          	beq	a1,a5,80004470 <_ZL16producerKeyboardPv+0x6c>
        data->buffer->put(key);
    80004438:	0084b503          	ld	a0,8(s1)
    8000443c:	fffff097          	auipc	ra,0xfffff
    80004440:	954080e7          	jalr	-1708(ra) # 80002d90 <_ZN6Buffer3putEi>
        i++;
    80004444:	0019071b          	addiw	a4,s2,1
    80004448:	0007091b          	sext.w	s2,a4

        if (i % (10 * data->id) == 0) {
    8000444c:	0004a683          	lw	a3,0(s1)
    80004450:	0026979b          	slliw	a5,a3,0x2
    80004454:	00d787bb          	addw	a5,a5,a3
    80004458:	0017979b          	slliw	a5,a5,0x1
    8000445c:	02f767bb          	remw	a5,a4,a5
    80004460:	fc0792e3          	bnez	a5,80004424 <_ZL16producerKeyboardPv+0x20>
            thread_dispatch();
    80004464:	ffffe097          	auipc	ra,0xffffe
    80004468:	e90080e7          	jalr	-368(ra) # 800022f4 <_Z15thread_dispatchv>
    8000446c:	fb9ff06f          	j	80004424 <_ZL16producerKeyboardPv+0x20>
        }
    }

    threadEnd = 1;
    80004470:	00100793          	li	a5,1
    80004474:	00007717          	auipc	a4,0x7
    80004478:	36f72623          	sw	a5,876(a4) # 8000b7e0 <_ZL9threadEnd>
    data->buffer->put('!');
    8000447c:	02100593          	li	a1,33
    80004480:	0084b503          	ld	a0,8(s1)
    80004484:	fffff097          	auipc	ra,0xfffff
    80004488:	90c080e7          	jalr	-1780(ra) # 80002d90 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    8000448c:	0104b503          	ld	a0,16(s1)
    80004490:	ffffe097          	auipc	ra,0xffffe
    80004494:	f70080e7          	jalr	-144(ra) # 80002400 <_Z10sem_signalP4_sem>
}
    80004498:	01813083          	ld	ra,24(sp)
    8000449c:	01013403          	ld	s0,16(sp)
    800044a0:	00813483          	ld	s1,8(sp)
    800044a4:	00013903          	ld	s2,0(sp)
    800044a8:	02010113          	addi	sp,sp,32
    800044ac:	00008067          	ret

00000000800044b0 <_ZL8producerPv>:

static void producer(void *arg) {
    800044b0:	fe010113          	addi	sp,sp,-32
    800044b4:	00113c23          	sd	ra,24(sp)
    800044b8:	00813823          	sd	s0,16(sp)
    800044bc:	00913423          	sd	s1,8(sp)
    800044c0:	01213023          	sd	s2,0(sp)
    800044c4:	02010413          	addi	s0,sp,32
    800044c8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800044cc:	00000913          	li	s2,0
    while (!threadEnd) {
    800044d0:	00007797          	auipc	a5,0x7
    800044d4:	3107a783          	lw	a5,784(a5) # 8000b7e0 <_ZL9threadEnd>
    800044d8:	04079263          	bnez	a5,8000451c <_ZL8producerPv+0x6c>
        data->buffer->put(data->id + '0');
    800044dc:	0004a583          	lw	a1,0(s1)
    800044e0:	0305859b          	addiw	a1,a1,48
    800044e4:	0084b503          	ld	a0,8(s1)
    800044e8:	fffff097          	auipc	ra,0xfffff
    800044ec:	8a8080e7          	jalr	-1880(ra) # 80002d90 <_ZN6Buffer3putEi>
        i++;
    800044f0:	0019071b          	addiw	a4,s2,1
    800044f4:	0007091b          	sext.w	s2,a4

        if (i % (10 * data->id) == 0) {
    800044f8:	0004a683          	lw	a3,0(s1)
    800044fc:	0026979b          	slliw	a5,a3,0x2
    80004500:	00d787bb          	addw	a5,a5,a3
    80004504:	0017979b          	slliw	a5,a5,0x1
    80004508:	02f767bb          	remw	a5,a4,a5
    8000450c:	fc0792e3          	bnez	a5,800044d0 <_ZL8producerPv+0x20>
            thread_dispatch();
    80004510:	ffffe097          	auipc	ra,0xffffe
    80004514:	de4080e7          	jalr	-540(ra) # 800022f4 <_Z15thread_dispatchv>
    80004518:	fb9ff06f          	j	800044d0 <_ZL8producerPv+0x20>
        }
    }

    sem_signal(data->wait);
    8000451c:	0104b503          	ld	a0,16(s1)
    80004520:	ffffe097          	auipc	ra,0xffffe
    80004524:	ee0080e7          	jalr	-288(ra) # 80002400 <_Z10sem_signalP4_sem>
}
    80004528:	01813083          	ld	ra,24(sp)
    8000452c:	01013403          	ld	s0,16(sp)
    80004530:	00813483          	ld	s1,8(sp)
    80004534:	00013903          	ld	s2,0(sp)
    80004538:	02010113          	addi	sp,sp,32
    8000453c:	00008067          	ret

0000000080004540 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80004540:	fd010113          	addi	sp,sp,-48
    80004544:	02113423          	sd	ra,40(sp)
    80004548:	02813023          	sd	s0,32(sp)
    8000454c:	00913c23          	sd	s1,24(sp)
    80004550:	01213823          	sd	s2,16(sp)
    80004554:	01313423          	sd	s3,8(sp)
    80004558:	03010413          	addi	s0,sp,48
    8000455c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004560:	00000993          	li	s3,0
    while (!threadEnd) {
    80004564:	00007797          	auipc	a5,0x7
    80004568:	27c7a783          	lw	a5,636(a5) # 8000b7e0 <_ZL9threadEnd>
    8000456c:	06079c63          	bnez	a5,800045e4 <_ZL8consumerPv+0xa4>
        int key = data->buffer->get();
    80004570:	00893503          	ld	a0,8(s2)
    80004574:	fffff097          	auipc	ra,0xfffff
    80004578:	8ac080e7          	jalr	-1876(ra) # 80002e20 <_ZN6Buffer3getEv>
        i++;
    8000457c:	0019849b          	addiw	s1,s3,1
    80004580:	0004899b          	sext.w	s3,s1

        putc(key);
    80004584:	0ff57513          	andi	a0,a0,255
    80004588:	ffffe097          	auipc	ra,0xffffe
    8000458c:	fc4080e7          	jalr	-60(ra) # 8000254c <_Z4putcc>

        if (i % (5 * data->id) == 0) {
    80004590:	00092703          	lw	a4,0(s2)
    80004594:	0027179b          	slliw	a5,a4,0x2
    80004598:	00e787bb          	addw	a5,a5,a4
    8000459c:	02f4e7bb          	remw	a5,s1,a5
    800045a0:	02078063          	beqz	a5,800045c0 <_ZL8consumerPv+0x80>
            thread_dispatch();
        }

        if (i % 80 == 0) {
    800045a4:	05000793          	li	a5,80
    800045a8:	02f4e4bb          	remw	s1,s1,a5
    800045ac:	fa049ce3          	bnez	s1,80004564 <_ZL8consumerPv+0x24>
            putc('\n');
    800045b0:	00a00513          	li	a0,10
    800045b4:	ffffe097          	auipc	ra,0xffffe
    800045b8:	f98080e7          	jalr	-104(ra) # 8000254c <_Z4putcc>
    800045bc:	fa9ff06f          	j	80004564 <_ZL8consumerPv+0x24>
            thread_dispatch();
    800045c0:	ffffe097          	auipc	ra,0xffffe
    800045c4:	d34080e7          	jalr	-716(ra) # 800022f4 <_Z15thread_dispatchv>
    800045c8:	fddff06f          	j	800045a4 <_ZL8consumerPv+0x64>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800045cc:	00893503          	ld	a0,8(s2)
    800045d0:	fffff097          	auipc	ra,0xfffff
    800045d4:	850080e7          	jalr	-1968(ra) # 80002e20 <_ZN6Buffer3getEv>
        putc(key);
    800045d8:	0ff57513          	andi	a0,a0,255
    800045dc:	ffffe097          	auipc	ra,0xffffe
    800045e0:	f70080e7          	jalr	-144(ra) # 8000254c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800045e4:	00893503          	ld	a0,8(s2)
    800045e8:	fffff097          	auipc	ra,0xfffff
    800045ec:	8c4080e7          	jalr	-1852(ra) # 80002eac <_ZN6Buffer6getCntEv>
    800045f0:	fca04ee3          	bgtz	a0,800045cc <_ZL8consumerPv+0x8c>
    }

    sem_signal(data->wait);
    800045f4:	01093503          	ld	a0,16(s2)
    800045f8:	ffffe097          	auipc	ra,0xffffe
    800045fc:	e08080e7          	jalr	-504(ra) # 80002400 <_Z10sem_signalP4_sem>
}
    80004600:	02813083          	ld	ra,40(sp)
    80004604:	02013403          	ld	s0,32(sp)
    80004608:	01813483          	ld	s1,24(sp)
    8000460c:	01013903          	ld	s2,16(sp)
    80004610:	00813983          	ld	s3,8(sp)
    80004614:	03010113          	addi	sp,sp,48
    80004618:	00008067          	ret

000000008000461c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    8000461c:	f9010113          	addi	sp,sp,-112
    80004620:	06113423          	sd	ra,104(sp)
    80004624:	06813023          	sd	s0,96(sp)
    80004628:	04913c23          	sd	s1,88(sp)
    8000462c:	05213823          	sd	s2,80(sp)
    80004630:	05313423          	sd	s3,72(sp)
    80004634:	05413023          	sd	s4,64(sp)
    80004638:	03513c23          	sd	s5,56(sp)
    8000463c:	03613823          	sd	s6,48(sp)
    80004640:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80004644:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80004648:	00005517          	auipc	a0,0x5
    8000464c:	ba050513          	addi	a0,a0,-1120 # 800091e8 <_ZTV14PeriodicThread+0x48>
    80004650:	00000097          	auipc	ra,0x0
    80004654:	298080e7          	jalr	664(ra) # 800048e8 <_Z11printStringPKc>
    getString(input, 30);
    80004658:	01e00593          	li	a1,30
    8000465c:	fa040513          	addi	a0,s0,-96
    80004660:	00000097          	auipc	ra,0x0
    80004664:	310080e7          	jalr	784(ra) # 80004970 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004668:	fa040513          	addi	a0,s0,-96
    8000466c:	00000097          	auipc	ra,0x0
    80004670:	3dc080e7          	jalr	988(ra) # 80004a48 <_Z11stringToIntPKc>
    80004674:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004678:	00005517          	auipc	a0,0x5
    8000467c:	b9050513          	addi	a0,a0,-1136 # 80009208 <_ZTV14PeriodicThread+0x68>
    80004680:	00000097          	auipc	ra,0x0
    80004684:	268080e7          	jalr	616(ra) # 800048e8 <_Z11printStringPKc>
    getString(input, 30);
    80004688:	01e00593          	li	a1,30
    8000468c:	fa040513          	addi	a0,s0,-96
    80004690:	00000097          	auipc	ra,0x0
    80004694:	2e0080e7          	jalr	736(ra) # 80004970 <_Z9getStringPci>
    n = stringToInt(input);
    80004698:	fa040513          	addi	a0,s0,-96
    8000469c:	00000097          	auipc	ra,0x0
    800046a0:	3ac080e7          	jalr	940(ra) # 80004a48 <_Z11stringToIntPKc>
    800046a4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800046a8:	00005517          	auipc	a0,0x5
    800046ac:	b8050513          	addi	a0,a0,-1152 # 80009228 <_ZTV14PeriodicThread+0x88>
    800046b0:	00000097          	auipc	ra,0x0
    800046b4:	238080e7          	jalr	568(ra) # 800048e8 <_Z11printStringPKc>
    800046b8:	00000613          	li	a2,0
    800046bc:	00a00593          	li	a1,10
    800046c0:	00090513          	mv	a0,s2
    800046c4:	00000097          	auipc	ra,0x0
    800046c8:	3d4080e7          	jalr	980(ra) # 80004a98 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800046cc:	00005517          	auipc	a0,0x5
    800046d0:	b7450513          	addi	a0,a0,-1164 # 80009240 <_ZTV14PeriodicThread+0xa0>
    800046d4:	00000097          	auipc	ra,0x0
    800046d8:	214080e7          	jalr	532(ra) # 800048e8 <_Z11printStringPKc>
    800046dc:	00000613          	li	a2,0
    800046e0:	00a00593          	li	a1,10
    800046e4:	00048513          	mv	a0,s1
    800046e8:	00000097          	auipc	ra,0x0
    800046ec:	3b0080e7          	jalr	944(ra) # 80004a98 <_Z8printIntiii>
    printString(".\n");
    800046f0:	00005517          	auipc	a0,0x5
    800046f4:	b6850513          	addi	a0,a0,-1176 # 80009258 <_ZTV14PeriodicThread+0xb8>
    800046f8:	00000097          	auipc	ra,0x0
    800046fc:	1f0080e7          	jalr	496(ra) # 800048e8 <_Z11printStringPKc>
    if(threadNum > n) {
    80004700:	0324c463          	blt	s1,s2,80004728 <_Z22producerConsumer_C_APIv+0x10c>
    } else if (threadNum < 1) {
    80004704:	03205c63          	blez	s2,8000473c <_Z22producerConsumer_C_APIv+0x120>
    Buffer *buffer = new Buffer(n);
    80004708:	03800513          	li	a0,56
    8000470c:	ffffe097          	auipc	ra,0xffffe
    80004710:	f30080e7          	jalr	-208(ra) # 8000263c <_Znwm>
    80004714:	00050a13          	mv	s4,a0
    80004718:	00048593          	mv	a1,s1
    8000471c:	ffffe097          	auipc	ra,0xffffe
    80004720:	5d8080e7          	jalr	1496(ra) # 80002cf4 <_ZN6BufferC1Ei>
    80004724:	0300006f          	j	80004754 <_Z22producerConsumer_C_APIv+0x138>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004728:	00005517          	auipc	a0,0x5
    8000472c:	b3850513          	addi	a0,a0,-1224 # 80009260 <_ZTV14PeriodicThread+0xc0>
    80004730:	00000097          	auipc	ra,0x0
    80004734:	1b8080e7          	jalr	440(ra) # 800048e8 <_Z11printStringPKc>
        return;
    80004738:	0140006f          	j	8000474c <_Z22producerConsumer_C_APIv+0x130>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000473c:	00005517          	auipc	a0,0x5
    80004740:	b6450513          	addi	a0,a0,-1180 # 800092a0 <_ZTV14PeriodicThread+0x100>
    80004744:	00000097          	auipc	ra,0x0
    80004748:	1a4080e7          	jalr	420(ra) # 800048e8 <_Z11printStringPKc>
        return;
    8000474c:	000b0113          	mv	sp,s6
    80004750:	1500006f          	j	800048a0 <_Z22producerConsumer_C_APIv+0x284>
    sem_open(&waitForAll, 0);
    80004754:	00000593          	li	a1,0
    80004758:	00007517          	auipc	a0,0x7
    8000475c:	09050513          	addi	a0,a0,144 # 8000b7e8 <_ZL10waitForAll>
    80004760:	ffffe097          	auipc	ra,0xffffe
    80004764:	bec080e7          	jalr	-1044(ra) # 8000234c <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80004768:	00391793          	slli	a5,s2,0x3
    8000476c:	00f78793          	addi	a5,a5,15
    80004770:	ff07f793          	andi	a5,a5,-16
    80004774:	40f10133          	sub	sp,sp,a5
    80004778:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    8000477c:	0019071b          	addiw	a4,s2,1
    80004780:	00171793          	slli	a5,a4,0x1
    80004784:	00e787b3          	add	a5,a5,a4
    80004788:	00379793          	slli	a5,a5,0x3
    8000478c:	00f78793          	addi	a5,a5,15
    80004790:	ff07f793          	andi	a5,a5,-16
    80004794:	40f10133          	sub	sp,sp,a5
    80004798:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    8000479c:	00191613          	slli	a2,s2,0x1
    800047a0:	012607b3          	add	a5,a2,s2
    800047a4:	00379793          	slli	a5,a5,0x3
    800047a8:	00f987b3          	add	a5,s3,a5
    800047ac:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800047b0:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800047b4:	00007717          	auipc	a4,0x7
    800047b8:	03473703          	ld	a4,52(a4) # 8000b7e8 <_ZL10waitForAll>
    800047bc:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800047c0:	00078613          	mv	a2,a5
    800047c4:	00000597          	auipc	a1,0x0
    800047c8:	d7c58593          	addi	a1,a1,-644 # 80004540 <_ZL8consumerPv>
    800047cc:	f9840513          	addi	a0,s0,-104
    800047d0:	ffffe097          	auipc	ra,0xffffe
    800047d4:	a98080e7          	jalr	-1384(ra) # 80002268 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800047d8:	00000493          	li	s1,0
    800047dc:	0280006f          	j	80004804 <_Z22producerConsumer_C_APIv+0x1e8>
        thread_create(threads + i,
    800047e0:	00000597          	auipc	a1,0x0
    800047e4:	c2458593          	addi	a1,a1,-988 # 80004404 <_ZL16producerKeyboardPv>
                      data + i);
    800047e8:	00179613          	slli	a2,a5,0x1
    800047ec:	00f60633          	add	a2,a2,a5
    800047f0:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800047f4:	00c98633          	add	a2,s3,a2
    800047f8:	ffffe097          	auipc	ra,0xffffe
    800047fc:	a70080e7          	jalr	-1424(ra) # 80002268 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80004800:	0014849b          	addiw	s1,s1,1
    80004804:	0524d263          	bge	s1,s2,80004848 <_Z22producerConsumer_C_APIv+0x22c>
        data[i].id = i;
    80004808:	00149793          	slli	a5,s1,0x1
    8000480c:	009787b3          	add	a5,a5,s1
    80004810:	00379793          	slli	a5,a5,0x3
    80004814:	00f987b3          	add	a5,s3,a5
    80004818:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000481c:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80004820:	00007717          	auipc	a4,0x7
    80004824:	fc873703          	ld	a4,-56(a4) # 8000b7e8 <_ZL10waitForAll>
    80004828:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    8000482c:	00048793          	mv	a5,s1
    80004830:	00349513          	slli	a0,s1,0x3
    80004834:	00aa8533          	add	a0,s5,a0
    80004838:	fa9054e3          	blez	s1,800047e0 <_Z22producerConsumer_C_APIv+0x1c4>
    8000483c:	00000597          	auipc	a1,0x0
    80004840:	c7458593          	addi	a1,a1,-908 # 800044b0 <_ZL8producerPv>
    80004844:	fa5ff06f          	j	800047e8 <_Z22producerConsumer_C_APIv+0x1cc>
    thread_dispatch();
    80004848:	ffffe097          	auipc	ra,0xffffe
    8000484c:	aac080e7          	jalr	-1364(ra) # 800022f4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80004850:	00000493          	li	s1,0
    80004854:	0180006f          	j	8000486c <_Z22producerConsumer_C_APIv+0x250>
        sem_wait(waitForAll);
    80004858:	00007517          	auipc	a0,0x7
    8000485c:	f9053503          	ld	a0,-112(a0) # 8000b7e8 <_ZL10waitForAll>
    80004860:	ffffe097          	auipc	ra,0xffffe
    80004864:	b68080e7          	jalr	-1176(ra) # 800023c8 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80004868:	0014849b          	addiw	s1,s1,1
    8000486c:	fe9956e3          	bge	s2,s1,80004858 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80004870:	00007517          	auipc	a0,0x7
    80004874:	f7853503          	ld	a0,-136(a0) # 8000b7e8 <_ZL10waitForAll>
    80004878:	ffffe097          	auipc	ra,0xffffe
    8000487c:	b18080e7          	jalr	-1256(ra) # 80002390 <_Z9sem_closeP4_sem>
    delete buffer;
    80004880:	000a0e63          	beqz	s4,8000489c <_Z22producerConsumer_C_APIv+0x280>
    80004884:	000a0513          	mv	a0,s4
    80004888:	ffffe097          	auipc	ra,0xffffe
    8000488c:	6ac080e7          	jalr	1708(ra) # 80002f34 <_ZN6BufferD1Ev>
    80004890:	000a0513          	mv	a0,s4
    80004894:	ffffe097          	auipc	ra,0xffffe
    80004898:	dd0080e7          	jalr	-560(ra) # 80002664 <_ZdlPv>
    8000489c:	000b0113          	mv	sp,s6

}
    800048a0:	f9040113          	addi	sp,s0,-112
    800048a4:	06813083          	ld	ra,104(sp)
    800048a8:	06013403          	ld	s0,96(sp)
    800048ac:	05813483          	ld	s1,88(sp)
    800048b0:	05013903          	ld	s2,80(sp)
    800048b4:	04813983          	ld	s3,72(sp)
    800048b8:	04013a03          	ld	s4,64(sp)
    800048bc:	03813a83          	ld	s5,56(sp)
    800048c0:	03013b03          	ld	s6,48(sp)
    800048c4:	07010113          	addi	sp,sp,112
    800048c8:	00008067          	ret
    Buffer *buffer = new Buffer(n);
    800048cc:	00050493          	mv	s1,a0
    800048d0:	000a0513          	mv	a0,s4
    800048d4:	ffffe097          	auipc	ra,0xffffe
    800048d8:	d90080e7          	jalr	-624(ra) # 80002664 <_ZdlPv>
    800048dc:	00048513          	mv	a0,s1
    800048e0:	00008097          	auipc	ra,0x8
    800048e4:	028080e7          	jalr	40(ra) # 8000c908 <_Unwind_Resume>

00000000800048e8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800048e8:	fe010113          	addi	sp,sp,-32
    800048ec:	00113c23          	sd	ra,24(sp)
    800048f0:	00813823          	sd	s0,16(sp)
    800048f4:	00913423          	sd	s1,8(sp)
    800048f8:	02010413          	addi	s0,sp,32
    800048fc:	00050493          	mv	s1,a0
    80004900:	00c0006f          	j	8000490c <_Z11printStringPKc+0x24>
    LOCK();
    80004904:	ffffe097          	auipc	ra,0xffffe
    80004908:	9f0080e7          	jalr	-1552(ra) # 800022f4 <_Z15thread_dispatchv>
    8000490c:	00100613          	li	a2,1
    80004910:	00000593          	li	a1,0
    80004914:	00007517          	auipc	a0,0x7
    80004918:	edc50513          	addi	a0,a0,-292 # 8000b7f0 <lockPrint>
    8000491c:	ffffd097          	auipc	ra,0xffffd
    80004920:	808080e7          	jalr	-2040(ra) # 80001124 <copy_and_swap>
    80004924:	fe0510e3          	bnez	a0,80004904 <_Z11printStringPKc+0x1c>
    80004928:	0100006f          	j	80004938 <_Z11printStringPKc+0x50>
    while (*string != '\0')
    {
        putc(*string);
    8000492c:	ffffe097          	auipc	ra,0xffffe
    80004930:	c20080e7          	jalr	-992(ra) # 8000254c <_Z4putcc>
        string++;
    80004934:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004938:	0004c503          	lbu	a0,0(s1)
    8000493c:	fe0518e3          	bnez	a0,8000492c <_Z11printStringPKc+0x44>
    }
    UNLOCK();
    80004940:	00000613          	li	a2,0
    80004944:	00100593          	li	a1,1
    80004948:	00007517          	auipc	a0,0x7
    8000494c:	ea850513          	addi	a0,a0,-344 # 8000b7f0 <lockPrint>
    80004950:	ffffc097          	auipc	ra,0xffffc
    80004954:	7d4080e7          	jalr	2004(ra) # 80001124 <copy_and_swap>
    80004958:	fe0514e3          	bnez	a0,80004940 <_Z11printStringPKc+0x58>
}
    8000495c:	01813083          	ld	ra,24(sp)
    80004960:	01013403          	ld	s0,16(sp)
    80004964:	00813483          	ld	s1,8(sp)
    80004968:	02010113          	addi	sp,sp,32
    8000496c:	00008067          	ret

0000000080004970 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004970:	fd010113          	addi	sp,sp,-48
    80004974:	02113423          	sd	ra,40(sp)
    80004978:	02813023          	sd	s0,32(sp)
    8000497c:	00913c23          	sd	s1,24(sp)
    80004980:	01213823          	sd	s2,16(sp)
    80004984:	01313423          	sd	s3,8(sp)
    80004988:	01413023          	sd	s4,0(sp)
    8000498c:	03010413          	addi	s0,sp,48
    80004990:	00050993          	mv	s3,a0
    80004994:	00058a13          	mv	s4,a1
    LOCK();
    80004998:	00100613          	li	a2,1
    8000499c:	00000593          	li	a1,0
    800049a0:	00007517          	auipc	a0,0x7
    800049a4:	e5050513          	addi	a0,a0,-432 # 8000b7f0 <lockPrint>
    800049a8:	ffffc097          	auipc	ra,0xffffc
    800049ac:	77c080e7          	jalr	1916(ra) # 80001124 <copy_and_swap>
    800049b0:	00050863          	beqz	a0,800049c0 <_Z9getStringPci+0x50>
    800049b4:	ffffe097          	auipc	ra,0xffffe
    800049b8:	940080e7          	jalr	-1728(ra) # 800022f4 <_Z15thread_dispatchv>
    800049bc:	fddff06f          	j	80004998 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800049c0:	00000913          	li	s2,0
    800049c4:	00090493          	mv	s1,s2
    800049c8:	0019091b          	addiw	s2,s2,1
    800049cc:	03495a63          	bge	s2,s4,80004a00 <_Z9getStringPci+0x90>
        cc = getc();
    800049d0:	ffffe097          	auipc	ra,0xffffe
    800049d4:	b28080e7          	jalr	-1240(ra) # 800024f8 <_Z4getcv>
        if(cc < 1)
    800049d8:	02050463          	beqz	a0,80004a00 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800049dc:	009984b3          	add	s1,s3,s1
    800049e0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800049e4:	00a00793          	li	a5,10
    800049e8:	00f50a63          	beq	a0,a5,800049fc <_Z9getStringPci+0x8c>
    800049ec:	00d00793          	li	a5,13
    800049f0:	fcf51ae3          	bne	a0,a5,800049c4 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800049f4:	00090493          	mv	s1,s2
    800049f8:	0080006f          	j	80004a00 <_Z9getStringPci+0x90>
    800049fc:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004a00:	009984b3          	add	s1,s3,s1
    80004a04:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004a08:	00000613          	li	a2,0
    80004a0c:	00100593          	li	a1,1
    80004a10:	00007517          	auipc	a0,0x7
    80004a14:	de050513          	addi	a0,a0,-544 # 8000b7f0 <lockPrint>
    80004a18:	ffffc097          	auipc	ra,0xffffc
    80004a1c:	70c080e7          	jalr	1804(ra) # 80001124 <copy_and_swap>
    80004a20:	fe0514e3          	bnez	a0,80004a08 <_Z9getStringPci+0x98>
    return buf;
}
    80004a24:	00098513          	mv	a0,s3
    80004a28:	02813083          	ld	ra,40(sp)
    80004a2c:	02013403          	ld	s0,32(sp)
    80004a30:	01813483          	ld	s1,24(sp)
    80004a34:	01013903          	ld	s2,16(sp)
    80004a38:	00813983          	ld	s3,8(sp)
    80004a3c:	00013a03          	ld	s4,0(sp)
    80004a40:	03010113          	addi	sp,sp,48
    80004a44:	00008067          	ret

0000000080004a48 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004a48:	ff010113          	addi	sp,sp,-16
    80004a4c:	00813423          	sd	s0,8(sp)
    80004a50:	01010413          	addi	s0,sp,16
    80004a54:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004a58:	00000513          	li	a0,0
    80004a5c:	01c0006f          	j	80004a78 <_Z11stringToIntPKc+0x30>
    while ('0' <= *s && *s <= '9')
        n = n * 10 + *s++ - '0';
    80004a60:	0025179b          	slliw	a5,a0,0x2
    80004a64:	00a787bb          	addw	a5,a5,a0
    80004a68:	0017979b          	slliw	a5,a5,0x1
    80004a6c:	00168693          	addi	a3,a3,1
    80004a70:	00c787bb          	addw	a5,a5,a2
    80004a74:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004a78:	0006c603          	lbu	a2,0(a3)
    80004a7c:	fd06071b          	addiw	a4,a2,-48
    80004a80:	0ff77713          	andi	a4,a4,255
    80004a84:	00900793          	li	a5,9
    80004a88:	fce7fce3          	bgeu	a5,a4,80004a60 <_Z11stringToIntPKc+0x18>
    return n;
}
    80004a8c:	00813403          	ld	s0,8(sp)
    80004a90:	01010113          	addi	sp,sp,16
    80004a94:	00008067          	ret

0000000080004a98 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004a98:	fc010113          	addi	sp,sp,-64
    80004a9c:	02113c23          	sd	ra,56(sp)
    80004aa0:	02813823          	sd	s0,48(sp)
    80004aa4:	02913423          	sd	s1,40(sp)
    80004aa8:	03213023          	sd	s2,32(sp)
    80004aac:	01313c23          	sd	s3,24(sp)
    80004ab0:	04010413          	addi	s0,sp,64
    80004ab4:	00050493          	mv	s1,a0
    80004ab8:	00058913          	mv	s2,a1
    80004abc:	00060993          	mv	s3,a2
    80004ac0:	00c0006f          	j	80004acc <_Z8printIntiii+0x34>
    LOCK();
    80004ac4:	ffffe097          	auipc	ra,0xffffe
    80004ac8:	830080e7          	jalr	-2000(ra) # 800022f4 <_Z15thread_dispatchv>
    80004acc:	00100613          	li	a2,1
    80004ad0:	00000593          	li	a1,0
    80004ad4:	00007517          	auipc	a0,0x7
    80004ad8:	d1c50513          	addi	a0,a0,-740 # 8000b7f0 <lockPrint>
    80004adc:	ffffc097          	auipc	ra,0xffffc
    80004ae0:	648080e7          	jalr	1608(ra) # 80001124 <copy_and_swap>
    80004ae4:	fe0510e3          	bnez	a0,80004ac4 <_Z8printIntiii+0x2c>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004ae8:	00098463          	beqz	s3,80004af0 <_Z8printIntiii+0x58>
    80004aec:	0604c663          	bltz	s1,80004b58 <_Z8printIntiii+0xc0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004af0:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004af4:	00000593          	li	a1,0
    }

    i = 0;
    80004af8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004afc:	0009079b          	sext.w	a5,s2
    80004b00:	0325773b          	remuw	a4,a0,s2
    80004b04:	00048613          	mv	a2,s1
    80004b08:	0014849b          	addiw	s1,s1,1
    80004b0c:	02071693          	slli	a3,a4,0x20
    80004b10:	0206d693          	srli	a3,a3,0x20
    80004b14:	00007717          	auipc	a4,0x7
    80004b18:	83c70713          	addi	a4,a4,-1988 # 8000b350 <digits>
    80004b1c:	00d70733          	add	a4,a4,a3
    80004b20:	00074683          	lbu	a3,0(a4)
    80004b24:	fd040713          	addi	a4,s0,-48
    80004b28:	00c70733          	add	a4,a4,a2
    80004b2c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004b30:	0005071b          	sext.w	a4,a0
    80004b34:	0325553b          	divuw	a0,a0,s2
    80004b38:	fcf772e3          	bgeu	a4,a5,80004afc <_Z8printIntiii+0x64>
    if(neg)
    80004b3c:	02058e63          	beqz	a1,80004b78 <_Z8printIntiii+0xe0>
        buf[i++] = '-';
    80004b40:	fd040793          	addi	a5,s0,-48
    80004b44:	009784b3          	add	s1,a5,s1
    80004b48:	02d00793          	li	a5,45
    80004b4c:	fef48823          	sb	a5,-16(s1)
    80004b50:	0026049b          	addiw	s1,a2,2
    80004b54:	0240006f          	j	80004b78 <_Z8printIntiii+0xe0>
        x = -xx;
    80004b58:	4090053b          	negw	a0,s1
        neg = 1;
    80004b5c:	00100593          	li	a1,1
        x = -xx;
    80004b60:	f99ff06f          	j	80004af8 <_Z8printIntiii+0x60>

    while(--i >= 0)
        putc(buf[i]);
    80004b64:	fd040793          	addi	a5,s0,-48
    80004b68:	009787b3          	add	a5,a5,s1
    80004b6c:	ff07c503          	lbu	a0,-16(a5)
    80004b70:	ffffe097          	auipc	ra,0xffffe
    80004b74:	9dc080e7          	jalr	-1572(ra) # 8000254c <_Z4putcc>
    while(--i >= 0)
    80004b78:	fff4849b          	addiw	s1,s1,-1
    80004b7c:	fe04d4e3          	bgez	s1,80004b64 <_Z8printIntiii+0xcc>

    UNLOCK();
    80004b80:	00000613          	li	a2,0
    80004b84:	00100593          	li	a1,1
    80004b88:	00007517          	auipc	a0,0x7
    80004b8c:	c6850513          	addi	a0,a0,-920 # 8000b7f0 <lockPrint>
    80004b90:	ffffc097          	auipc	ra,0xffffc
    80004b94:	594080e7          	jalr	1428(ra) # 80001124 <copy_and_swap>
    80004b98:	fe0514e3          	bnez	a0,80004b80 <_Z8printIntiii+0xe8>
    80004b9c:	03813083          	ld	ra,56(sp)
    80004ba0:	03013403          	ld	s0,48(sp)
    80004ba4:	02813483          	ld	s1,40(sp)
    80004ba8:	02013903          	ld	s2,32(sp)
    80004bac:	01813983          	ld	s3,24(sp)
    80004bb0:	04010113          	addi	sp,sp,64
    80004bb4:	00008067          	ret

0000000080004bb8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004bb8:	fe010113          	addi	sp,sp,-32
    80004bbc:	00113c23          	sd	ra,24(sp)
    80004bc0:	00813823          	sd	s0,16(sp)
    80004bc4:	00913423          	sd	s1,8(sp)
    80004bc8:	01213023          	sd	s2,0(sp)
    80004bcc:	02010413          	addi	s0,sp,32
    80004bd0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004bd4:	00100793          	li	a5,1
    80004bd8:	02a7f863          	bgeu	a5,a0,80004c08 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004bdc:	00a00793          	li	a5,10
    80004be0:	02f577b3          	remu	a5,a0,a5
    80004be4:	02078e63          	beqz	a5,80004c20 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004be8:	fff48513          	addi	a0,s1,-1
    80004bec:	00000097          	auipc	ra,0x0
    80004bf0:	fcc080e7          	jalr	-52(ra) # 80004bb8 <_ZL9fibonaccim>
    80004bf4:	00050913          	mv	s2,a0
    80004bf8:	ffe48513          	addi	a0,s1,-2
    80004bfc:	00000097          	auipc	ra,0x0
    80004c00:	fbc080e7          	jalr	-68(ra) # 80004bb8 <_ZL9fibonaccim>
    80004c04:	00a90533          	add	a0,s2,a0
}
    80004c08:	01813083          	ld	ra,24(sp)
    80004c0c:	01013403          	ld	s0,16(sp)
    80004c10:	00813483          	ld	s1,8(sp)
    80004c14:	00013903          	ld	s2,0(sp)
    80004c18:	02010113          	addi	sp,sp,32
    80004c1c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004c20:	ffffd097          	auipc	ra,0xffffd
    80004c24:	6d4080e7          	jalr	1748(ra) # 800022f4 <_Z15thread_dispatchv>
    80004c28:	fc1ff06f          	j	80004be8 <_ZL9fibonaccim+0x30>

0000000080004c2c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004c2c:	fe010113          	addi	sp,sp,-32
    80004c30:	00113c23          	sd	ra,24(sp)
    80004c34:	00813823          	sd	s0,16(sp)
    80004c38:	00913423          	sd	s1,8(sp)
    80004c3c:	01213023          	sd	s2,0(sp)
    80004c40:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004c44:	00a00493          	li	s1,10
    80004c48:	0400006f          	j	80004c88 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004c4c:	00004517          	auipc	a0,0x4
    80004c50:	77450513          	addi	a0,a0,1908 # 800093c0 <_ZTV12ConsumerSync+0x28>
    80004c54:	00000097          	auipc	ra,0x0
    80004c58:	c94080e7          	jalr	-876(ra) # 800048e8 <_Z11printStringPKc>
    80004c5c:	00000613          	li	a2,0
    80004c60:	00a00593          	li	a1,10
    80004c64:	00048513          	mv	a0,s1
    80004c68:	00000097          	auipc	ra,0x0
    80004c6c:	e30080e7          	jalr	-464(ra) # 80004a98 <_Z8printIntiii>
    80004c70:	00005517          	auipc	a0,0x5
    80004c74:	a3850513          	addi	a0,a0,-1480 # 800096a8 <_ZTV7WorkerD+0x168>
    80004c78:	00000097          	auipc	ra,0x0
    80004c7c:	c70080e7          	jalr	-912(ra) # 800048e8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004c80:	0014849b          	addiw	s1,s1,1
    80004c84:	0ff4f493          	andi	s1,s1,255
    80004c88:	00c00793          	li	a5,12
    80004c8c:	fc97f0e3          	bgeu	a5,s1,80004c4c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004c90:	00004517          	auipc	a0,0x4
    80004c94:	73850513          	addi	a0,a0,1848 # 800093c8 <_ZTV12ConsumerSync+0x30>
    80004c98:	00000097          	auipc	ra,0x0
    80004c9c:	c50080e7          	jalr	-944(ra) # 800048e8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004ca0:	00500313          	li	t1,5
    thread_dispatch();
    80004ca4:	ffffd097          	auipc	ra,0xffffd
    80004ca8:	650080e7          	jalr	1616(ra) # 800022f4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004cac:	01000513          	li	a0,16
    80004cb0:	00000097          	auipc	ra,0x0
    80004cb4:	f08080e7          	jalr	-248(ra) # 80004bb8 <_ZL9fibonaccim>
    80004cb8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004cbc:	00004517          	auipc	a0,0x4
    80004cc0:	71c50513          	addi	a0,a0,1820 # 800093d8 <_ZTV12ConsumerSync+0x40>
    80004cc4:	00000097          	auipc	ra,0x0
    80004cc8:	c24080e7          	jalr	-988(ra) # 800048e8 <_Z11printStringPKc>
    80004ccc:	00000613          	li	a2,0
    80004cd0:	00a00593          	li	a1,10
    80004cd4:	0009051b          	sext.w	a0,s2
    80004cd8:	00000097          	auipc	ra,0x0
    80004cdc:	dc0080e7          	jalr	-576(ra) # 80004a98 <_Z8printIntiii>
    80004ce0:	00005517          	auipc	a0,0x5
    80004ce4:	9c850513          	addi	a0,a0,-1592 # 800096a8 <_ZTV7WorkerD+0x168>
    80004ce8:	00000097          	auipc	ra,0x0
    80004cec:	c00080e7          	jalr	-1024(ra) # 800048e8 <_Z11printStringPKc>
    80004cf0:	0400006f          	j	80004d30 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004cf4:	00004517          	auipc	a0,0x4
    80004cf8:	6cc50513          	addi	a0,a0,1740 # 800093c0 <_ZTV12ConsumerSync+0x28>
    80004cfc:	00000097          	auipc	ra,0x0
    80004d00:	bec080e7          	jalr	-1044(ra) # 800048e8 <_Z11printStringPKc>
    80004d04:	00000613          	li	a2,0
    80004d08:	00a00593          	li	a1,10
    80004d0c:	00048513          	mv	a0,s1
    80004d10:	00000097          	auipc	ra,0x0
    80004d14:	d88080e7          	jalr	-632(ra) # 80004a98 <_Z8printIntiii>
    80004d18:	00005517          	auipc	a0,0x5
    80004d1c:	99050513          	addi	a0,a0,-1648 # 800096a8 <_ZTV7WorkerD+0x168>
    80004d20:	00000097          	auipc	ra,0x0
    80004d24:	bc8080e7          	jalr	-1080(ra) # 800048e8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004d28:	0014849b          	addiw	s1,s1,1
    80004d2c:	0ff4f493          	andi	s1,s1,255
    80004d30:	00f00793          	li	a5,15
    80004d34:	fc97f0e3          	bgeu	a5,s1,80004cf4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004d38:	00004517          	auipc	a0,0x4
    80004d3c:	6b050513          	addi	a0,a0,1712 # 800093e8 <_ZTV12ConsumerSync+0x50>
    80004d40:	00000097          	auipc	ra,0x0
    80004d44:	ba8080e7          	jalr	-1112(ra) # 800048e8 <_Z11printStringPKc>
    finishedD = true;
    80004d48:	00100793          	li	a5,1
    80004d4c:	00007717          	auipc	a4,0x7
    80004d50:	aaf70623          	sb	a5,-1364(a4) # 8000b7f8 <_ZL9finishedD>
    thread_dispatch();
    80004d54:	ffffd097          	auipc	ra,0xffffd
    80004d58:	5a0080e7          	jalr	1440(ra) # 800022f4 <_Z15thread_dispatchv>
}
    80004d5c:	01813083          	ld	ra,24(sp)
    80004d60:	01013403          	ld	s0,16(sp)
    80004d64:	00813483          	ld	s1,8(sp)
    80004d68:	00013903          	ld	s2,0(sp)
    80004d6c:	02010113          	addi	sp,sp,32
    80004d70:	00008067          	ret

0000000080004d74 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004d74:	fe010113          	addi	sp,sp,-32
    80004d78:	00113c23          	sd	ra,24(sp)
    80004d7c:	00813823          	sd	s0,16(sp)
    80004d80:	00913423          	sd	s1,8(sp)
    80004d84:	01213023          	sd	s2,0(sp)
    80004d88:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004d8c:	00000493          	li	s1,0
    80004d90:	0400006f          	j	80004dd0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004d94:	00004517          	auipc	a0,0x4
    80004d98:	66450513          	addi	a0,a0,1636 # 800093f8 <_ZTV12ConsumerSync+0x60>
    80004d9c:	00000097          	auipc	ra,0x0
    80004da0:	b4c080e7          	jalr	-1204(ra) # 800048e8 <_Z11printStringPKc>
    80004da4:	00000613          	li	a2,0
    80004da8:	00a00593          	li	a1,10
    80004dac:	00048513          	mv	a0,s1
    80004db0:	00000097          	auipc	ra,0x0
    80004db4:	ce8080e7          	jalr	-792(ra) # 80004a98 <_Z8printIntiii>
    80004db8:	00005517          	auipc	a0,0x5
    80004dbc:	8f050513          	addi	a0,a0,-1808 # 800096a8 <_ZTV7WorkerD+0x168>
    80004dc0:	00000097          	auipc	ra,0x0
    80004dc4:	b28080e7          	jalr	-1240(ra) # 800048e8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004dc8:	0014849b          	addiw	s1,s1,1
    80004dcc:	0ff4f493          	andi	s1,s1,255
    80004dd0:	00200793          	li	a5,2
    80004dd4:	fc97f0e3          	bgeu	a5,s1,80004d94 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004dd8:	00004517          	auipc	a0,0x4
    80004ddc:	62850513          	addi	a0,a0,1576 # 80009400 <_ZTV12ConsumerSync+0x68>
    80004de0:	00000097          	auipc	ra,0x0
    80004de4:	b08080e7          	jalr	-1272(ra) # 800048e8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004de8:	00700313          	li	t1,7
    thread_dispatch();
    80004dec:	ffffd097          	auipc	ra,0xffffd
    80004df0:	508080e7          	jalr	1288(ra) # 800022f4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004df4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004df8:	00004517          	auipc	a0,0x4
    80004dfc:	61850513          	addi	a0,a0,1560 # 80009410 <_ZTV12ConsumerSync+0x78>
    80004e00:	00000097          	auipc	ra,0x0
    80004e04:	ae8080e7          	jalr	-1304(ra) # 800048e8 <_Z11printStringPKc>
    80004e08:	00000613          	li	a2,0
    80004e0c:	00a00593          	li	a1,10
    80004e10:	0009051b          	sext.w	a0,s2
    80004e14:	00000097          	auipc	ra,0x0
    80004e18:	c84080e7          	jalr	-892(ra) # 80004a98 <_Z8printIntiii>
    80004e1c:	00005517          	auipc	a0,0x5
    80004e20:	88c50513          	addi	a0,a0,-1908 # 800096a8 <_ZTV7WorkerD+0x168>
    80004e24:	00000097          	auipc	ra,0x0
    80004e28:	ac4080e7          	jalr	-1340(ra) # 800048e8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004e2c:	00c00513          	li	a0,12
    80004e30:	00000097          	auipc	ra,0x0
    80004e34:	d88080e7          	jalr	-632(ra) # 80004bb8 <_ZL9fibonaccim>
    80004e38:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004e3c:	00004517          	auipc	a0,0x4
    80004e40:	5dc50513          	addi	a0,a0,1500 # 80009418 <_ZTV12ConsumerSync+0x80>
    80004e44:	00000097          	auipc	ra,0x0
    80004e48:	aa4080e7          	jalr	-1372(ra) # 800048e8 <_Z11printStringPKc>
    80004e4c:	00000613          	li	a2,0
    80004e50:	00a00593          	li	a1,10
    80004e54:	0009051b          	sext.w	a0,s2
    80004e58:	00000097          	auipc	ra,0x0
    80004e5c:	c40080e7          	jalr	-960(ra) # 80004a98 <_Z8printIntiii>
    80004e60:	00005517          	auipc	a0,0x5
    80004e64:	84850513          	addi	a0,a0,-1976 # 800096a8 <_ZTV7WorkerD+0x168>
    80004e68:	00000097          	auipc	ra,0x0
    80004e6c:	a80080e7          	jalr	-1408(ra) # 800048e8 <_Z11printStringPKc>
    80004e70:	0400006f          	j	80004eb0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004e74:	00004517          	auipc	a0,0x4
    80004e78:	58450513          	addi	a0,a0,1412 # 800093f8 <_ZTV12ConsumerSync+0x60>
    80004e7c:	00000097          	auipc	ra,0x0
    80004e80:	a6c080e7          	jalr	-1428(ra) # 800048e8 <_Z11printStringPKc>
    80004e84:	00000613          	li	a2,0
    80004e88:	00a00593          	li	a1,10
    80004e8c:	00048513          	mv	a0,s1
    80004e90:	00000097          	auipc	ra,0x0
    80004e94:	c08080e7          	jalr	-1016(ra) # 80004a98 <_Z8printIntiii>
    80004e98:	00005517          	auipc	a0,0x5
    80004e9c:	81050513          	addi	a0,a0,-2032 # 800096a8 <_ZTV7WorkerD+0x168>
    80004ea0:	00000097          	auipc	ra,0x0
    80004ea4:	a48080e7          	jalr	-1464(ra) # 800048e8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004ea8:	0014849b          	addiw	s1,s1,1
    80004eac:	0ff4f493          	andi	s1,s1,255
    80004eb0:	00500793          	li	a5,5
    80004eb4:	fc97f0e3          	bgeu	a5,s1,80004e74 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004eb8:	00004517          	auipc	a0,0x4
    80004ebc:	57050513          	addi	a0,a0,1392 # 80009428 <_ZTV12ConsumerSync+0x90>
    80004ec0:	00000097          	auipc	ra,0x0
    80004ec4:	a28080e7          	jalr	-1496(ra) # 800048e8 <_Z11printStringPKc>
    finishedC = true;
    80004ec8:	00100793          	li	a5,1
    80004ecc:	00007717          	auipc	a4,0x7
    80004ed0:	92f706a3          	sb	a5,-1747(a4) # 8000b7f9 <_ZL9finishedC>
    thread_dispatch();
    80004ed4:	ffffd097          	auipc	ra,0xffffd
    80004ed8:	420080e7          	jalr	1056(ra) # 800022f4 <_Z15thread_dispatchv>
}
    80004edc:	01813083          	ld	ra,24(sp)
    80004ee0:	01013403          	ld	s0,16(sp)
    80004ee4:	00813483          	ld	s1,8(sp)
    80004ee8:	00013903          	ld	s2,0(sp)
    80004eec:	02010113          	addi	sp,sp,32
    80004ef0:	00008067          	ret

0000000080004ef4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004ef4:	fe010113          	addi	sp,sp,-32
    80004ef8:	00113c23          	sd	ra,24(sp)
    80004efc:	00813823          	sd	s0,16(sp)
    80004f00:	00913423          	sd	s1,8(sp)
    80004f04:	01213023          	sd	s2,0(sp)
    80004f08:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004f0c:	00000913          	li	s2,0
    80004f10:	0400006f          	j	80004f50 <_ZL11workerBodyBPv+0x5c>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004f14:	00170713          	addi	a4,a4,1
    80004f18:	000077b7          	lui	a5,0x7
    80004f1c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004f20:	fee7fae3          	bgeu	a5,a4,80004f14 <_ZL11workerBodyBPv+0x20>
            thread_dispatch();
    80004f24:	ffffd097          	auipc	ra,0xffffd
    80004f28:	3d0080e7          	jalr	976(ra) # 800022f4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004f2c:	00148493          	addi	s1,s1,1
    80004f30:	000027b7          	lui	a5,0x2
    80004f34:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004f38:	0097e663          	bltu	a5,s1,80004f44 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004f3c:	00000713          	li	a4,0
    80004f40:	fd9ff06f          	j	80004f18 <_ZL11workerBodyBPv+0x24>
        if (i == 10) {
    80004f44:	00a00793          	li	a5,10
    80004f48:	04f90663          	beq	s2,a5,80004f94 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80004f4c:	00190913          	addi	s2,s2,1
    80004f50:	00f00793          	li	a5,15
    80004f54:	0527e463          	bltu	a5,s2,80004f9c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80004f58:	00004517          	auipc	a0,0x4
    80004f5c:	4e050513          	addi	a0,a0,1248 # 80009438 <_ZTV12ConsumerSync+0xa0>
    80004f60:	00000097          	auipc	ra,0x0
    80004f64:	988080e7          	jalr	-1656(ra) # 800048e8 <_Z11printStringPKc>
    80004f68:	00000613          	li	a2,0
    80004f6c:	00a00593          	li	a1,10
    80004f70:	0009051b          	sext.w	a0,s2
    80004f74:	00000097          	auipc	ra,0x0
    80004f78:	b24080e7          	jalr	-1244(ra) # 80004a98 <_Z8printIntiii>
    80004f7c:	00004517          	auipc	a0,0x4
    80004f80:	72c50513          	addi	a0,a0,1836 # 800096a8 <_ZTV7WorkerD+0x168>
    80004f84:	00000097          	auipc	ra,0x0
    80004f88:	964080e7          	jalr	-1692(ra) # 800048e8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004f8c:	00000493          	li	s1,0
    80004f90:	fa1ff06f          	j	80004f30 <_ZL11workerBodyBPv+0x3c>
            asm volatile("csrr t6, sepc");
    80004f94:	14102ff3          	csrr	t6,sepc
    80004f98:	fb5ff06f          	j	80004f4c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80004f9c:	00004517          	auipc	a0,0x4
    80004fa0:	4a450513          	addi	a0,a0,1188 # 80009440 <_ZTV12ConsumerSync+0xa8>
    80004fa4:	00000097          	auipc	ra,0x0
    80004fa8:	944080e7          	jalr	-1724(ra) # 800048e8 <_Z11printStringPKc>
    finishedB = true;
    80004fac:	00100793          	li	a5,1
    80004fb0:	00007717          	auipc	a4,0x7
    80004fb4:	84f70523          	sb	a5,-1974(a4) # 8000b7fa <_ZL9finishedB>
    thread_dispatch();
    80004fb8:	ffffd097          	auipc	ra,0xffffd
    80004fbc:	33c080e7          	jalr	828(ra) # 800022f4 <_Z15thread_dispatchv>
}
    80004fc0:	01813083          	ld	ra,24(sp)
    80004fc4:	01013403          	ld	s0,16(sp)
    80004fc8:	00813483          	ld	s1,8(sp)
    80004fcc:	00013903          	ld	s2,0(sp)
    80004fd0:	02010113          	addi	sp,sp,32
    80004fd4:	00008067          	ret

0000000080004fd8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004fd8:	fe010113          	addi	sp,sp,-32
    80004fdc:	00113c23          	sd	ra,24(sp)
    80004fe0:	00813823          	sd	s0,16(sp)
    80004fe4:	00913423          	sd	s1,8(sp)
    80004fe8:	01213023          	sd	s2,0(sp)
    80004fec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004ff0:	00000913          	li	s2,0
    80004ff4:	0380006f          	j	8000502c <_ZL11workerBodyAPv+0x54>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004ff8:	00170713          	addi	a4,a4,1
    80004ffc:	000077b7          	lui	a5,0x7
    80005000:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005004:	fee7fae3          	bgeu	a5,a4,80004ff8 <_ZL11workerBodyAPv+0x20>
            thread_dispatch();
    80005008:	ffffd097          	auipc	ra,0xffffd
    8000500c:	2ec080e7          	jalr	748(ra) # 800022f4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005010:	00148493          	addi	s1,s1,1
    80005014:	000027b7          	lui	a5,0x2
    80005018:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000501c:	0097e663          	bltu	a5,s1,80005028 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005020:	00000713          	li	a4,0
    80005024:	fd9ff06f          	j	80004ffc <_ZL11workerBodyAPv+0x24>
    for (uint64 i = 0; i < 10; i++) {
    80005028:	00190913          	addi	s2,s2,1
    8000502c:	00900793          	li	a5,9
    80005030:	0527e063          	bltu	a5,s2,80005070 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005034:	00004517          	auipc	a0,0x4
    80005038:	41c50513          	addi	a0,a0,1052 # 80009450 <_ZTV12ConsumerSync+0xb8>
    8000503c:	00000097          	auipc	ra,0x0
    80005040:	8ac080e7          	jalr	-1876(ra) # 800048e8 <_Z11printStringPKc>
    80005044:	00000613          	li	a2,0
    80005048:	00a00593          	li	a1,10
    8000504c:	0009051b          	sext.w	a0,s2
    80005050:	00000097          	auipc	ra,0x0
    80005054:	a48080e7          	jalr	-1464(ra) # 80004a98 <_Z8printIntiii>
    80005058:	00004517          	auipc	a0,0x4
    8000505c:	65050513          	addi	a0,a0,1616 # 800096a8 <_ZTV7WorkerD+0x168>
    80005060:	00000097          	auipc	ra,0x0
    80005064:	888080e7          	jalr	-1912(ra) # 800048e8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005068:	00000493          	li	s1,0
    8000506c:	fa9ff06f          	j	80005014 <_ZL11workerBodyAPv+0x3c>
    printString("A finished!\n");
    80005070:	00004517          	auipc	a0,0x4
    80005074:	3b850513          	addi	a0,a0,952 # 80009428 <_ZTV12ConsumerSync+0x90>
    80005078:	00000097          	auipc	ra,0x0
    8000507c:	870080e7          	jalr	-1936(ra) # 800048e8 <_Z11printStringPKc>
    finishedA = true;
    80005080:	00100793          	li	a5,1
    80005084:	00006717          	auipc	a4,0x6
    80005088:	76f70ba3          	sb	a5,1911(a4) # 8000b7fb <_ZL9finishedA>
}
    8000508c:	01813083          	ld	ra,24(sp)
    80005090:	01013403          	ld	s0,16(sp)
    80005094:	00813483          	ld	s1,8(sp)
    80005098:	00013903          	ld	s2,0(sp)
    8000509c:	02010113          	addi	sp,sp,32
    800050a0:	00008067          	ret

00000000800050a4 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800050a4:	fd010113          	addi	sp,sp,-48
    800050a8:	02113423          	sd	ra,40(sp)
    800050ac:	02813023          	sd	s0,32(sp)
    800050b0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800050b4:	00000613          	li	a2,0
    800050b8:	00000597          	auipc	a1,0x0
    800050bc:	f2058593          	addi	a1,a1,-224 # 80004fd8 <_ZL11workerBodyAPv>
    800050c0:	fd040513          	addi	a0,s0,-48
    800050c4:	ffffd097          	auipc	ra,0xffffd
    800050c8:	1a4080e7          	jalr	420(ra) # 80002268 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800050cc:	00004517          	auipc	a0,0x4
    800050d0:	38c50513          	addi	a0,a0,908 # 80009458 <_ZTV12ConsumerSync+0xc0>
    800050d4:	00000097          	auipc	ra,0x0
    800050d8:	814080e7          	jalr	-2028(ra) # 800048e8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800050dc:	00000613          	li	a2,0
    800050e0:	00000597          	auipc	a1,0x0
    800050e4:	e1458593          	addi	a1,a1,-492 # 80004ef4 <_ZL11workerBodyBPv>
    800050e8:	fd840513          	addi	a0,s0,-40
    800050ec:	ffffd097          	auipc	ra,0xffffd
    800050f0:	17c080e7          	jalr	380(ra) # 80002268 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    800050f4:	00004517          	auipc	a0,0x4
    800050f8:	37c50513          	addi	a0,a0,892 # 80009470 <_ZTV12ConsumerSync+0xd8>
    800050fc:	fffff097          	auipc	ra,0xfffff
    80005100:	7ec080e7          	jalr	2028(ra) # 800048e8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005104:	00000613          	li	a2,0
    80005108:	00000597          	auipc	a1,0x0
    8000510c:	c6c58593          	addi	a1,a1,-916 # 80004d74 <_ZL11workerBodyCPv>
    80005110:	fe040513          	addi	a0,s0,-32
    80005114:	ffffd097          	auipc	ra,0xffffd
    80005118:	154080e7          	jalr	340(ra) # 80002268 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    8000511c:	00004517          	auipc	a0,0x4
    80005120:	36c50513          	addi	a0,a0,876 # 80009488 <_ZTV12ConsumerSync+0xf0>
    80005124:	fffff097          	auipc	ra,0xfffff
    80005128:	7c4080e7          	jalr	1988(ra) # 800048e8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000512c:	00000613          	li	a2,0
    80005130:	00000597          	auipc	a1,0x0
    80005134:	afc58593          	addi	a1,a1,-1284 # 80004c2c <_ZL11workerBodyDPv>
    80005138:	fe840513          	addi	a0,s0,-24
    8000513c:	ffffd097          	auipc	ra,0xffffd
    80005140:	12c080e7          	jalr	300(ra) # 80002268 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80005144:	00004517          	auipc	a0,0x4
    80005148:	35c50513          	addi	a0,a0,860 # 800094a0 <_ZTV12ConsumerSync+0x108>
    8000514c:	fffff097          	auipc	ra,0xfffff
    80005150:	79c080e7          	jalr	1948(ra) # 800048e8 <_Z11printStringPKc>
    80005154:	00c0006f          	j	80005160 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005158:	ffffd097          	auipc	ra,0xffffd
    8000515c:	19c080e7          	jalr	412(ra) # 800022f4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005160:	00006797          	auipc	a5,0x6
    80005164:	69b7c783          	lbu	a5,1691(a5) # 8000b7fb <_ZL9finishedA>
    80005168:	fe0788e3          	beqz	a5,80005158 <_Z16System_Mode_testv+0xb4>
    8000516c:	00006797          	auipc	a5,0x6
    80005170:	68e7c783          	lbu	a5,1678(a5) # 8000b7fa <_ZL9finishedB>
    80005174:	fe0782e3          	beqz	a5,80005158 <_Z16System_Mode_testv+0xb4>
    80005178:	00006797          	auipc	a5,0x6
    8000517c:	6817c783          	lbu	a5,1665(a5) # 8000b7f9 <_ZL9finishedC>
    80005180:	fc078ce3          	beqz	a5,80005158 <_Z16System_Mode_testv+0xb4>
    80005184:	00006797          	auipc	a5,0x6
    80005188:	6747c783          	lbu	a5,1652(a5) # 8000b7f8 <_ZL9finishedD>
    8000518c:	fc0786e3          	beqz	a5,80005158 <_Z16System_Mode_testv+0xb4>
    }

}
    80005190:	02813083          	ld	ra,40(sp)
    80005194:	02013403          	ld	s0,32(sp)
    80005198:	03010113          	addi	sp,sp,48
    8000519c:	00008067          	ret

00000000800051a0 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800051a0:	fe010113          	addi	sp,sp,-32
    800051a4:	00113c23          	sd	ra,24(sp)
    800051a8:	00813823          	sd	s0,16(sp)
    800051ac:	00913423          	sd	s1,8(sp)
    800051b0:	01213023          	sd	s2,0(sp)
    800051b4:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800051b8:	00053903          	ld	s2,0(a0)
    int i = 6;
    800051bc:	00600493          	li	s1,6
    800051c0:	0440006f          	j	80005204 <_ZL9sleepyRunPv+0x64>
    while (--i > 0) {

        printString("Hello ");
    800051c4:	00004517          	auipc	a0,0x4
    800051c8:	2f450513          	addi	a0,a0,756 # 800094b8 <_ZTV12ConsumerSync+0x120>
    800051cc:	fffff097          	auipc	ra,0xfffff
    800051d0:	71c080e7          	jalr	1820(ra) # 800048e8 <_Z11printStringPKc>
        printInt(sleep_time);
    800051d4:	00000613          	li	a2,0
    800051d8:	00a00593          	li	a1,10
    800051dc:	0009051b          	sext.w	a0,s2
    800051e0:	00000097          	auipc	ra,0x0
    800051e4:	8b8080e7          	jalr	-1864(ra) # 80004a98 <_Z8printIntiii>
        printString(" !\n");
    800051e8:	00004517          	auipc	a0,0x4
    800051ec:	2d850513          	addi	a0,a0,728 # 800094c0 <_ZTV12ConsumerSync+0x128>
    800051f0:	fffff097          	auipc	ra,0xfffff
    800051f4:	6f8080e7          	jalr	1784(ra) # 800048e8 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800051f8:	00090513          	mv	a0,s2
    800051fc:	ffffd097          	auipc	ra,0xffffd
    80005200:	2c4080e7          	jalr	708(ra) # 800024c0 <_Z10time_sleepm>
    while (--i > 0) {
    80005204:	fff4849b          	addiw	s1,s1,-1
    80005208:	fa904ee3          	bgtz	s1,800051c4 <_ZL9sleepyRunPv+0x24>
    }
    finished[sleep_time/10-1] = true;
    8000520c:	00a00793          	li	a5,10
    80005210:	02f95933          	divu	s2,s2,a5
    80005214:	fff90913          	addi	s2,s2,-1
    80005218:	00006797          	auipc	a5,0x6
    8000521c:	5e878793          	addi	a5,a5,1512 # 8000b800 <_ZL8finished>
    80005220:	01278933          	add	s2,a5,s2
    80005224:	00100793          	li	a5,1
    80005228:	00f90023          	sb	a5,0(s2)
}
    8000522c:	01813083          	ld	ra,24(sp)
    80005230:	01013403          	ld	s0,16(sp)
    80005234:	00813483          	ld	s1,8(sp)
    80005238:	00013903          	ld	s2,0(sp)
    8000523c:	02010113          	addi	sp,sp,32
    80005240:	00008067          	ret

0000000080005244 <_Z12testSleepingv>:

void testSleeping() {
    80005244:	fc010113          	addi	sp,sp,-64
    80005248:	02113c23          	sd	ra,56(sp)
    8000524c:	02813823          	sd	s0,48(sp)
    80005250:	02913423          	sd	s1,40(sp)
    80005254:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005258:	00a00793          	li	a5,10
    8000525c:	fcf43823          	sd	a5,-48(s0)
    80005260:	01400793          	li	a5,20
    80005264:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005268:	00000493          	li	s1,0
    8000526c:	00100793          	li	a5,1
    80005270:	0297c863          	blt	a5,s1,800052a0 <_Z12testSleepingv+0x5c>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005274:	00349513          	slli	a0,s1,0x3
    80005278:	fd040793          	addi	a5,s0,-48
    8000527c:	00a78633          	add	a2,a5,a0
    80005280:	00000597          	auipc	a1,0x0
    80005284:	f2058593          	addi	a1,a1,-224 # 800051a0 <_ZL9sleepyRunPv>
    80005288:	fc040793          	addi	a5,s0,-64
    8000528c:	00a78533          	add	a0,a5,a0
    80005290:	ffffd097          	auipc	ra,0xffffd
    80005294:	fd8080e7          	jalr	-40(ra) # 80002268 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005298:	0014849b          	addiw	s1,s1,1
    8000529c:	fd1ff06f          	j	8000526c <_Z12testSleepingv+0x28>
    }

    while (!(finished[0] && finished[1])) {}
    800052a0:	00006797          	auipc	a5,0x6
    800052a4:	5607c783          	lbu	a5,1376(a5) # 8000b800 <_ZL8finished>
    800052a8:	fe078ce3          	beqz	a5,800052a0 <_Z12testSleepingv+0x5c>
    800052ac:	00006797          	auipc	a5,0x6
    800052b0:	5557c783          	lbu	a5,1365(a5) # 8000b801 <_ZL8finished+0x1>
    800052b4:	fe0786e3          	beqz	a5,800052a0 <_Z12testSleepingv+0x5c>
}
    800052b8:	03813083          	ld	ra,56(sp)
    800052bc:	03013403          	ld	s0,48(sp)
    800052c0:	02813483          	ld	s1,40(sp)
    800052c4:	04010113          	addi	sp,sp,64
    800052c8:	00008067          	ret

00000000800052cc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800052cc:	fe010113          	addi	sp,sp,-32
    800052d0:	00113c23          	sd	ra,24(sp)
    800052d4:	00813823          	sd	s0,16(sp)
    800052d8:	00913423          	sd	s1,8(sp)
    800052dc:	01213023          	sd	s2,0(sp)
    800052e0:	02010413          	addi	s0,sp,32
    800052e4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800052e8:	00100793          	li	a5,1
    800052ec:	02a7f863          	bgeu	a5,a0,8000531c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800052f0:	00a00793          	li	a5,10
    800052f4:	02f577b3          	remu	a5,a0,a5
    800052f8:	02078e63          	beqz	a5,80005334 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800052fc:	fff48513          	addi	a0,s1,-1
    80005300:	00000097          	auipc	ra,0x0
    80005304:	fcc080e7          	jalr	-52(ra) # 800052cc <_ZL9fibonaccim>
    80005308:	00050913          	mv	s2,a0
    8000530c:	ffe48513          	addi	a0,s1,-2
    80005310:	00000097          	auipc	ra,0x0
    80005314:	fbc080e7          	jalr	-68(ra) # 800052cc <_ZL9fibonaccim>
    80005318:	00a90533          	add	a0,s2,a0
}
    8000531c:	01813083          	ld	ra,24(sp)
    80005320:	01013403          	ld	s0,16(sp)
    80005324:	00813483          	ld	s1,8(sp)
    80005328:	00013903          	ld	s2,0(sp)
    8000532c:	02010113          	addi	sp,sp,32
    80005330:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005334:	ffffd097          	auipc	ra,0xffffd
    80005338:	fc0080e7          	jalr	-64(ra) # 800022f4 <_Z15thread_dispatchv>
    8000533c:	fc1ff06f          	j	800052fc <_ZL9fibonaccim+0x30>

0000000080005340 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80005340:	fe010113          	addi	sp,sp,-32
    80005344:	00113c23          	sd	ra,24(sp)
    80005348:	00813823          	sd	s0,16(sp)
    8000534c:	00913423          	sd	s1,8(sp)
    80005350:	01213023          	sd	s2,0(sp)
    80005354:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005358:	00000913          	li	s2,0
    8000535c:	0380006f          	j	80005394 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005360:	00170713          	addi	a4,a4,1
    80005364:	000077b7          	lui	a5,0x7
    80005368:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000536c:	fee7fae3          	bgeu	a5,a4,80005360 <_ZN7WorkerA11workerBodyAEPv+0x20>
            thread_dispatch();
    80005370:	ffffd097          	auipc	ra,0xffffd
    80005374:	f84080e7          	jalr	-124(ra) # 800022f4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005378:	00148493          	addi	s1,s1,1
    8000537c:	000027b7          	lui	a5,0x2
    80005380:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005384:	0097e663          	bltu	a5,s1,80005390 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005388:	00000713          	li	a4,0
    8000538c:	fd9ff06f          	j	80005364 <_ZN7WorkerA11workerBodyAEPv+0x24>
    for (uint64 i = 0; i < 10; i++) {
    80005390:	00190913          	addi	s2,s2,1
    80005394:	00900793          	li	a5,9
    80005398:	0527e063          	bltu	a5,s2,800053d8 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000539c:	00004517          	auipc	a0,0x4
    800053a0:	0b450513          	addi	a0,a0,180 # 80009450 <_ZTV12ConsumerSync+0xb8>
    800053a4:	fffff097          	auipc	ra,0xfffff
    800053a8:	544080e7          	jalr	1348(ra) # 800048e8 <_Z11printStringPKc>
    800053ac:	00000613          	li	a2,0
    800053b0:	00a00593          	li	a1,10
    800053b4:	0009051b          	sext.w	a0,s2
    800053b8:	fffff097          	auipc	ra,0xfffff
    800053bc:	6e0080e7          	jalr	1760(ra) # 80004a98 <_Z8printIntiii>
    800053c0:	00004517          	auipc	a0,0x4
    800053c4:	2e850513          	addi	a0,a0,744 # 800096a8 <_ZTV7WorkerD+0x168>
    800053c8:	fffff097          	auipc	ra,0xfffff
    800053cc:	520080e7          	jalr	1312(ra) # 800048e8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800053d0:	00000493          	li	s1,0
    800053d4:	fa9ff06f          	j	8000537c <_ZN7WorkerA11workerBodyAEPv+0x3c>
        }
    }
    printString("A finished!\n");
    800053d8:	00004517          	auipc	a0,0x4
    800053dc:	05050513          	addi	a0,a0,80 # 80009428 <_ZTV12ConsumerSync+0x90>
    800053e0:	fffff097          	auipc	ra,0xfffff
    800053e4:	508080e7          	jalr	1288(ra) # 800048e8 <_Z11printStringPKc>
    finishedA = true;
    800053e8:	00100793          	li	a5,1
    800053ec:	00006717          	auipc	a4,0x6
    800053f0:	40f70ca3          	sb	a5,1049(a4) # 8000b805 <_ZL9finishedA>
}
    800053f4:	01813083          	ld	ra,24(sp)
    800053f8:	01013403          	ld	s0,16(sp)
    800053fc:	00813483          	ld	s1,8(sp)
    80005400:	00013903          	ld	s2,0(sp)
    80005404:	02010113          	addi	sp,sp,32
    80005408:	00008067          	ret

000000008000540c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    8000540c:	fe010113          	addi	sp,sp,-32
    80005410:	00113c23          	sd	ra,24(sp)
    80005414:	00813823          	sd	s0,16(sp)
    80005418:	00913423          	sd	s1,8(sp)
    8000541c:	01213023          	sd	s2,0(sp)
    80005420:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005424:	00000913          	li	s2,0
    80005428:	0380006f          	j	80005460 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000542c:	00170713          	addi	a4,a4,1
    80005430:	000077b7          	lui	a5,0x7
    80005434:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005438:	fee7fae3          	bgeu	a5,a4,8000542c <_ZN7WorkerB11workerBodyBEPv+0x20>
            thread_dispatch();
    8000543c:	ffffd097          	auipc	ra,0xffffd
    80005440:	eb8080e7          	jalr	-328(ra) # 800022f4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005444:	00148493          	addi	s1,s1,1
    80005448:	000027b7          	lui	a5,0x2
    8000544c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005450:	0097e663          	bltu	a5,s1,8000545c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005454:	00000713          	li	a4,0
    80005458:	fd9ff06f          	j	80005430 <_ZN7WorkerB11workerBodyBEPv+0x24>
    for (uint64 i = 0; i < 16; i++) {
    8000545c:	00190913          	addi	s2,s2,1
    80005460:	00f00793          	li	a5,15
    80005464:	0527e063          	bltu	a5,s2,800054a4 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005468:	00004517          	auipc	a0,0x4
    8000546c:	fd050513          	addi	a0,a0,-48 # 80009438 <_ZTV12ConsumerSync+0xa0>
    80005470:	fffff097          	auipc	ra,0xfffff
    80005474:	478080e7          	jalr	1144(ra) # 800048e8 <_Z11printStringPKc>
    80005478:	00000613          	li	a2,0
    8000547c:	00a00593          	li	a1,10
    80005480:	0009051b          	sext.w	a0,s2
    80005484:	fffff097          	auipc	ra,0xfffff
    80005488:	614080e7          	jalr	1556(ra) # 80004a98 <_Z8printIntiii>
    8000548c:	00004517          	auipc	a0,0x4
    80005490:	21c50513          	addi	a0,a0,540 # 800096a8 <_ZTV7WorkerD+0x168>
    80005494:	fffff097          	auipc	ra,0xfffff
    80005498:	454080e7          	jalr	1108(ra) # 800048e8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000549c:	00000493          	li	s1,0
    800054a0:	fa9ff06f          	j	80005448 <_ZN7WorkerB11workerBodyBEPv+0x3c>
        }
    }
    printString("B finished!\n");
    800054a4:	00004517          	auipc	a0,0x4
    800054a8:	f9c50513          	addi	a0,a0,-100 # 80009440 <_ZTV12ConsumerSync+0xa8>
    800054ac:	fffff097          	auipc	ra,0xfffff
    800054b0:	43c080e7          	jalr	1084(ra) # 800048e8 <_Z11printStringPKc>
    finishedB = true;
    800054b4:	00100793          	li	a5,1
    800054b8:	00006717          	auipc	a4,0x6
    800054bc:	34f70623          	sb	a5,844(a4) # 8000b804 <_ZL9finishedB>
    thread_dispatch();
    800054c0:	ffffd097          	auipc	ra,0xffffd
    800054c4:	e34080e7          	jalr	-460(ra) # 800022f4 <_Z15thread_dispatchv>
}
    800054c8:	01813083          	ld	ra,24(sp)
    800054cc:	01013403          	ld	s0,16(sp)
    800054d0:	00813483          	ld	s1,8(sp)
    800054d4:	00013903          	ld	s2,0(sp)
    800054d8:	02010113          	addi	sp,sp,32
    800054dc:	00008067          	ret

00000000800054e0 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800054e0:	fe010113          	addi	sp,sp,-32
    800054e4:	00113c23          	sd	ra,24(sp)
    800054e8:	00813823          	sd	s0,16(sp)
    800054ec:	00913423          	sd	s1,8(sp)
    800054f0:	01213023          	sd	s2,0(sp)
    800054f4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800054f8:	00000493          	li	s1,0
    800054fc:	0400006f          	j	8000553c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005500:	00004517          	auipc	a0,0x4
    80005504:	ef850513          	addi	a0,a0,-264 # 800093f8 <_ZTV12ConsumerSync+0x60>
    80005508:	fffff097          	auipc	ra,0xfffff
    8000550c:	3e0080e7          	jalr	992(ra) # 800048e8 <_Z11printStringPKc>
    80005510:	00000613          	li	a2,0
    80005514:	00a00593          	li	a1,10
    80005518:	00048513          	mv	a0,s1
    8000551c:	fffff097          	auipc	ra,0xfffff
    80005520:	57c080e7          	jalr	1404(ra) # 80004a98 <_Z8printIntiii>
    80005524:	00004517          	auipc	a0,0x4
    80005528:	18450513          	addi	a0,a0,388 # 800096a8 <_ZTV7WorkerD+0x168>
    8000552c:	fffff097          	auipc	ra,0xfffff
    80005530:	3bc080e7          	jalr	956(ra) # 800048e8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005534:	0014849b          	addiw	s1,s1,1
    80005538:	0ff4f493          	andi	s1,s1,255
    8000553c:	00200793          	li	a5,2
    80005540:	fc97f0e3          	bgeu	a5,s1,80005500 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80005544:	00004517          	auipc	a0,0x4
    80005548:	ebc50513          	addi	a0,a0,-324 # 80009400 <_ZTV12ConsumerSync+0x68>
    8000554c:	fffff097          	auipc	ra,0xfffff
    80005550:	39c080e7          	jalr	924(ra) # 800048e8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005554:	00700313          	li	t1,7
    thread_dispatch();
    80005558:	ffffd097          	auipc	ra,0xffffd
    8000555c:	d9c080e7          	jalr	-612(ra) # 800022f4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005560:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80005564:	00004517          	auipc	a0,0x4
    80005568:	eac50513          	addi	a0,a0,-340 # 80009410 <_ZTV12ConsumerSync+0x78>
    8000556c:	fffff097          	auipc	ra,0xfffff
    80005570:	37c080e7          	jalr	892(ra) # 800048e8 <_Z11printStringPKc>
    80005574:	00000613          	li	a2,0
    80005578:	00a00593          	li	a1,10
    8000557c:	0009051b          	sext.w	a0,s2
    80005580:	fffff097          	auipc	ra,0xfffff
    80005584:	518080e7          	jalr	1304(ra) # 80004a98 <_Z8printIntiii>
    80005588:	00004517          	auipc	a0,0x4
    8000558c:	12050513          	addi	a0,a0,288 # 800096a8 <_ZTV7WorkerD+0x168>
    80005590:	fffff097          	auipc	ra,0xfffff
    80005594:	358080e7          	jalr	856(ra) # 800048e8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80005598:	00c00513          	li	a0,12
    8000559c:	00000097          	auipc	ra,0x0
    800055a0:	d30080e7          	jalr	-720(ra) # 800052cc <_ZL9fibonaccim>
    800055a4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800055a8:	00004517          	auipc	a0,0x4
    800055ac:	e7050513          	addi	a0,a0,-400 # 80009418 <_ZTV12ConsumerSync+0x80>
    800055b0:	fffff097          	auipc	ra,0xfffff
    800055b4:	338080e7          	jalr	824(ra) # 800048e8 <_Z11printStringPKc>
    800055b8:	00000613          	li	a2,0
    800055bc:	00a00593          	li	a1,10
    800055c0:	0009051b          	sext.w	a0,s2
    800055c4:	fffff097          	auipc	ra,0xfffff
    800055c8:	4d4080e7          	jalr	1236(ra) # 80004a98 <_Z8printIntiii>
    800055cc:	00004517          	auipc	a0,0x4
    800055d0:	0dc50513          	addi	a0,a0,220 # 800096a8 <_ZTV7WorkerD+0x168>
    800055d4:	fffff097          	auipc	ra,0xfffff
    800055d8:	314080e7          	jalr	788(ra) # 800048e8 <_Z11printStringPKc>
    800055dc:	0400006f          	j	8000561c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800055e0:	00004517          	auipc	a0,0x4
    800055e4:	e1850513          	addi	a0,a0,-488 # 800093f8 <_ZTV12ConsumerSync+0x60>
    800055e8:	fffff097          	auipc	ra,0xfffff
    800055ec:	300080e7          	jalr	768(ra) # 800048e8 <_Z11printStringPKc>
    800055f0:	00000613          	li	a2,0
    800055f4:	00a00593          	li	a1,10
    800055f8:	00048513          	mv	a0,s1
    800055fc:	fffff097          	auipc	ra,0xfffff
    80005600:	49c080e7          	jalr	1180(ra) # 80004a98 <_Z8printIntiii>
    80005604:	00004517          	auipc	a0,0x4
    80005608:	0a450513          	addi	a0,a0,164 # 800096a8 <_ZTV7WorkerD+0x168>
    8000560c:	fffff097          	auipc	ra,0xfffff
    80005610:	2dc080e7          	jalr	732(ra) # 800048e8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005614:	0014849b          	addiw	s1,s1,1
    80005618:	0ff4f493          	andi	s1,s1,255
    8000561c:	00500793          	li	a5,5
    80005620:	fc97f0e3          	bgeu	a5,s1,800055e0 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80005624:	00004517          	auipc	a0,0x4
    80005628:	e0450513          	addi	a0,a0,-508 # 80009428 <_ZTV12ConsumerSync+0x90>
    8000562c:	fffff097          	auipc	ra,0xfffff
    80005630:	2bc080e7          	jalr	700(ra) # 800048e8 <_Z11printStringPKc>
    finishedC = true;
    80005634:	00100793          	li	a5,1
    80005638:	00006717          	auipc	a4,0x6
    8000563c:	1cf705a3          	sb	a5,459(a4) # 8000b803 <_ZL9finishedC>
    thread_dispatch();
    80005640:	ffffd097          	auipc	ra,0xffffd
    80005644:	cb4080e7          	jalr	-844(ra) # 800022f4 <_Z15thread_dispatchv>
}
    80005648:	01813083          	ld	ra,24(sp)
    8000564c:	01013403          	ld	s0,16(sp)
    80005650:	00813483          	ld	s1,8(sp)
    80005654:	00013903          	ld	s2,0(sp)
    80005658:	02010113          	addi	sp,sp,32
    8000565c:	00008067          	ret

0000000080005660 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80005660:	fe010113          	addi	sp,sp,-32
    80005664:	00113c23          	sd	ra,24(sp)
    80005668:	00813823          	sd	s0,16(sp)
    8000566c:	00913423          	sd	s1,8(sp)
    80005670:	01213023          	sd	s2,0(sp)
    80005674:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005678:	00a00493          	li	s1,10
    8000567c:	0400006f          	j	800056bc <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005680:	00004517          	auipc	a0,0x4
    80005684:	d4050513          	addi	a0,a0,-704 # 800093c0 <_ZTV12ConsumerSync+0x28>
    80005688:	fffff097          	auipc	ra,0xfffff
    8000568c:	260080e7          	jalr	608(ra) # 800048e8 <_Z11printStringPKc>
    80005690:	00000613          	li	a2,0
    80005694:	00a00593          	li	a1,10
    80005698:	00048513          	mv	a0,s1
    8000569c:	fffff097          	auipc	ra,0xfffff
    800056a0:	3fc080e7          	jalr	1020(ra) # 80004a98 <_Z8printIntiii>
    800056a4:	00004517          	auipc	a0,0x4
    800056a8:	00450513          	addi	a0,a0,4 # 800096a8 <_ZTV7WorkerD+0x168>
    800056ac:	fffff097          	auipc	ra,0xfffff
    800056b0:	23c080e7          	jalr	572(ra) # 800048e8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800056b4:	0014849b          	addiw	s1,s1,1
    800056b8:	0ff4f493          	andi	s1,s1,255
    800056bc:	00c00793          	li	a5,12
    800056c0:	fc97f0e3          	bgeu	a5,s1,80005680 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800056c4:	00004517          	auipc	a0,0x4
    800056c8:	d0450513          	addi	a0,a0,-764 # 800093c8 <_ZTV12ConsumerSync+0x30>
    800056cc:	fffff097          	auipc	ra,0xfffff
    800056d0:	21c080e7          	jalr	540(ra) # 800048e8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800056d4:	00500313          	li	t1,5
    thread_dispatch();
    800056d8:	ffffd097          	auipc	ra,0xffffd
    800056dc:	c1c080e7          	jalr	-996(ra) # 800022f4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800056e0:	01000513          	li	a0,16
    800056e4:	00000097          	auipc	ra,0x0
    800056e8:	be8080e7          	jalr	-1048(ra) # 800052cc <_ZL9fibonaccim>
    800056ec:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800056f0:	00004517          	auipc	a0,0x4
    800056f4:	ce850513          	addi	a0,a0,-792 # 800093d8 <_ZTV12ConsumerSync+0x40>
    800056f8:	fffff097          	auipc	ra,0xfffff
    800056fc:	1f0080e7          	jalr	496(ra) # 800048e8 <_Z11printStringPKc>
    80005700:	00000613          	li	a2,0
    80005704:	00a00593          	li	a1,10
    80005708:	0009051b          	sext.w	a0,s2
    8000570c:	fffff097          	auipc	ra,0xfffff
    80005710:	38c080e7          	jalr	908(ra) # 80004a98 <_Z8printIntiii>
    80005714:	00004517          	auipc	a0,0x4
    80005718:	f9450513          	addi	a0,a0,-108 # 800096a8 <_ZTV7WorkerD+0x168>
    8000571c:	fffff097          	auipc	ra,0xfffff
    80005720:	1cc080e7          	jalr	460(ra) # 800048e8 <_Z11printStringPKc>
    80005724:	0400006f          	j	80005764 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005728:	00004517          	auipc	a0,0x4
    8000572c:	c9850513          	addi	a0,a0,-872 # 800093c0 <_ZTV12ConsumerSync+0x28>
    80005730:	fffff097          	auipc	ra,0xfffff
    80005734:	1b8080e7          	jalr	440(ra) # 800048e8 <_Z11printStringPKc>
    80005738:	00000613          	li	a2,0
    8000573c:	00a00593          	li	a1,10
    80005740:	00048513          	mv	a0,s1
    80005744:	fffff097          	auipc	ra,0xfffff
    80005748:	354080e7          	jalr	852(ra) # 80004a98 <_Z8printIntiii>
    8000574c:	00004517          	auipc	a0,0x4
    80005750:	f5c50513          	addi	a0,a0,-164 # 800096a8 <_ZTV7WorkerD+0x168>
    80005754:	fffff097          	auipc	ra,0xfffff
    80005758:	194080e7          	jalr	404(ra) # 800048e8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000575c:	0014849b          	addiw	s1,s1,1
    80005760:	0ff4f493          	andi	s1,s1,255
    80005764:	00f00793          	li	a5,15
    80005768:	fc97f0e3          	bgeu	a5,s1,80005728 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    8000576c:	00004517          	auipc	a0,0x4
    80005770:	c7c50513          	addi	a0,a0,-900 # 800093e8 <_ZTV12ConsumerSync+0x50>
    80005774:	fffff097          	auipc	ra,0xfffff
    80005778:	174080e7          	jalr	372(ra) # 800048e8 <_Z11printStringPKc>
    finishedD = true;
    8000577c:	00100793          	li	a5,1
    80005780:	00006717          	auipc	a4,0x6
    80005784:	08f70123          	sb	a5,130(a4) # 8000b802 <_ZL9finishedD>
    thread_dispatch();
    80005788:	ffffd097          	auipc	ra,0xffffd
    8000578c:	b6c080e7          	jalr	-1172(ra) # 800022f4 <_Z15thread_dispatchv>
}
    80005790:	01813083          	ld	ra,24(sp)
    80005794:	01013403          	ld	s0,16(sp)
    80005798:	00813483          	ld	s1,8(sp)
    8000579c:	00013903          	ld	s2,0(sp)
    800057a0:	02010113          	addi	sp,sp,32
    800057a4:	00008067          	ret

00000000800057a8 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800057a8:	fc010113          	addi	sp,sp,-64
    800057ac:	02113c23          	sd	ra,56(sp)
    800057b0:	02813823          	sd	s0,48(sp)
    800057b4:	02913423          	sd	s1,40(sp)
    800057b8:	03213023          	sd	s2,32(sp)
    800057bc:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800057c0:	02000513          	li	a0,32
    800057c4:	ffffd097          	auipc	ra,0xffffd
    800057c8:	e78080e7          	jalr	-392(ra) # 8000263c <_Znwm>
    800057cc:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800057d0:	ffffd097          	auipc	ra,0xffffd
    800057d4:	044080e7          	jalr	68(ra) # 80002814 <_ZN6ThreadC1Ev>
    800057d8:	00004797          	auipc	a5,0x4
    800057dc:	d0078793          	addi	a5,a5,-768 # 800094d8 <_ZTV7WorkerA+0x10>
    800057e0:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800057e4:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800057e8:	00004517          	auipc	a0,0x4
    800057ec:	c7050513          	addi	a0,a0,-912 # 80009458 <_ZTV12ConsumerSync+0xc0>
    800057f0:	fffff097          	auipc	ra,0xfffff
    800057f4:	0f8080e7          	jalr	248(ra) # 800048e8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800057f8:	02000513          	li	a0,32
    800057fc:	ffffd097          	auipc	ra,0xffffd
    80005800:	e40080e7          	jalr	-448(ra) # 8000263c <_Znwm>
    80005804:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80005808:	ffffd097          	auipc	ra,0xffffd
    8000580c:	00c080e7          	jalr	12(ra) # 80002814 <_ZN6ThreadC1Ev>
    80005810:	00004797          	auipc	a5,0x4
    80005814:	cf078793          	addi	a5,a5,-784 # 80009500 <_ZTV7WorkerB+0x10>
    80005818:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    8000581c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80005820:	00004517          	auipc	a0,0x4
    80005824:	c5050513          	addi	a0,a0,-944 # 80009470 <_ZTV12ConsumerSync+0xd8>
    80005828:	fffff097          	auipc	ra,0xfffff
    8000582c:	0c0080e7          	jalr	192(ra) # 800048e8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80005830:	02000513          	li	a0,32
    80005834:	ffffd097          	auipc	ra,0xffffd
    80005838:	e08080e7          	jalr	-504(ra) # 8000263c <_Znwm>
    8000583c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80005840:	ffffd097          	auipc	ra,0xffffd
    80005844:	fd4080e7          	jalr	-44(ra) # 80002814 <_ZN6ThreadC1Ev>
    80005848:	00004797          	auipc	a5,0x4
    8000584c:	ce078793          	addi	a5,a5,-800 # 80009528 <_ZTV7WorkerC+0x10>
    80005850:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80005854:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80005858:	00004517          	auipc	a0,0x4
    8000585c:	c3050513          	addi	a0,a0,-976 # 80009488 <_ZTV12ConsumerSync+0xf0>
    80005860:	fffff097          	auipc	ra,0xfffff
    80005864:	088080e7          	jalr	136(ra) # 800048e8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80005868:	02000513          	li	a0,32
    8000586c:	ffffd097          	auipc	ra,0xffffd
    80005870:	dd0080e7          	jalr	-560(ra) # 8000263c <_Znwm>
    80005874:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80005878:	ffffd097          	auipc	ra,0xffffd
    8000587c:	f9c080e7          	jalr	-100(ra) # 80002814 <_ZN6ThreadC1Ev>
    80005880:	00004797          	auipc	a5,0x4
    80005884:	cd078793          	addi	a5,a5,-816 # 80009550 <_ZTV7WorkerD+0x10>
    80005888:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000588c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80005890:	00004517          	auipc	a0,0x4
    80005894:	c1050513          	addi	a0,a0,-1008 # 800094a0 <_ZTV12ConsumerSync+0x108>
    80005898:	fffff097          	auipc	ra,0xfffff
    8000589c:	050080e7          	jalr	80(ra) # 800048e8 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800058a0:	00000493          	li	s1,0
    800058a4:	00300793          	li	a5,3
    800058a8:	0297c663          	blt	a5,s1,800058d4 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800058ac:	00349793          	slli	a5,s1,0x3
    800058b0:	fe040713          	addi	a4,s0,-32
    800058b4:	00f707b3          	add	a5,a4,a5
    800058b8:	fe07b503          	ld	a0,-32(a5)
    800058bc:	ffffd097          	auipc	ra,0xffffd
    800058c0:	e80080e7          	jalr	-384(ra) # 8000273c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800058c4:	0014849b          	addiw	s1,s1,1
    800058c8:	fddff06f          	j	800058a4 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800058cc:	ffffd097          	auipc	ra,0xffffd
    800058d0:	ea4080e7          	jalr	-348(ra) # 80002770 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800058d4:	00006797          	auipc	a5,0x6
    800058d8:	f317c783          	lbu	a5,-207(a5) # 8000b805 <_ZL9finishedA>
    800058dc:	fe0788e3          	beqz	a5,800058cc <_Z20Threads_CPP_API_testv+0x124>
    800058e0:	00006797          	auipc	a5,0x6
    800058e4:	f247c783          	lbu	a5,-220(a5) # 8000b804 <_ZL9finishedB>
    800058e8:	fe0782e3          	beqz	a5,800058cc <_Z20Threads_CPP_API_testv+0x124>
    800058ec:	00006797          	auipc	a5,0x6
    800058f0:	f177c783          	lbu	a5,-233(a5) # 8000b803 <_ZL9finishedC>
    800058f4:	fc078ce3          	beqz	a5,800058cc <_Z20Threads_CPP_API_testv+0x124>
    800058f8:	00006797          	auipc	a5,0x6
    800058fc:	f0a7c783          	lbu	a5,-246(a5) # 8000b802 <_ZL9finishedD>
    80005900:	fc0786e3          	beqz	a5,800058cc <_Z20Threads_CPP_API_testv+0x124>
    80005904:	fc040493          	addi	s1,s0,-64
    80005908:	0080006f          	j	80005910 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    8000590c:	00848493          	addi	s1,s1,8
    80005910:	fe040793          	addi	a5,s0,-32
    80005914:	08f48663          	beq	s1,a5,800059a0 <_Z20Threads_CPP_API_testv+0x1f8>
    80005918:	0004b503          	ld	a0,0(s1)
    8000591c:	fe0508e3          	beqz	a0,8000590c <_Z20Threads_CPP_API_testv+0x164>
    80005920:	00053783          	ld	a5,0(a0)
    80005924:	0087b783          	ld	a5,8(a5)
    80005928:	000780e7          	jalr	a5
    8000592c:	fe1ff06f          	j	8000590c <_Z20Threads_CPP_API_testv+0x164>
    threads[0] = new WorkerA();
    80005930:	00050913          	mv	s2,a0
    80005934:	00048513          	mv	a0,s1
    80005938:	ffffd097          	auipc	ra,0xffffd
    8000593c:	d2c080e7          	jalr	-724(ra) # 80002664 <_ZdlPv>
    80005940:	00090513          	mv	a0,s2
    80005944:	00007097          	auipc	ra,0x7
    80005948:	fc4080e7          	jalr	-60(ra) # 8000c908 <_Unwind_Resume>
    threads[1] = new WorkerB();
    8000594c:	00050913          	mv	s2,a0
    80005950:	00048513          	mv	a0,s1
    80005954:	ffffd097          	auipc	ra,0xffffd
    80005958:	d10080e7          	jalr	-752(ra) # 80002664 <_ZdlPv>
    8000595c:	00090513          	mv	a0,s2
    80005960:	00007097          	auipc	ra,0x7
    80005964:	fa8080e7          	jalr	-88(ra) # 8000c908 <_Unwind_Resume>
    threads[2] = new WorkerC();
    80005968:	00050913          	mv	s2,a0
    8000596c:	00048513          	mv	a0,s1
    80005970:	ffffd097          	auipc	ra,0xffffd
    80005974:	cf4080e7          	jalr	-780(ra) # 80002664 <_ZdlPv>
    80005978:	00090513          	mv	a0,s2
    8000597c:	00007097          	auipc	ra,0x7
    80005980:	f8c080e7          	jalr	-116(ra) # 8000c908 <_Unwind_Resume>
    threads[3] = new WorkerD();
    80005984:	00050913          	mv	s2,a0
    80005988:	00048513          	mv	a0,s1
    8000598c:	ffffd097          	auipc	ra,0xffffd
    80005990:	cd8080e7          	jalr	-808(ra) # 80002664 <_ZdlPv>
    80005994:	00090513          	mv	a0,s2
    80005998:	00007097          	auipc	ra,0x7
    8000599c:	f70080e7          	jalr	-144(ra) # 8000c908 <_Unwind_Resume>
}
    800059a0:	03813083          	ld	ra,56(sp)
    800059a4:	03013403          	ld	s0,48(sp)
    800059a8:	02813483          	ld	s1,40(sp)
    800059ac:	02013903          	ld	s2,32(sp)
    800059b0:	04010113          	addi	sp,sp,64
    800059b4:	00008067          	ret

00000000800059b8 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800059b8:	ff010113          	addi	sp,sp,-16
    800059bc:	00113423          	sd	ra,8(sp)
    800059c0:	00813023          	sd	s0,0(sp)
    800059c4:	01010413          	addi	s0,sp,16
    800059c8:	00004797          	auipc	a5,0x4
    800059cc:	b1078793          	addi	a5,a5,-1264 # 800094d8 <_ZTV7WorkerA+0x10>
    800059d0:	00f53023          	sd	a5,0(a0)
    800059d4:	ffffd097          	auipc	ra,0xffffd
    800059d8:	bcc080e7          	jalr	-1076(ra) # 800025a0 <_ZN6ThreadD1Ev>
    800059dc:	00813083          	ld	ra,8(sp)
    800059e0:	00013403          	ld	s0,0(sp)
    800059e4:	01010113          	addi	sp,sp,16
    800059e8:	00008067          	ret

00000000800059ec <_ZN7WorkerAD0Ev>:
    800059ec:	fe010113          	addi	sp,sp,-32
    800059f0:	00113c23          	sd	ra,24(sp)
    800059f4:	00813823          	sd	s0,16(sp)
    800059f8:	00913423          	sd	s1,8(sp)
    800059fc:	02010413          	addi	s0,sp,32
    80005a00:	00050493          	mv	s1,a0
    80005a04:	00004797          	auipc	a5,0x4
    80005a08:	ad478793          	addi	a5,a5,-1324 # 800094d8 <_ZTV7WorkerA+0x10>
    80005a0c:	00f53023          	sd	a5,0(a0)
    80005a10:	ffffd097          	auipc	ra,0xffffd
    80005a14:	b90080e7          	jalr	-1136(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80005a18:	00048513          	mv	a0,s1
    80005a1c:	ffffd097          	auipc	ra,0xffffd
    80005a20:	c48080e7          	jalr	-952(ra) # 80002664 <_ZdlPv>
    80005a24:	01813083          	ld	ra,24(sp)
    80005a28:	01013403          	ld	s0,16(sp)
    80005a2c:	00813483          	ld	s1,8(sp)
    80005a30:	02010113          	addi	sp,sp,32
    80005a34:	00008067          	ret

0000000080005a38 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80005a38:	ff010113          	addi	sp,sp,-16
    80005a3c:	00113423          	sd	ra,8(sp)
    80005a40:	00813023          	sd	s0,0(sp)
    80005a44:	01010413          	addi	s0,sp,16
    80005a48:	00004797          	auipc	a5,0x4
    80005a4c:	ab878793          	addi	a5,a5,-1352 # 80009500 <_ZTV7WorkerB+0x10>
    80005a50:	00f53023          	sd	a5,0(a0)
    80005a54:	ffffd097          	auipc	ra,0xffffd
    80005a58:	b4c080e7          	jalr	-1204(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80005a5c:	00813083          	ld	ra,8(sp)
    80005a60:	00013403          	ld	s0,0(sp)
    80005a64:	01010113          	addi	sp,sp,16
    80005a68:	00008067          	ret

0000000080005a6c <_ZN7WorkerBD0Ev>:
    80005a6c:	fe010113          	addi	sp,sp,-32
    80005a70:	00113c23          	sd	ra,24(sp)
    80005a74:	00813823          	sd	s0,16(sp)
    80005a78:	00913423          	sd	s1,8(sp)
    80005a7c:	02010413          	addi	s0,sp,32
    80005a80:	00050493          	mv	s1,a0
    80005a84:	00004797          	auipc	a5,0x4
    80005a88:	a7c78793          	addi	a5,a5,-1412 # 80009500 <_ZTV7WorkerB+0x10>
    80005a8c:	00f53023          	sd	a5,0(a0)
    80005a90:	ffffd097          	auipc	ra,0xffffd
    80005a94:	b10080e7          	jalr	-1264(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80005a98:	00048513          	mv	a0,s1
    80005a9c:	ffffd097          	auipc	ra,0xffffd
    80005aa0:	bc8080e7          	jalr	-1080(ra) # 80002664 <_ZdlPv>
    80005aa4:	01813083          	ld	ra,24(sp)
    80005aa8:	01013403          	ld	s0,16(sp)
    80005aac:	00813483          	ld	s1,8(sp)
    80005ab0:	02010113          	addi	sp,sp,32
    80005ab4:	00008067          	ret

0000000080005ab8 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80005ab8:	ff010113          	addi	sp,sp,-16
    80005abc:	00113423          	sd	ra,8(sp)
    80005ac0:	00813023          	sd	s0,0(sp)
    80005ac4:	01010413          	addi	s0,sp,16
    80005ac8:	00004797          	auipc	a5,0x4
    80005acc:	a6078793          	addi	a5,a5,-1440 # 80009528 <_ZTV7WorkerC+0x10>
    80005ad0:	00f53023          	sd	a5,0(a0)
    80005ad4:	ffffd097          	auipc	ra,0xffffd
    80005ad8:	acc080e7          	jalr	-1332(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80005adc:	00813083          	ld	ra,8(sp)
    80005ae0:	00013403          	ld	s0,0(sp)
    80005ae4:	01010113          	addi	sp,sp,16
    80005ae8:	00008067          	ret

0000000080005aec <_ZN7WorkerCD0Ev>:
    80005aec:	fe010113          	addi	sp,sp,-32
    80005af0:	00113c23          	sd	ra,24(sp)
    80005af4:	00813823          	sd	s0,16(sp)
    80005af8:	00913423          	sd	s1,8(sp)
    80005afc:	02010413          	addi	s0,sp,32
    80005b00:	00050493          	mv	s1,a0
    80005b04:	00004797          	auipc	a5,0x4
    80005b08:	a2478793          	addi	a5,a5,-1500 # 80009528 <_ZTV7WorkerC+0x10>
    80005b0c:	00f53023          	sd	a5,0(a0)
    80005b10:	ffffd097          	auipc	ra,0xffffd
    80005b14:	a90080e7          	jalr	-1392(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80005b18:	00048513          	mv	a0,s1
    80005b1c:	ffffd097          	auipc	ra,0xffffd
    80005b20:	b48080e7          	jalr	-1208(ra) # 80002664 <_ZdlPv>
    80005b24:	01813083          	ld	ra,24(sp)
    80005b28:	01013403          	ld	s0,16(sp)
    80005b2c:	00813483          	ld	s1,8(sp)
    80005b30:	02010113          	addi	sp,sp,32
    80005b34:	00008067          	ret

0000000080005b38 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80005b38:	ff010113          	addi	sp,sp,-16
    80005b3c:	00113423          	sd	ra,8(sp)
    80005b40:	00813023          	sd	s0,0(sp)
    80005b44:	01010413          	addi	s0,sp,16
    80005b48:	00004797          	auipc	a5,0x4
    80005b4c:	a0878793          	addi	a5,a5,-1528 # 80009550 <_ZTV7WorkerD+0x10>
    80005b50:	00f53023          	sd	a5,0(a0)
    80005b54:	ffffd097          	auipc	ra,0xffffd
    80005b58:	a4c080e7          	jalr	-1460(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80005b5c:	00813083          	ld	ra,8(sp)
    80005b60:	00013403          	ld	s0,0(sp)
    80005b64:	01010113          	addi	sp,sp,16
    80005b68:	00008067          	ret

0000000080005b6c <_ZN7WorkerDD0Ev>:
    80005b6c:	fe010113          	addi	sp,sp,-32
    80005b70:	00113c23          	sd	ra,24(sp)
    80005b74:	00813823          	sd	s0,16(sp)
    80005b78:	00913423          	sd	s1,8(sp)
    80005b7c:	02010413          	addi	s0,sp,32
    80005b80:	00050493          	mv	s1,a0
    80005b84:	00004797          	auipc	a5,0x4
    80005b88:	9cc78793          	addi	a5,a5,-1588 # 80009550 <_ZTV7WorkerD+0x10>
    80005b8c:	00f53023          	sd	a5,0(a0)
    80005b90:	ffffd097          	auipc	ra,0xffffd
    80005b94:	a10080e7          	jalr	-1520(ra) # 800025a0 <_ZN6ThreadD1Ev>
    80005b98:	00048513          	mv	a0,s1
    80005b9c:	ffffd097          	auipc	ra,0xffffd
    80005ba0:	ac8080e7          	jalr	-1336(ra) # 80002664 <_ZdlPv>
    80005ba4:	01813083          	ld	ra,24(sp)
    80005ba8:	01013403          	ld	s0,16(sp)
    80005bac:	00813483          	ld	s1,8(sp)
    80005bb0:	02010113          	addi	sp,sp,32
    80005bb4:	00008067          	ret

0000000080005bb8 <_ZN7WorkerA3runEv>:
    void run() override {
    80005bb8:	ff010113          	addi	sp,sp,-16
    80005bbc:	00113423          	sd	ra,8(sp)
    80005bc0:	00813023          	sd	s0,0(sp)
    80005bc4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80005bc8:	00000593          	li	a1,0
    80005bcc:	fffff097          	auipc	ra,0xfffff
    80005bd0:	774080e7          	jalr	1908(ra) # 80005340 <_ZN7WorkerA11workerBodyAEPv>
    }
    80005bd4:	00813083          	ld	ra,8(sp)
    80005bd8:	00013403          	ld	s0,0(sp)
    80005bdc:	01010113          	addi	sp,sp,16
    80005be0:	00008067          	ret

0000000080005be4 <_ZN7WorkerB3runEv>:
    void run() override {
    80005be4:	ff010113          	addi	sp,sp,-16
    80005be8:	00113423          	sd	ra,8(sp)
    80005bec:	00813023          	sd	s0,0(sp)
    80005bf0:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80005bf4:	00000593          	li	a1,0
    80005bf8:	00000097          	auipc	ra,0x0
    80005bfc:	814080e7          	jalr	-2028(ra) # 8000540c <_ZN7WorkerB11workerBodyBEPv>
    }
    80005c00:	00813083          	ld	ra,8(sp)
    80005c04:	00013403          	ld	s0,0(sp)
    80005c08:	01010113          	addi	sp,sp,16
    80005c0c:	00008067          	ret

0000000080005c10 <_ZN7WorkerC3runEv>:
    void run() override {
    80005c10:	ff010113          	addi	sp,sp,-16
    80005c14:	00113423          	sd	ra,8(sp)
    80005c18:	00813023          	sd	s0,0(sp)
    80005c1c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80005c20:	00000593          	li	a1,0
    80005c24:	00000097          	auipc	ra,0x0
    80005c28:	8bc080e7          	jalr	-1860(ra) # 800054e0 <_ZN7WorkerC11workerBodyCEPv>
    }
    80005c2c:	00813083          	ld	ra,8(sp)
    80005c30:	00013403          	ld	s0,0(sp)
    80005c34:	01010113          	addi	sp,sp,16
    80005c38:	00008067          	ret

0000000080005c3c <_ZN7WorkerD3runEv>:
    void run() override {
    80005c3c:	ff010113          	addi	sp,sp,-16
    80005c40:	00113423          	sd	ra,8(sp)
    80005c44:	00813023          	sd	s0,0(sp)
    80005c48:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80005c4c:	00000593          	li	a1,0
    80005c50:	00000097          	auipc	ra,0x0
    80005c54:	a10080e7          	jalr	-1520(ra) # 80005660 <_ZN7WorkerD11workerBodyDEPv>
    }
    80005c58:	00813083          	ld	ra,8(sp)
    80005c5c:	00013403          	ld	s0,0(sp)
    80005c60:	01010113          	addi	sp,sp,16
    80005c64:	00008067          	ret

0000000080005c68 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005c68:	fe010113          	addi	sp,sp,-32
    80005c6c:	00113c23          	sd	ra,24(sp)
    80005c70:	00813823          	sd	s0,16(sp)
    80005c74:	00913423          	sd	s1,8(sp)
    80005c78:	01213023          	sd	s2,0(sp)
    80005c7c:	02010413          	addi	s0,sp,32
    80005c80:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005c84:	00100793          	li	a5,1
    80005c88:	02a7f863          	bgeu	a5,a0,80005cb8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005c8c:	00a00793          	li	a5,10
    80005c90:	02f577b3          	remu	a5,a0,a5
    80005c94:	02078e63          	beqz	a5,80005cd0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005c98:	fff48513          	addi	a0,s1,-1
    80005c9c:	00000097          	auipc	ra,0x0
    80005ca0:	fcc080e7          	jalr	-52(ra) # 80005c68 <_ZL9fibonaccim>
    80005ca4:	00050913          	mv	s2,a0
    80005ca8:	ffe48513          	addi	a0,s1,-2
    80005cac:	00000097          	auipc	ra,0x0
    80005cb0:	fbc080e7          	jalr	-68(ra) # 80005c68 <_ZL9fibonaccim>
    80005cb4:	00a90533          	add	a0,s2,a0
}
    80005cb8:	01813083          	ld	ra,24(sp)
    80005cbc:	01013403          	ld	s0,16(sp)
    80005cc0:	00813483          	ld	s1,8(sp)
    80005cc4:	00013903          	ld	s2,0(sp)
    80005cc8:	02010113          	addi	sp,sp,32
    80005ccc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005cd0:	ffffc097          	auipc	ra,0xffffc
    80005cd4:	624080e7          	jalr	1572(ra) # 800022f4 <_Z15thread_dispatchv>
    80005cd8:	fc1ff06f          	j	80005c98 <_ZL9fibonaccim+0x30>

0000000080005cdc <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005cdc:	fe010113          	addi	sp,sp,-32
    80005ce0:	00113c23          	sd	ra,24(sp)
    80005ce4:	00813823          	sd	s0,16(sp)
    80005ce8:	00913423          	sd	s1,8(sp)
    80005cec:	01213023          	sd	s2,0(sp)
    80005cf0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005cf4:	00a00493          	li	s1,10
    80005cf8:	0400006f          	j	80005d38 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005cfc:	00003517          	auipc	a0,0x3
    80005d00:	6c450513          	addi	a0,a0,1732 # 800093c0 <_ZTV12ConsumerSync+0x28>
    80005d04:	fffff097          	auipc	ra,0xfffff
    80005d08:	be4080e7          	jalr	-1052(ra) # 800048e8 <_Z11printStringPKc>
    80005d0c:	00000613          	li	a2,0
    80005d10:	00a00593          	li	a1,10
    80005d14:	00048513          	mv	a0,s1
    80005d18:	fffff097          	auipc	ra,0xfffff
    80005d1c:	d80080e7          	jalr	-640(ra) # 80004a98 <_Z8printIntiii>
    80005d20:	00004517          	auipc	a0,0x4
    80005d24:	98850513          	addi	a0,a0,-1656 # 800096a8 <_ZTV7WorkerD+0x168>
    80005d28:	fffff097          	auipc	ra,0xfffff
    80005d2c:	bc0080e7          	jalr	-1088(ra) # 800048e8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005d30:	0014849b          	addiw	s1,s1,1
    80005d34:	0ff4f493          	andi	s1,s1,255
    80005d38:	00c00793          	li	a5,12
    80005d3c:	fc97f0e3          	bgeu	a5,s1,80005cfc <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005d40:	00003517          	auipc	a0,0x3
    80005d44:	68850513          	addi	a0,a0,1672 # 800093c8 <_ZTV12ConsumerSync+0x30>
    80005d48:	fffff097          	auipc	ra,0xfffff
    80005d4c:	ba0080e7          	jalr	-1120(ra) # 800048e8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005d50:	00500313          	li	t1,5
    thread_dispatch();
    80005d54:	ffffc097          	auipc	ra,0xffffc
    80005d58:	5a0080e7          	jalr	1440(ra) # 800022f4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005d5c:	01000513          	li	a0,16
    80005d60:	00000097          	auipc	ra,0x0
    80005d64:	f08080e7          	jalr	-248(ra) # 80005c68 <_ZL9fibonaccim>
    80005d68:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005d6c:	00003517          	auipc	a0,0x3
    80005d70:	66c50513          	addi	a0,a0,1644 # 800093d8 <_ZTV12ConsumerSync+0x40>
    80005d74:	fffff097          	auipc	ra,0xfffff
    80005d78:	b74080e7          	jalr	-1164(ra) # 800048e8 <_Z11printStringPKc>
    80005d7c:	00000613          	li	a2,0
    80005d80:	00a00593          	li	a1,10
    80005d84:	0009051b          	sext.w	a0,s2
    80005d88:	fffff097          	auipc	ra,0xfffff
    80005d8c:	d10080e7          	jalr	-752(ra) # 80004a98 <_Z8printIntiii>
    80005d90:	00004517          	auipc	a0,0x4
    80005d94:	91850513          	addi	a0,a0,-1768 # 800096a8 <_ZTV7WorkerD+0x168>
    80005d98:	fffff097          	auipc	ra,0xfffff
    80005d9c:	b50080e7          	jalr	-1200(ra) # 800048e8 <_Z11printStringPKc>
    80005da0:	0400006f          	j	80005de0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005da4:	00003517          	auipc	a0,0x3
    80005da8:	61c50513          	addi	a0,a0,1564 # 800093c0 <_ZTV12ConsumerSync+0x28>
    80005dac:	fffff097          	auipc	ra,0xfffff
    80005db0:	b3c080e7          	jalr	-1220(ra) # 800048e8 <_Z11printStringPKc>
    80005db4:	00000613          	li	a2,0
    80005db8:	00a00593          	li	a1,10
    80005dbc:	00048513          	mv	a0,s1
    80005dc0:	fffff097          	auipc	ra,0xfffff
    80005dc4:	cd8080e7          	jalr	-808(ra) # 80004a98 <_Z8printIntiii>
    80005dc8:	00004517          	auipc	a0,0x4
    80005dcc:	8e050513          	addi	a0,a0,-1824 # 800096a8 <_ZTV7WorkerD+0x168>
    80005dd0:	fffff097          	auipc	ra,0xfffff
    80005dd4:	b18080e7          	jalr	-1256(ra) # 800048e8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005dd8:	0014849b          	addiw	s1,s1,1
    80005ddc:	0ff4f493          	andi	s1,s1,255
    80005de0:	00f00793          	li	a5,15
    80005de4:	fc97f0e3          	bgeu	a5,s1,80005da4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005de8:	00003517          	auipc	a0,0x3
    80005dec:	60050513          	addi	a0,a0,1536 # 800093e8 <_ZTV12ConsumerSync+0x50>
    80005df0:	fffff097          	auipc	ra,0xfffff
    80005df4:	af8080e7          	jalr	-1288(ra) # 800048e8 <_Z11printStringPKc>
    finishedD = true;
    80005df8:	00100793          	li	a5,1
    80005dfc:	00006717          	auipc	a4,0x6
    80005e00:	a0f70523          	sb	a5,-1526(a4) # 8000b806 <_ZL9finishedD>
    thread_dispatch();
    80005e04:	ffffc097          	auipc	ra,0xffffc
    80005e08:	4f0080e7          	jalr	1264(ra) # 800022f4 <_Z15thread_dispatchv>
}
    80005e0c:	01813083          	ld	ra,24(sp)
    80005e10:	01013403          	ld	s0,16(sp)
    80005e14:	00813483          	ld	s1,8(sp)
    80005e18:	00013903          	ld	s2,0(sp)
    80005e1c:	02010113          	addi	sp,sp,32
    80005e20:	00008067          	ret

0000000080005e24 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005e24:	fe010113          	addi	sp,sp,-32
    80005e28:	00113c23          	sd	ra,24(sp)
    80005e2c:	00813823          	sd	s0,16(sp)
    80005e30:	00913423          	sd	s1,8(sp)
    80005e34:	01213023          	sd	s2,0(sp)
    80005e38:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005e3c:	00000493          	li	s1,0
    80005e40:	0400006f          	j	80005e80 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005e44:	00003517          	auipc	a0,0x3
    80005e48:	5b450513          	addi	a0,a0,1460 # 800093f8 <_ZTV12ConsumerSync+0x60>
    80005e4c:	fffff097          	auipc	ra,0xfffff
    80005e50:	a9c080e7          	jalr	-1380(ra) # 800048e8 <_Z11printStringPKc>
    80005e54:	00000613          	li	a2,0
    80005e58:	00a00593          	li	a1,10
    80005e5c:	00048513          	mv	a0,s1
    80005e60:	fffff097          	auipc	ra,0xfffff
    80005e64:	c38080e7          	jalr	-968(ra) # 80004a98 <_Z8printIntiii>
    80005e68:	00004517          	auipc	a0,0x4
    80005e6c:	84050513          	addi	a0,a0,-1984 # 800096a8 <_ZTV7WorkerD+0x168>
    80005e70:	fffff097          	auipc	ra,0xfffff
    80005e74:	a78080e7          	jalr	-1416(ra) # 800048e8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005e78:	0014849b          	addiw	s1,s1,1
    80005e7c:	0ff4f493          	andi	s1,s1,255
    80005e80:	00200793          	li	a5,2
    80005e84:	fc97f0e3          	bgeu	a5,s1,80005e44 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005e88:	00003517          	auipc	a0,0x3
    80005e8c:	57850513          	addi	a0,a0,1400 # 80009400 <_ZTV12ConsumerSync+0x68>
    80005e90:	fffff097          	auipc	ra,0xfffff
    80005e94:	a58080e7          	jalr	-1448(ra) # 800048e8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005e98:	00700313          	li	t1,7
    thread_dispatch();
    80005e9c:	ffffc097          	auipc	ra,0xffffc
    80005ea0:	458080e7          	jalr	1112(ra) # 800022f4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005ea4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005ea8:	00003517          	auipc	a0,0x3
    80005eac:	56850513          	addi	a0,a0,1384 # 80009410 <_ZTV12ConsumerSync+0x78>
    80005eb0:	fffff097          	auipc	ra,0xfffff
    80005eb4:	a38080e7          	jalr	-1480(ra) # 800048e8 <_Z11printStringPKc>
    80005eb8:	00000613          	li	a2,0
    80005ebc:	00a00593          	li	a1,10
    80005ec0:	0009051b          	sext.w	a0,s2
    80005ec4:	fffff097          	auipc	ra,0xfffff
    80005ec8:	bd4080e7          	jalr	-1068(ra) # 80004a98 <_Z8printIntiii>
    80005ecc:	00003517          	auipc	a0,0x3
    80005ed0:	7dc50513          	addi	a0,a0,2012 # 800096a8 <_ZTV7WorkerD+0x168>
    80005ed4:	fffff097          	auipc	ra,0xfffff
    80005ed8:	a14080e7          	jalr	-1516(ra) # 800048e8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005edc:	00c00513          	li	a0,12
    80005ee0:	00000097          	auipc	ra,0x0
    80005ee4:	d88080e7          	jalr	-632(ra) # 80005c68 <_ZL9fibonaccim>
    80005ee8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005eec:	00003517          	auipc	a0,0x3
    80005ef0:	52c50513          	addi	a0,a0,1324 # 80009418 <_ZTV12ConsumerSync+0x80>
    80005ef4:	fffff097          	auipc	ra,0xfffff
    80005ef8:	9f4080e7          	jalr	-1548(ra) # 800048e8 <_Z11printStringPKc>
    80005efc:	00000613          	li	a2,0
    80005f00:	00a00593          	li	a1,10
    80005f04:	0009051b          	sext.w	a0,s2
    80005f08:	fffff097          	auipc	ra,0xfffff
    80005f0c:	b90080e7          	jalr	-1136(ra) # 80004a98 <_Z8printIntiii>
    80005f10:	00003517          	auipc	a0,0x3
    80005f14:	79850513          	addi	a0,a0,1944 # 800096a8 <_ZTV7WorkerD+0x168>
    80005f18:	fffff097          	auipc	ra,0xfffff
    80005f1c:	9d0080e7          	jalr	-1584(ra) # 800048e8 <_Z11printStringPKc>
    80005f20:	0400006f          	j	80005f60 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005f24:	00003517          	auipc	a0,0x3
    80005f28:	4d450513          	addi	a0,a0,1236 # 800093f8 <_ZTV12ConsumerSync+0x60>
    80005f2c:	fffff097          	auipc	ra,0xfffff
    80005f30:	9bc080e7          	jalr	-1604(ra) # 800048e8 <_Z11printStringPKc>
    80005f34:	00000613          	li	a2,0
    80005f38:	00a00593          	li	a1,10
    80005f3c:	00048513          	mv	a0,s1
    80005f40:	fffff097          	auipc	ra,0xfffff
    80005f44:	b58080e7          	jalr	-1192(ra) # 80004a98 <_Z8printIntiii>
    80005f48:	00003517          	auipc	a0,0x3
    80005f4c:	76050513          	addi	a0,a0,1888 # 800096a8 <_ZTV7WorkerD+0x168>
    80005f50:	fffff097          	auipc	ra,0xfffff
    80005f54:	998080e7          	jalr	-1640(ra) # 800048e8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005f58:	0014849b          	addiw	s1,s1,1
    80005f5c:	0ff4f493          	andi	s1,s1,255
    80005f60:	00500793          	li	a5,5
    80005f64:	fc97f0e3          	bgeu	a5,s1,80005f24 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005f68:	00003517          	auipc	a0,0x3
    80005f6c:	4c050513          	addi	a0,a0,1216 # 80009428 <_ZTV12ConsumerSync+0x90>
    80005f70:	fffff097          	auipc	ra,0xfffff
    80005f74:	978080e7          	jalr	-1672(ra) # 800048e8 <_Z11printStringPKc>
    finishedC = true;
    80005f78:	00100793          	li	a5,1
    80005f7c:	00006717          	auipc	a4,0x6
    80005f80:	88f705a3          	sb	a5,-1909(a4) # 8000b807 <_ZL9finishedC>
    thread_dispatch();
    80005f84:	ffffc097          	auipc	ra,0xffffc
    80005f88:	370080e7          	jalr	880(ra) # 800022f4 <_Z15thread_dispatchv>
}
    80005f8c:	01813083          	ld	ra,24(sp)
    80005f90:	01013403          	ld	s0,16(sp)
    80005f94:	00813483          	ld	s1,8(sp)
    80005f98:	00013903          	ld	s2,0(sp)
    80005f9c:	02010113          	addi	sp,sp,32
    80005fa0:	00008067          	ret

0000000080005fa4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005fa4:	fe010113          	addi	sp,sp,-32
    80005fa8:	00113c23          	sd	ra,24(sp)
    80005fac:	00813823          	sd	s0,16(sp)
    80005fb0:	00913423          	sd	s1,8(sp)
    80005fb4:	01213023          	sd	s2,0(sp)
    80005fb8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005fbc:	00000913          	li	s2,0
    80005fc0:	0380006f          	j	80005ff8 <_ZL11workerBodyBPv+0x54>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005fc4:	00170713          	addi	a4,a4,1
    80005fc8:	000077b7          	lui	a5,0x7
    80005fcc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005fd0:	fee7fae3          	bgeu	a5,a4,80005fc4 <_ZL11workerBodyBPv+0x20>
            thread_dispatch();
    80005fd4:	ffffc097          	auipc	ra,0xffffc
    80005fd8:	320080e7          	jalr	800(ra) # 800022f4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005fdc:	00148493          	addi	s1,s1,1
    80005fe0:	000027b7          	lui	a5,0x2
    80005fe4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005fe8:	0097e663          	bltu	a5,s1,80005ff4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005fec:	00000713          	li	a4,0
    80005ff0:	fd9ff06f          	j	80005fc8 <_ZL11workerBodyBPv+0x24>
    for (uint64 i = 0; i < 16; i++) {
    80005ff4:	00190913          	addi	s2,s2,1
    80005ff8:	00f00793          	li	a5,15
    80005ffc:	0527e063          	bltu	a5,s2,8000603c <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80006000:	00003517          	auipc	a0,0x3
    80006004:	43850513          	addi	a0,a0,1080 # 80009438 <_ZTV12ConsumerSync+0xa0>
    80006008:	fffff097          	auipc	ra,0xfffff
    8000600c:	8e0080e7          	jalr	-1824(ra) # 800048e8 <_Z11printStringPKc>
    80006010:	00000613          	li	a2,0
    80006014:	00a00593          	li	a1,10
    80006018:	0009051b          	sext.w	a0,s2
    8000601c:	fffff097          	auipc	ra,0xfffff
    80006020:	a7c080e7          	jalr	-1412(ra) # 80004a98 <_Z8printIntiii>
    80006024:	00003517          	auipc	a0,0x3
    80006028:	68450513          	addi	a0,a0,1668 # 800096a8 <_ZTV7WorkerD+0x168>
    8000602c:	fffff097          	auipc	ra,0xfffff
    80006030:	8bc080e7          	jalr	-1860(ra) # 800048e8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006034:	00000493          	li	s1,0
    80006038:	fa9ff06f          	j	80005fe0 <_ZL11workerBodyBPv+0x3c>
    printString("B finished!\n");
    8000603c:	00003517          	auipc	a0,0x3
    80006040:	40450513          	addi	a0,a0,1028 # 80009440 <_ZTV12ConsumerSync+0xa8>
    80006044:	fffff097          	auipc	ra,0xfffff
    80006048:	8a4080e7          	jalr	-1884(ra) # 800048e8 <_Z11printStringPKc>
    finishedB = true;
    8000604c:	00100793          	li	a5,1
    80006050:	00005717          	auipc	a4,0x5
    80006054:	7af70c23          	sb	a5,1976(a4) # 8000b808 <_ZL9finishedB>
    thread_dispatch();
    80006058:	ffffc097          	auipc	ra,0xffffc
    8000605c:	29c080e7          	jalr	668(ra) # 800022f4 <_Z15thread_dispatchv>
}
    80006060:	01813083          	ld	ra,24(sp)
    80006064:	01013403          	ld	s0,16(sp)
    80006068:	00813483          	ld	s1,8(sp)
    8000606c:	00013903          	ld	s2,0(sp)
    80006070:	02010113          	addi	sp,sp,32
    80006074:	00008067          	ret

0000000080006078 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006078:	fe010113          	addi	sp,sp,-32
    8000607c:	00113c23          	sd	ra,24(sp)
    80006080:	00813823          	sd	s0,16(sp)
    80006084:	00913423          	sd	s1,8(sp)
    80006088:	01213023          	sd	s2,0(sp)
    8000608c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006090:	00000913          	li	s2,0
    80006094:	0380006f          	j	800060cc <_ZL11workerBodyAPv+0x54>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006098:	00170713          	addi	a4,a4,1
    8000609c:	000077b7          	lui	a5,0x7
    800060a0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800060a4:	fee7fae3          	bgeu	a5,a4,80006098 <_ZL11workerBodyAPv+0x20>
            thread_dispatch();
    800060a8:	ffffc097          	auipc	ra,0xffffc
    800060ac:	24c080e7          	jalr	588(ra) # 800022f4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800060b0:	00148493          	addi	s1,s1,1
    800060b4:	000027b7          	lui	a5,0x2
    800060b8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800060bc:	0097e663          	bltu	a5,s1,800060c8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800060c0:	00000713          	li	a4,0
    800060c4:	fd9ff06f          	j	8000609c <_ZL11workerBodyAPv+0x24>
    for (uint64 i = 0; i < 10; i++) {
    800060c8:	00190913          	addi	s2,s2,1
    800060cc:	00900793          	li	a5,9
    800060d0:	0527e063          	bltu	a5,s2,80006110 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800060d4:	00003517          	auipc	a0,0x3
    800060d8:	37c50513          	addi	a0,a0,892 # 80009450 <_ZTV12ConsumerSync+0xb8>
    800060dc:	fffff097          	auipc	ra,0xfffff
    800060e0:	80c080e7          	jalr	-2036(ra) # 800048e8 <_Z11printStringPKc>
    800060e4:	00000613          	li	a2,0
    800060e8:	00a00593          	li	a1,10
    800060ec:	0009051b          	sext.w	a0,s2
    800060f0:	fffff097          	auipc	ra,0xfffff
    800060f4:	9a8080e7          	jalr	-1624(ra) # 80004a98 <_Z8printIntiii>
    800060f8:	00003517          	auipc	a0,0x3
    800060fc:	5b050513          	addi	a0,a0,1456 # 800096a8 <_ZTV7WorkerD+0x168>
    80006100:	ffffe097          	auipc	ra,0xffffe
    80006104:	7e8080e7          	jalr	2024(ra) # 800048e8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006108:	00000493          	li	s1,0
    8000610c:	fa9ff06f          	j	800060b4 <_ZL11workerBodyAPv+0x3c>
    printString("A finished!\n");
    80006110:	00003517          	auipc	a0,0x3
    80006114:	31850513          	addi	a0,a0,792 # 80009428 <_ZTV12ConsumerSync+0x90>
    80006118:	ffffe097          	auipc	ra,0xffffe
    8000611c:	7d0080e7          	jalr	2000(ra) # 800048e8 <_Z11printStringPKc>
    finishedA = true;
    80006120:	00100793          	li	a5,1
    80006124:	00005717          	auipc	a4,0x5
    80006128:	6ef702a3          	sb	a5,1765(a4) # 8000b809 <_ZL9finishedA>
}
    8000612c:	01813083          	ld	ra,24(sp)
    80006130:	01013403          	ld	s0,16(sp)
    80006134:	00813483          	ld	s1,8(sp)
    80006138:	00013903          	ld	s2,0(sp)
    8000613c:	02010113          	addi	sp,sp,32
    80006140:	00008067          	ret

0000000080006144 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80006144:	fd010113          	addi	sp,sp,-48
    80006148:	02113423          	sd	ra,40(sp)
    8000614c:	02813023          	sd	s0,32(sp)
    80006150:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006154:	00000613          	li	a2,0
    80006158:	00000597          	auipc	a1,0x0
    8000615c:	f2058593          	addi	a1,a1,-224 # 80006078 <_ZL11workerBodyAPv>
    80006160:	fd040513          	addi	a0,s0,-48
    80006164:	ffffc097          	auipc	ra,0xffffc
    80006168:	104080e7          	jalr	260(ra) # 80002268 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    8000616c:	00003517          	auipc	a0,0x3
    80006170:	2ec50513          	addi	a0,a0,748 # 80009458 <_ZTV12ConsumerSync+0xc0>
    80006174:	ffffe097          	auipc	ra,0xffffe
    80006178:	774080e7          	jalr	1908(ra) # 800048e8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000617c:	00000613          	li	a2,0
    80006180:	00000597          	auipc	a1,0x0
    80006184:	e2458593          	addi	a1,a1,-476 # 80005fa4 <_ZL11workerBodyBPv>
    80006188:	fd840513          	addi	a0,s0,-40
    8000618c:	ffffc097          	auipc	ra,0xffffc
    80006190:	0dc080e7          	jalr	220(ra) # 80002268 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80006194:	00003517          	auipc	a0,0x3
    80006198:	2dc50513          	addi	a0,a0,732 # 80009470 <_ZTV12ConsumerSync+0xd8>
    8000619c:	ffffe097          	auipc	ra,0xffffe
    800061a0:	74c080e7          	jalr	1868(ra) # 800048e8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800061a4:	00000613          	li	a2,0
    800061a8:	00000597          	auipc	a1,0x0
    800061ac:	c7c58593          	addi	a1,a1,-900 # 80005e24 <_ZL11workerBodyCPv>
    800061b0:	fe040513          	addi	a0,s0,-32
    800061b4:	ffffc097          	auipc	ra,0xffffc
    800061b8:	0b4080e7          	jalr	180(ra) # 80002268 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    800061bc:	00003517          	auipc	a0,0x3
    800061c0:	2cc50513          	addi	a0,a0,716 # 80009488 <_ZTV12ConsumerSync+0xf0>
    800061c4:	ffffe097          	auipc	ra,0xffffe
    800061c8:	724080e7          	jalr	1828(ra) # 800048e8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800061cc:	00000613          	li	a2,0
    800061d0:	00000597          	auipc	a1,0x0
    800061d4:	b0c58593          	addi	a1,a1,-1268 # 80005cdc <_ZL11workerBodyDPv>
    800061d8:	fe840513          	addi	a0,s0,-24
    800061dc:	ffffc097          	auipc	ra,0xffffc
    800061e0:	08c080e7          	jalr	140(ra) # 80002268 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    800061e4:	00003517          	auipc	a0,0x3
    800061e8:	2bc50513          	addi	a0,a0,700 # 800094a0 <_ZTV12ConsumerSync+0x108>
    800061ec:	ffffe097          	auipc	ra,0xffffe
    800061f0:	6fc080e7          	jalr	1788(ra) # 800048e8 <_Z11printStringPKc>
    800061f4:	00c0006f          	j	80006200 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800061f8:	ffffc097          	auipc	ra,0xffffc
    800061fc:	0fc080e7          	jalr	252(ra) # 800022f4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006200:	00005797          	auipc	a5,0x5
    80006204:	6097c783          	lbu	a5,1545(a5) # 8000b809 <_ZL9finishedA>
    80006208:	fe0788e3          	beqz	a5,800061f8 <_Z18Threads_C_API_testv+0xb4>
    8000620c:	00005797          	auipc	a5,0x5
    80006210:	5fc7c783          	lbu	a5,1532(a5) # 8000b808 <_ZL9finishedB>
    80006214:	fe0782e3          	beqz	a5,800061f8 <_Z18Threads_C_API_testv+0xb4>
    80006218:	00005797          	auipc	a5,0x5
    8000621c:	5ef7c783          	lbu	a5,1519(a5) # 8000b807 <_ZL9finishedC>
    80006220:	fc078ce3          	beqz	a5,800061f8 <_Z18Threads_C_API_testv+0xb4>
    80006224:	00005797          	auipc	a5,0x5
    80006228:	5e27c783          	lbu	a5,1506(a5) # 8000b806 <_ZL9finishedD>
    8000622c:	fc0786e3          	beqz	a5,800061f8 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80006230:	02813083          	ld	ra,40(sp)
    80006234:	02013403          	ld	s0,32(sp)
    80006238:	03010113          	addi	sp,sp,48
    8000623c:	00008067          	ret

0000000080006240 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80006240:	fe010113          	addi	sp,sp,-32
    80006244:	00113c23          	sd	ra,24(sp)
    80006248:	00813823          	sd	s0,16(sp)
    8000624c:	00913423          	sd	s1,8(sp)
    80006250:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80006254:	00003517          	auipc	a0,0x3
    80006258:	31450513          	addi	a0,a0,788 # 80009568 <_ZTV7WorkerD+0x28>
    8000625c:	ffffe097          	auipc	ra,0xffffe
    80006260:	68c080e7          	jalr	1676(ra) # 800048e8 <_Z11printStringPKc>
    int test = getc() - '0';
    80006264:	ffffc097          	auipc	ra,0xffffc
    80006268:	294080e7          	jalr	660(ra) # 800024f8 <_Z4getcv>
    8000626c:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80006270:	ffffc097          	auipc	ra,0xffffc
    80006274:	288080e7          	jalr	648(ra) # 800024f8 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80006278:	00700793          	li	a5,7
    8000627c:	1097e263          	bltu	a5,s1,80006380 <_Z8userMainv+0x140>
    80006280:	00249493          	slli	s1,s1,0x2
    80006284:	00003717          	auipc	a4,0x3
    80006288:	53c70713          	addi	a4,a4,1340 # 800097c0 <_ZTV7WorkerD+0x280>
    8000628c:	00e484b3          	add	s1,s1,a4
    80006290:	0004a783          	lw	a5,0(s1)
    80006294:	00e787b3          	add	a5,a5,a4
    80006298:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    8000629c:	00000097          	auipc	ra,0x0
    800062a0:	ea8080e7          	jalr	-344(ra) # 80006144 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800062a4:	00003517          	auipc	a0,0x3
    800062a8:	2e450513          	addi	a0,a0,740 # 80009588 <_ZTV7WorkerD+0x48>
    800062ac:	ffffe097          	auipc	ra,0xffffe
    800062b0:	63c080e7          	jalr	1596(ra) # 800048e8 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800062b4:	01813083          	ld	ra,24(sp)
    800062b8:	01013403          	ld	s0,16(sp)
    800062bc:	00813483          	ld	s1,8(sp)
    800062c0:	02010113          	addi	sp,sp,32
    800062c4:	00008067          	ret
            Threads_CPP_API_test();
    800062c8:	fffff097          	auipc	ra,0xfffff
    800062cc:	4e0080e7          	jalr	1248(ra) # 800057a8 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800062d0:	00003517          	auipc	a0,0x3
    800062d4:	2f850513          	addi	a0,a0,760 # 800095c8 <_ZTV7WorkerD+0x88>
    800062d8:	ffffe097          	auipc	ra,0xffffe
    800062dc:	610080e7          	jalr	1552(ra) # 800048e8 <_Z11printStringPKc>
            break;
    800062e0:	fd5ff06f          	j	800062b4 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    800062e4:	ffffe097          	auipc	ra,0xffffe
    800062e8:	338080e7          	jalr	824(ra) # 8000461c <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800062ec:	00003517          	auipc	a0,0x3
    800062f0:	31c50513          	addi	a0,a0,796 # 80009608 <_ZTV7WorkerD+0xc8>
    800062f4:	ffffe097          	auipc	ra,0xffffe
    800062f8:	5f4080e7          	jalr	1524(ra) # 800048e8 <_Z11printStringPKc>
            break;
    800062fc:	fb9ff06f          	j	800062b4 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80006300:	ffffe097          	auipc	ra,0xffffe
    80006304:	ac4080e7          	jalr	-1340(ra) # 80003dc4 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80006308:	00003517          	auipc	a0,0x3
    8000630c:	35050513          	addi	a0,a0,848 # 80009658 <_ZTV7WorkerD+0x118>
    80006310:	ffffe097          	auipc	ra,0xffffe
    80006314:	5d8080e7          	jalr	1496(ra) # 800048e8 <_Z11printStringPKc>
            break;
    80006318:	f9dff06f          	j	800062b4 <_Z8userMainv+0x74>
            testSleeping();
    8000631c:	fffff097          	auipc	ra,0xfffff
    80006320:	f28080e7          	jalr	-216(ra) # 80005244 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80006324:	00003517          	auipc	a0,0x3
    80006328:	38c50513          	addi	a0,a0,908 # 800096b0 <_ZTV7WorkerD+0x170>
    8000632c:	ffffe097          	auipc	ra,0xffffe
    80006330:	5bc080e7          	jalr	1468(ra) # 800048e8 <_Z11printStringPKc>
            break;
    80006334:	f81ff06f          	j	800062b4 <_Z8userMainv+0x74>
            testConsumerProducer();
    80006338:	ffffd097          	auipc	ra,0xffffd
    8000633c:	0d4080e7          	jalr	212(ra) # 8000340c <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80006340:	00003517          	auipc	a0,0x3
    80006344:	3a050513          	addi	a0,a0,928 # 800096e0 <_ZTV7WorkerD+0x1a0>
    80006348:	ffffe097          	auipc	ra,0xffffe
    8000634c:	5a0080e7          	jalr	1440(ra) # 800048e8 <_Z11printStringPKc>
            break;
    80006350:	f65ff06f          	j	800062b4 <_Z8userMainv+0x74>
            System_Mode_test();
    80006354:	fffff097          	auipc	ra,0xfffff
    80006358:	d50080e7          	jalr	-688(ra) # 800050a4 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    8000635c:	00003517          	auipc	a0,0x3
    80006360:	3c450513          	addi	a0,a0,964 # 80009720 <_ZTV7WorkerD+0x1e0>
    80006364:	ffffe097          	auipc	ra,0xffffe
    80006368:	584080e7          	jalr	1412(ra) # 800048e8 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    8000636c:	00003517          	auipc	a0,0x3
    80006370:	3d450513          	addi	a0,a0,980 # 80009740 <_ZTV7WorkerD+0x200>
    80006374:	ffffe097          	auipc	ra,0xffffe
    80006378:	574080e7          	jalr	1396(ra) # 800048e8 <_Z11printStringPKc>
            break;
    8000637c:	f39ff06f          	j	800062b4 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80006380:	00003517          	auipc	a0,0x3
    80006384:	41850513          	addi	a0,a0,1048 # 80009798 <_ZTV7WorkerD+0x258>
    80006388:	ffffe097          	auipc	ra,0xffffe
    8000638c:	560080e7          	jalr	1376(ra) # 800048e8 <_Z11printStringPKc>
    80006390:	f25ff06f          	j	800062b4 <_Z8userMainv+0x74>

0000000080006394 <start>:
    80006394:	ff010113          	addi	sp,sp,-16
    80006398:	00813423          	sd	s0,8(sp)
    8000639c:	01010413          	addi	s0,sp,16
    800063a0:	300027f3          	csrr	a5,mstatus
    800063a4:	ffffe737          	lui	a4,0xffffe
    800063a8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1d5f>
    800063ac:	00e7f7b3          	and	a5,a5,a4
    800063b0:	00001737          	lui	a4,0x1
    800063b4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800063b8:	00e7e7b3          	or	a5,a5,a4
    800063bc:	30079073          	csrw	mstatus,a5
    800063c0:	00000797          	auipc	a5,0x0
    800063c4:	16078793          	addi	a5,a5,352 # 80006520 <system_main>
    800063c8:	34179073          	csrw	mepc,a5
    800063cc:	00000793          	li	a5,0
    800063d0:	18079073          	csrw	satp,a5
    800063d4:	000107b7          	lui	a5,0x10
    800063d8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800063dc:	30279073          	csrw	medeleg,a5
    800063e0:	30379073          	csrw	mideleg,a5
    800063e4:	104027f3          	csrr	a5,sie
    800063e8:	2227e793          	ori	a5,a5,546
    800063ec:	10479073          	csrw	sie,a5
    800063f0:	fff00793          	li	a5,-1
    800063f4:	00a7d793          	srli	a5,a5,0xa
    800063f8:	3b079073          	csrw	pmpaddr0,a5
    800063fc:	00f00793          	li	a5,15
    80006400:	3a079073          	csrw	pmpcfg0,a5
    80006404:	f14027f3          	csrr	a5,mhartid
    80006408:	0200c737          	lui	a4,0x200c
    8000640c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006410:	0007869b          	sext.w	a3,a5
    80006414:	00269713          	slli	a4,a3,0x2
    80006418:	000f4637          	lui	a2,0xf4
    8000641c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006420:	00d70733          	add	a4,a4,a3
    80006424:	0037979b          	slliw	a5,a5,0x3
    80006428:	020046b7          	lui	a3,0x2004
    8000642c:	00d787b3          	add	a5,a5,a3
    80006430:	00c585b3          	add	a1,a1,a2
    80006434:	00371693          	slli	a3,a4,0x3
    80006438:	00005717          	auipc	a4,0x5
    8000643c:	40870713          	addi	a4,a4,1032 # 8000b840 <timer_scratch>
    80006440:	00b7b023          	sd	a1,0(a5)
    80006444:	00d70733          	add	a4,a4,a3
    80006448:	00f73c23          	sd	a5,24(a4)
    8000644c:	02c73023          	sd	a2,32(a4)
    80006450:	34071073          	csrw	mscratch,a4
    80006454:	00000797          	auipc	a5,0x0
    80006458:	6ec78793          	addi	a5,a5,1772 # 80006b40 <timervec>
    8000645c:	30579073          	csrw	mtvec,a5
    80006460:	300027f3          	csrr	a5,mstatus
    80006464:	0087e793          	ori	a5,a5,8
    80006468:	30079073          	csrw	mstatus,a5
    8000646c:	304027f3          	csrr	a5,mie
    80006470:	0807e793          	ori	a5,a5,128
    80006474:	30479073          	csrw	mie,a5
    80006478:	f14027f3          	csrr	a5,mhartid
    8000647c:	0007879b          	sext.w	a5,a5
    80006480:	00078213          	mv	tp,a5
    80006484:	30200073          	mret
    80006488:	00813403          	ld	s0,8(sp)
    8000648c:	01010113          	addi	sp,sp,16
    80006490:	00008067          	ret

0000000080006494 <timerinit>:
    80006494:	ff010113          	addi	sp,sp,-16
    80006498:	00813423          	sd	s0,8(sp)
    8000649c:	01010413          	addi	s0,sp,16
    800064a0:	f14027f3          	csrr	a5,mhartid
    800064a4:	0200c737          	lui	a4,0x200c
    800064a8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800064ac:	0007869b          	sext.w	a3,a5
    800064b0:	00269713          	slli	a4,a3,0x2
    800064b4:	000f4637          	lui	a2,0xf4
    800064b8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800064bc:	00d70733          	add	a4,a4,a3
    800064c0:	0037979b          	slliw	a5,a5,0x3
    800064c4:	020046b7          	lui	a3,0x2004
    800064c8:	00d787b3          	add	a5,a5,a3
    800064cc:	00c585b3          	add	a1,a1,a2
    800064d0:	00371693          	slli	a3,a4,0x3
    800064d4:	00005717          	auipc	a4,0x5
    800064d8:	36c70713          	addi	a4,a4,876 # 8000b840 <timer_scratch>
    800064dc:	00b7b023          	sd	a1,0(a5)
    800064e0:	00d70733          	add	a4,a4,a3
    800064e4:	00f73c23          	sd	a5,24(a4)
    800064e8:	02c73023          	sd	a2,32(a4)
    800064ec:	34071073          	csrw	mscratch,a4
    800064f0:	00000797          	auipc	a5,0x0
    800064f4:	65078793          	addi	a5,a5,1616 # 80006b40 <timervec>
    800064f8:	30579073          	csrw	mtvec,a5
    800064fc:	300027f3          	csrr	a5,mstatus
    80006500:	0087e793          	ori	a5,a5,8
    80006504:	30079073          	csrw	mstatus,a5
    80006508:	304027f3          	csrr	a5,mie
    8000650c:	0807e793          	ori	a5,a5,128
    80006510:	30479073          	csrw	mie,a5
    80006514:	00813403          	ld	s0,8(sp)
    80006518:	01010113          	addi	sp,sp,16
    8000651c:	00008067          	ret

0000000080006520 <system_main>:
    80006520:	fe010113          	addi	sp,sp,-32
    80006524:	00813823          	sd	s0,16(sp)
    80006528:	00913423          	sd	s1,8(sp)
    8000652c:	00113c23          	sd	ra,24(sp)
    80006530:	02010413          	addi	s0,sp,32
    80006534:	00000097          	auipc	ra,0x0
    80006538:	0c4080e7          	jalr	196(ra) # 800065f8 <cpuid>
    8000653c:	00005497          	auipc	s1,0x5
    80006540:	2d048493          	addi	s1,s1,720 # 8000b80c <started>
    80006544:	02050263          	beqz	a0,80006568 <system_main+0x48>
    80006548:	0004a783          	lw	a5,0(s1)
    8000654c:	0007879b          	sext.w	a5,a5
    80006550:	fe078ce3          	beqz	a5,80006548 <system_main+0x28>
    80006554:	0ff0000f          	fence
    80006558:	00003517          	auipc	a0,0x3
    8000655c:	2b850513          	addi	a0,a0,696 # 80009810 <_ZTV7WorkerD+0x2d0>
    80006560:	00001097          	auipc	ra,0x1
    80006564:	a7c080e7          	jalr	-1412(ra) # 80006fdc <panic>
    80006568:	00001097          	auipc	ra,0x1
    8000656c:	9d0080e7          	jalr	-1584(ra) # 80006f38 <consoleinit>
    80006570:	00001097          	auipc	ra,0x1
    80006574:	15c080e7          	jalr	348(ra) # 800076cc <printfinit>
    80006578:	00003517          	auipc	a0,0x3
    8000657c:	13050513          	addi	a0,a0,304 # 800096a8 <_ZTV7WorkerD+0x168>
    80006580:	00001097          	auipc	ra,0x1
    80006584:	ab8080e7          	jalr	-1352(ra) # 80007038 <__printf>
    80006588:	00003517          	auipc	a0,0x3
    8000658c:	25850513          	addi	a0,a0,600 # 800097e0 <_ZTV7WorkerD+0x2a0>
    80006590:	00001097          	auipc	ra,0x1
    80006594:	aa8080e7          	jalr	-1368(ra) # 80007038 <__printf>
    80006598:	00003517          	auipc	a0,0x3
    8000659c:	11050513          	addi	a0,a0,272 # 800096a8 <_ZTV7WorkerD+0x168>
    800065a0:	00001097          	auipc	ra,0x1
    800065a4:	a98080e7          	jalr	-1384(ra) # 80007038 <__printf>
    800065a8:	00001097          	auipc	ra,0x1
    800065ac:	4b0080e7          	jalr	1200(ra) # 80007a58 <kinit>
    800065b0:	00000097          	auipc	ra,0x0
    800065b4:	148080e7          	jalr	328(ra) # 800066f8 <trapinit>
    800065b8:	00000097          	auipc	ra,0x0
    800065bc:	16c080e7          	jalr	364(ra) # 80006724 <trapinithart>
    800065c0:	00000097          	auipc	ra,0x0
    800065c4:	5c0080e7          	jalr	1472(ra) # 80006b80 <plicinit>
    800065c8:	00000097          	auipc	ra,0x0
    800065cc:	5e0080e7          	jalr	1504(ra) # 80006ba8 <plicinithart>
    800065d0:	00000097          	auipc	ra,0x0
    800065d4:	078080e7          	jalr	120(ra) # 80006648 <userinit>
    800065d8:	0ff0000f          	fence
    800065dc:	00100793          	li	a5,1
    800065e0:	00003517          	auipc	a0,0x3
    800065e4:	21850513          	addi	a0,a0,536 # 800097f8 <_ZTV7WorkerD+0x2b8>
    800065e8:	00f4a023          	sw	a5,0(s1)
    800065ec:	00001097          	auipc	ra,0x1
    800065f0:	a4c080e7          	jalr	-1460(ra) # 80007038 <__printf>
    800065f4:	0000006f          	j	800065f4 <system_main+0xd4>

00000000800065f8 <cpuid>:
    800065f8:	ff010113          	addi	sp,sp,-16
    800065fc:	00813423          	sd	s0,8(sp)
    80006600:	01010413          	addi	s0,sp,16
    80006604:	00020513          	mv	a0,tp
    80006608:	00813403          	ld	s0,8(sp)
    8000660c:	0005051b          	sext.w	a0,a0
    80006610:	01010113          	addi	sp,sp,16
    80006614:	00008067          	ret

0000000080006618 <mycpu>:
    80006618:	ff010113          	addi	sp,sp,-16
    8000661c:	00813423          	sd	s0,8(sp)
    80006620:	01010413          	addi	s0,sp,16
    80006624:	00020793          	mv	a5,tp
    80006628:	00813403          	ld	s0,8(sp)
    8000662c:	0007879b          	sext.w	a5,a5
    80006630:	00779793          	slli	a5,a5,0x7
    80006634:	00006517          	auipc	a0,0x6
    80006638:	23c50513          	addi	a0,a0,572 # 8000c870 <cpus>
    8000663c:	00f50533          	add	a0,a0,a5
    80006640:	01010113          	addi	sp,sp,16
    80006644:	00008067          	ret

0000000080006648 <userinit>:
    80006648:	ff010113          	addi	sp,sp,-16
    8000664c:	00813423          	sd	s0,8(sp)
    80006650:	01010413          	addi	s0,sp,16
    80006654:	00813403          	ld	s0,8(sp)
    80006658:	01010113          	addi	sp,sp,16
    8000665c:	ffffb317          	auipc	t1,0xffffb
    80006660:	ee430067          	jr	-284(t1) # 80001540 <main>

0000000080006664 <either_copyout>:
    80006664:	ff010113          	addi	sp,sp,-16
    80006668:	00813023          	sd	s0,0(sp)
    8000666c:	00113423          	sd	ra,8(sp)
    80006670:	01010413          	addi	s0,sp,16
    80006674:	02051663          	bnez	a0,800066a0 <either_copyout+0x3c>
    80006678:	00058513          	mv	a0,a1
    8000667c:	00060593          	mv	a1,a2
    80006680:	0006861b          	sext.w	a2,a3
    80006684:	00002097          	auipc	ra,0x2
    80006688:	c60080e7          	jalr	-928(ra) # 800082e4 <__memmove>
    8000668c:	00813083          	ld	ra,8(sp)
    80006690:	00013403          	ld	s0,0(sp)
    80006694:	00000513          	li	a0,0
    80006698:	01010113          	addi	sp,sp,16
    8000669c:	00008067          	ret
    800066a0:	00003517          	auipc	a0,0x3
    800066a4:	19850513          	addi	a0,a0,408 # 80009838 <_ZTV7WorkerD+0x2f8>
    800066a8:	00001097          	auipc	ra,0x1
    800066ac:	934080e7          	jalr	-1740(ra) # 80006fdc <panic>

00000000800066b0 <either_copyin>:
    800066b0:	ff010113          	addi	sp,sp,-16
    800066b4:	00813023          	sd	s0,0(sp)
    800066b8:	00113423          	sd	ra,8(sp)
    800066bc:	01010413          	addi	s0,sp,16
    800066c0:	02059463          	bnez	a1,800066e8 <either_copyin+0x38>
    800066c4:	00060593          	mv	a1,a2
    800066c8:	0006861b          	sext.w	a2,a3
    800066cc:	00002097          	auipc	ra,0x2
    800066d0:	c18080e7          	jalr	-1000(ra) # 800082e4 <__memmove>
    800066d4:	00813083          	ld	ra,8(sp)
    800066d8:	00013403          	ld	s0,0(sp)
    800066dc:	00000513          	li	a0,0
    800066e0:	01010113          	addi	sp,sp,16
    800066e4:	00008067          	ret
    800066e8:	00003517          	auipc	a0,0x3
    800066ec:	17850513          	addi	a0,a0,376 # 80009860 <_ZTV7WorkerD+0x320>
    800066f0:	00001097          	auipc	ra,0x1
    800066f4:	8ec080e7          	jalr	-1812(ra) # 80006fdc <panic>

00000000800066f8 <trapinit>:
    800066f8:	ff010113          	addi	sp,sp,-16
    800066fc:	00813423          	sd	s0,8(sp)
    80006700:	01010413          	addi	s0,sp,16
    80006704:	00813403          	ld	s0,8(sp)
    80006708:	00003597          	auipc	a1,0x3
    8000670c:	18058593          	addi	a1,a1,384 # 80009888 <_ZTV7WorkerD+0x348>
    80006710:	00006517          	auipc	a0,0x6
    80006714:	1e050513          	addi	a0,a0,480 # 8000c8f0 <tickslock>
    80006718:	01010113          	addi	sp,sp,16
    8000671c:	00001317          	auipc	t1,0x1
    80006720:	5cc30067          	jr	1484(t1) # 80007ce8 <initlock>

0000000080006724 <trapinithart>:
    80006724:	ff010113          	addi	sp,sp,-16
    80006728:	00813423          	sd	s0,8(sp)
    8000672c:	01010413          	addi	s0,sp,16
    80006730:	00000797          	auipc	a5,0x0
    80006734:	30078793          	addi	a5,a5,768 # 80006a30 <kernelvec>
    80006738:	10579073          	csrw	stvec,a5
    8000673c:	00813403          	ld	s0,8(sp)
    80006740:	01010113          	addi	sp,sp,16
    80006744:	00008067          	ret

0000000080006748 <usertrap>:
    80006748:	ff010113          	addi	sp,sp,-16
    8000674c:	00813423          	sd	s0,8(sp)
    80006750:	01010413          	addi	s0,sp,16
    80006754:	00813403          	ld	s0,8(sp)
    80006758:	01010113          	addi	sp,sp,16
    8000675c:	00008067          	ret

0000000080006760 <usertrapret>:
    80006760:	ff010113          	addi	sp,sp,-16
    80006764:	00813423          	sd	s0,8(sp)
    80006768:	01010413          	addi	s0,sp,16
    8000676c:	00813403          	ld	s0,8(sp)
    80006770:	01010113          	addi	sp,sp,16
    80006774:	00008067          	ret

0000000080006778 <kerneltrap>:
    80006778:	fe010113          	addi	sp,sp,-32
    8000677c:	00813823          	sd	s0,16(sp)
    80006780:	00113c23          	sd	ra,24(sp)
    80006784:	00913423          	sd	s1,8(sp)
    80006788:	02010413          	addi	s0,sp,32
    8000678c:	142025f3          	csrr	a1,scause
    80006790:	100027f3          	csrr	a5,sstatus
    80006794:	0027f793          	andi	a5,a5,2
    80006798:	10079c63          	bnez	a5,800068b0 <kerneltrap+0x138>
    8000679c:	142027f3          	csrr	a5,scause
    800067a0:	0207ce63          	bltz	a5,800067dc <kerneltrap+0x64>
    800067a4:	00003517          	auipc	a0,0x3
    800067a8:	12c50513          	addi	a0,a0,300 # 800098d0 <_ZTV7WorkerD+0x390>
    800067ac:	00001097          	auipc	ra,0x1
    800067b0:	88c080e7          	jalr	-1908(ra) # 80007038 <__printf>
    800067b4:	141025f3          	csrr	a1,sepc
    800067b8:	14302673          	csrr	a2,stval
    800067bc:	00003517          	auipc	a0,0x3
    800067c0:	12450513          	addi	a0,a0,292 # 800098e0 <_ZTV7WorkerD+0x3a0>
    800067c4:	00001097          	auipc	ra,0x1
    800067c8:	874080e7          	jalr	-1932(ra) # 80007038 <__printf>
    800067cc:	00003517          	auipc	a0,0x3
    800067d0:	12c50513          	addi	a0,a0,300 # 800098f8 <_ZTV7WorkerD+0x3b8>
    800067d4:	00001097          	auipc	ra,0x1
    800067d8:	808080e7          	jalr	-2040(ra) # 80006fdc <panic>
    800067dc:	0ff7f713          	andi	a4,a5,255
    800067e0:	00900693          	li	a3,9
    800067e4:	04d70063          	beq	a4,a3,80006824 <kerneltrap+0xac>
    800067e8:	fff00713          	li	a4,-1
    800067ec:	03f71713          	slli	a4,a4,0x3f
    800067f0:	00170713          	addi	a4,a4,1
    800067f4:	fae798e3          	bne	a5,a4,800067a4 <kerneltrap+0x2c>
    800067f8:	00000097          	auipc	ra,0x0
    800067fc:	e00080e7          	jalr	-512(ra) # 800065f8 <cpuid>
    80006800:	06050663          	beqz	a0,8000686c <kerneltrap+0xf4>
    80006804:	144027f3          	csrr	a5,sip
    80006808:	ffd7f793          	andi	a5,a5,-3
    8000680c:	14479073          	csrw	sip,a5
    80006810:	01813083          	ld	ra,24(sp)
    80006814:	01013403          	ld	s0,16(sp)
    80006818:	00813483          	ld	s1,8(sp)
    8000681c:	02010113          	addi	sp,sp,32
    80006820:	00008067          	ret
    80006824:	00000097          	auipc	ra,0x0
    80006828:	3d0080e7          	jalr	976(ra) # 80006bf4 <plic_claim>
    8000682c:	00a00793          	li	a5,10
    80006830:	00050493          	mv	s1,a0
    80006834:	06f50863          	beq	a0,a5,800068a4 <kerneltrap+0x12c>
    80006838:	fc050ce3          	beqz	a0,80006810 <kerneltrap+0x98>
    8000683c:	00050593          	mv	a1,a0
    80006840:	00003517          	auipc	a0,0x3
    80006844:	07050513          	addi	a0,a0,112 # 800098b0 <_ZTV7WorkerD+0x370>
    80006848:	00000097          	auipc	ra,0x0
    8000684c:	7f0080e7          	jalr	2032(ra) # 80007038 <__printf>
    80006850:	01013403          	ld	s0,16(sp)
    80006854:	01813083          	ld	ra,24(sp)
    80006858:	00048513          	mv	a0,s1
    8000685c:	00813483          	ld	s1,8(sp)
    80006860:	02010113          	addi	sp,sp,32
    80006864:	00000317          	auipc	t1,0x0
    80006868:	3c830067          	jr	968(t1) # 80006c2c <plic_complete>
    8000686c:	00006517          	auipc	a0,0x6
    80006870:	08450513          	addi	a0,a0,132 # 8000c8f0 <tickslock>
    80006874:	00001097          	auipc	ra,0x1
    80006878:	498080e7          	jalr	1176(ra) # 80007d0c <acquire>
    8000687c:	00005717          	auipc	a4,0x5
    80006880:	f9470713          	addi	a4,a4,-108 # 8000b810 <ticks>
    80006884:	00072783          	lw	a5,0(a4)
    80006888:	00006517          	auipc	a0,0x6
    8000688c:	06850513          	addi	a0,a0,104 # 8000c8f0 <tickslock>
    80006890:	0017879b          	addiw	a5,a5,1
    80006894:	00f72023          	sw	a5,0(a4)
    80006898:	00001097          	auipc	ra,0x1
    8000689c:	540080e7          	jalr	1344(ra) # 80007dd8 <release>
    800068a0:	f65ff06f          	j	80006804 <kerneltrap+0x8c>
    800068a4:	00001097          	auipc	ra,0x1
    800068a8:	09c080e7          	jalr	156(ra) # 80007940 <uartintr>
    800068ac:	fa5ff06f          	j	80006850 <kerneltrap+0xd8>
    800068b0:	00003517          	auipc	a0,0x3
    800068b4:	fe050513          	addi	a0,a0,-32 # 80009890 <_ZTV7WorkerD+0x350>
    800068b8:	00000097          	auipc	ra,0x0
    800068bc:	724080e7          	jalr	1828(ra) # 80006fdc <panic>

00000000800068c0 <clockintr>:
    800068c0:	fe010113          	addi	sp,sp,-32
    800068c4:	00813823          	sd	s0,16(sp)
    800068c8:	00913423          	sd	s1,8(sp)
    800068cc:	00113c23          	sd	ra,24(sp)
    800068d0:	02010413          	addi	s0,sp,32
    800068d4:	00006497          	auipc	s1,0x6
    800068d8:	01c48493          	addi	s1,s1,28 # 8000c8f0 <tickslock>
    800068dc:	00048513          	mv	a0,s1
    800068e0:	00001097          	auipc	ra,0x1
    800068e4:	42c080e7          	jalr	1068(ra) # 80007d0c <acquire>
    800068e8:	00005717          	auipc	a4,0x5
    800068ec:	f2870713          	addi	a4,a4,-216 # 8000b810 <ticks>
    800068f0:	00072783          	lw	a5,0(a4)
    800068f4:	01013403          	ld	s0,16(sp)
    800068f8:	01813083          	ld	ra,24(sp)
    800068fc:	00048513          	mv	a0,s1
    80006900:	0017879b          	addiw	a5,a5,1
    80006904:	00813483          	ld	s1,8(sp)
    80006908:	00f72023          	sw	a5,0(a4)
    8000690c:	02010113          	addi	sp,sp,32
    80006910:	00001317          	auipc	t1,0x1
    80006914:	4c830067          	jr	1224(t1) # 80007dd8 <release>

0000000080006918 <devintr>:
    80006918:	142027f3          	csrr	a5,scause
    8000691c:	00000513          	li	a0,0
    80006920:	0007c463          	bltz	a5,80006928 <devintr+0x10>
    80006924:	00008067          	ret
    80006928:	fe010113          	addi	sp,sp,-32
    8000692c:	00813823          	sd	s0,16(sp)
    80006930:	00113c23          	sd	ra,24(sp)
    80006934:	00913423          	sd	s1,8(sp)
    80006938:	02010413          	addi	s0,sp,32
    8000693c:	0ff7f713          	andi	a4,a5,255
    80006940:	00900693          	li	a3,9
    80006944:	04d70c63          	beq	a4,a3,8000699c <devintr+0x84>
    80006948:	fff00713          	li	a4,-1
    8000694c:	03f71713          	slli	a4,a4,0x3f
    80006950:	00170713          	addi	a4,a4,1
    80006954:	00e78c63          	beq	a5,a4,8000696c <devintr+0x54>
    80006958:	01813083          	ld	ra,24(sp)
    8000695c:	01013403          	ld	s0,16(sp)
    80006960:	00813483          	ld	s1,8(sp)
    80006964:	02010113          	addi	sp,sp,32
    80006968:	00008067          	ret
    8000696c:	00000097          	auipc	ra,0x0
    80006970:	c8c080e7          	jalr	-884(ra) # 800065f8 <cpuid>
    80006974:	06050663          	beqz	a0,800069e0 <devintr+0xc8>
    80006978:	144027f3          	csrr	a5,sip
    8000697c:	ffd7f793          	andi	a5,a5,-3
    80006980:	14479073          	csrw	sip,a5
    80006984:	01813083          	ld	ra,24(sp)
    80006988:	01013403          	ld	s0,16(sp)
    8000698c:	00813483          	ld	s1,8(sp)
    80006990:	00200513          	li	a0,2
    80006994:	02010113          	addi	sp,sp,32
    80006998:	00008067          	ret
    8000699c:	00000097          	auipc	ra,0x0
    800069a0:	258080e7          	jalr	600(ra) # 80006bf4 <plic_claim>
    800069a4:	00a00793          	li	a5,10
    800069a8:	00050493          	mv	s1,a0
    800069ac:	06f50663          	beq	a0,a5,80006a18 <devintr+0x100>
    800069b0:	00100513          	li	a0,1
    800069b4:	fa0482e3          	beqz	s1,80006958 <devintr+0x40>
    800069b8:	00048593          	mv	a1,s1
    800069bc:	00003517          	auipc	a0,0x3
    800069c0:	ef450513          	addi	a0,a0,-268 # 800098b0 <_ZTV7WorkerD+0x370>
    800069c4:	00000097          	auipc	ra,0x0
    800069c8:	674080e7          	jalr	1652(ra) # 80007038 <__printf>
    800069cc:	00048513          	mv	a0,s1
    800069d0:	00000097          	auipc	ra,0x0
    800069d4:	25c080e7          	jalr	604(ra) # 80006c2c <plic_complete>
    800069d8:	00100513          	li	a0,1
    800069dc:	f7dff06f          	j	80006958 <devintr+0x40>
    800069e0:	00006517          	auipc	a0,0x6
    800069e4:	f1050513          	addi	a0,a0,-240 # 8000c8f0 <tickslock>
    800069e8:	00001097          	auipc	ra,0x1
    800069ec:	324080e7          	jalr	804(ra) # 80007d0c <acquire>
    800069f0:	00005717          	auipc	a4,0x5
    800069f4:	e2070713          	addi	a4,a4,-480 # 8000b810 <ticks>
    800069f8:	00072783          	lw	a5,0(a4)
    800069fc:	00006517          	auipc	a0,0x6
    80006a00:	ef450513          	addi	a0,a0,-268 # 8000c8f0 <tickslock>
    80006a04:	0017879b          	addiw	a5,a5,1
    80006a08:	00f72023          	sw	a5,0(a4)
    80006a0c:	00001097          	auipc	ra,0x1
    80006a10:	3cc080e7          	jalr	972(ra) # 80007dd8 <release>
    80006a14:	f65ff06f          	j	80006978 <devintr+0x60>
    80006a18:	00001097          	auipc	ra,0x1
    80006a1c:	f28080e7          	jalr	-216(ra) # 80007940 <uartintr>
    80006a20:	fadff06f          	j	800069cc <devintr+0xb4>
	...

0000000080006a30 <kernelvec>:
    80006a30:	f0010113          	addi	sp,sp,-256
    80006a34:	00113023          	sd	ra,0(sp)
    80006a38:	00213423          	sd	sp,8(sp)
    80006a3c:	00313823          	sd	gp,16(sp)
    80006a40:	00413c23          	sd	tp,24(sp)
    80006a44:	02513023          	sd	t0,32(sp)
    80006a48:	02613423          	sd	t1,40(sp)
    80006a4c:	02713823          	sd	t2,48(sp)
    80006a50:	02813c23          	sd	s0,56(sp)
    80006a54:	04913023          	sd	s1,64(sp)
    80006a58:	04a13423          	sd	a0,72(sp)
    80006a5c:	04b13823          	sd	a1,80(sp)
    80006a60:	04c13c23          	sd	a2,88(sp)
    80006a64:	06d13023          	sd	a3,96(sp)
    80006a68:	06e13423          	sd	a4,104(sp)
    80006a6c:	06f13823          	sd	a5,112(sp)
    80006a70:	07013c23          	sd	a6,120(sp)
    80006a74:	09113023          	sd	a7,128(sp)
    80006a78:	09213423          	sd	s2,136(sp)
    80006a7c:	09313823          	sd	s3,144(sp)
    80006a80:	09413c23          	sd	s4,152(sp)
    80006a84:	0b513023          	sd	s5,160(sp)
    80006a88:	0b613423          	sd	s6,168(sp)
    80006a8c:	0b713823          	sd	s7,176(sp)
    80006a90:	0b813c23          	sd	s8,184(sp)
    80006a94:	0d913023          	sd	s9,192(sp)
    80006a98:	0da13423          	sd	s10,200(sp)
    80006a9c:	0db13823          	sd	s11,208(sp)
    80006aa0:	0dc13c23          	sd	t3,216(sp)
    80006aa4:	0fd13023          	sd	t4,224(sp)
    80006aa8:	0fe13423          	sd	t5,232(sp)
    80006aac:	0ff13823          	sd	t6,240(sp)
    80006ab0:	cc9ff0ef          	jal	ra,80006778 <kerneltrap>
    80006ab4:	00013083          	ld	ra,0(sp)
    80006ab8:	00813103          	ld	sp,8(sp)
    80006abc:	01013183          	ld	gp,16(sp)
    80006ac0:	02013283          	ld	t0,32(sp)
    80006ac4:	02813303          	ld	t1,40(sp)
    80006ac8:	03013383          	ld	t2,48(sp)
    80006acc:	03813403          	ld	s0,56(sp)
    80006ad0:	04013483          	ld	s1,64(sp)
    80006ad4:	04813503          	ld	a0,72(sp)
    80006ad8:	05013583          	ld	a1,80(sp)
    80006adc:	05813603          	ld	a2,88(sp)
    80006ae0:	06013683          	ld	a3,96(sp)
    80006ae4:	06813703          	ld	a4,104(sp)
    80006ae8:	07013783          	ld	a5,112(sp)
    80006aec:	07813803          	ld	a6,120(sp)
    80006af0:	08013883          	ld	a7,128(sp)
    80006af4:	08813903          	ld	s2,136(sp)
    80006af8:	09013983          	ld	s3,144(sp)
    80006afc:	09813a03          	ld	s4,152(sp)
    80006b00:	0a013a83          	ld	s5,160(sp)
    80006b04:	0a813b03          	ld	s6,168(sp)
    80006b08:	0b013b83          	ld	s7,176(sp)
    80006b0c:	0b813c03          	ld	s8,184(sp)
    80006b10:	0c013c83          	ld	s9,192(sp)
    80006b14:	0c813d03          	ld	s10,200(sp)
    80006b18:	0d013d83          	ld	s11,208(sp)
    80006b1c:	0d813e03          	ld	t3,216(sp)
    80006b20:	0e013e83          	ld	t4,224(sp)
    80006b24:	0e813f03          	ld	t5,232(sp)
    80006b28:	0f013f83          	ld	t6,240(sp)
    80006b2c:	10010113          	addi	sp,sp,256
    80006b30:	10200073          	sret
    80006b34:	00000013          	nop
    80006b38:	00000013          	nop
    80006b3c:	00000013          	nop

0000000080006b40 <timervec>:
    80006b40:	34051573          	csrrw	a0,mscratch,a0
    80006b44:	00b53023          	sd	a1,0(a0)
    80006b48:	00c53423          	sd	a2,8(a0)
    80006b4c:	00d53823          	sd	a3,16(a0)
    80006b50:	01853583          	ld	a1,24(a0)
    80006b54:	02053603          	ld	a2,32(a0)
    80006b58:	0005b683          	ld	a3,0(a1)
    80006b5c:	00c686b3          	add	a3,a3,a2
    80006b60:	00d5b023          	sd	a3,0(a1)
    80006b64:	00200593          	li	a1,2
    80006b68:	14459073          	csrw	sip,a1
    80006b6c:	01053683          	ld	a3,16(a0)
    80006b70:	00853603          	ld	a2,8(a0)
    80006b74:	00053583          	ld	a1,0(a0)
    80006b78:	34051573          	csrrw	a0,mscratch,a0
    80006b7c:	30200073          	mret

0000000080006b80 <plicinit>:
    80006b80:	ff010113          	addi	sp,sp,-16
    80006b84:	00813423          	sd	s0,8(sp)
    80006b88:	01010413          	addi	s0,sp,16
    80006b8c:	00813403          	ld	s0,8(sp)
    80006b90:	0c0007b7          	lui	a5,0xc000
    80006b94:	00100713          	li	a4,1
    80006b98:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006b9c:	00e7a223          	sw	a4,4(a5)
    80006ba0:	01010113          	addi	sp,sp,16
    80006ba4:	00008067          	ret

0000000080006ba8 <plicinithart>:
    80006ba8:	ff010113          	addi	sp,sp,-16
    80006bac:	00813023          	sd	s0,0(sp)
    80006bb0:	00113423          	sd	ra,8(sp)
    80006bb4:	01010413          	addi	s0,sp,16
    80006bb8:	00000097          	auipc	ra,0x0
    80006bbc:	a40080e7          	jalr	-1472(ra) # 800065f8 <cpuid>
    80006bc0:	0085171b          	slliw	a4,a0,0x8
    80006bc4:	0c0027b7          	lui	a5,0xc002
    80006bc8:	00e787b3          	add	a5,a5,a4
    80006bcc:	40200713          	li	a4,1026
    80006bd0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006bd4:	00813083          	ld	ra,8(sp)
    80006bd8:	00013403          	ld	s0,0(sp)
    80006bdc:	00d5151b          	slliw	a0,a0,0xd
    80006be0:	0c2017b7          	lui	a5,0xc201
    80006be4:	00a78533          	add	a0,a5,a0
    80006be8:	00052023          	sw	zero,0(a0)
    80006bec:	01010113          	addi	sp,sp,16
    80006bf0:	00008067          	ret

0000000080006bf4 <plic_claim>:
    80006bf4:	ff010113          	addi	sp,sp,-16
    80006bf8:	00813023          	sd	s0,0(sp)
    80006bfc:	00113423          	sd	ra,8(sp)
    80006c00:	01010413          	addi	s0,sp,16
    80006c04:	00000097          	auipc	ra,0x0
    80006c08:	9f4080e7          	jalr	-1548(ra) # 800065f8 <cpuid>
    80006c0c:	00813083          	ld	ra,8(sp)
    80006c10:	00013403          	ld	s0,0(sp)
    80006c14:	00d5151b          	slliw	a0,a0,0xd
    80006c18:	0c2017b7          	lui	a5,0xc201
    80006c1c:	00a78533          	add	a0,a5,a0
    80006c20:	00452503          	lw	a0,4(a0)
    80006c24:	01010113          	addi	sp,sp,16
    80006c28:	00008067          	ret

0000000080006c2c <plic_complete>:
    80006c2c:	fe010113          	addi	sp,sp,-32
    80006c30:	00813823          	sd	s0,16(sp)
    80006c34:	00913423          	sd	s1,8(sp)
    80006c38:	00113c23          	sd	ra,24(sp)
    80006c3c:	02010413          	addi	s0,sp,32
    80006c40:	00050493          	mv	s1,a0
    80006c44:	00000097          	auipc	ra,0x0
    80006c48:	9b4080e7          	jalr	-1612(ra) # 800065f8 <cpuid>
    80006c4c:	01813083          	ld	ra,24(sp)
    80006c50:	01013403          	ld	s0,16(sp)
    80006c54:	00d5179b          	slliw	a5,a0,0xd
    80006c58:	0c201737          	lui	a4,0xc201
    80006c5c:	00f707b3          	add	a5,a4,a5
    80006c60:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006c64:	00813483          	ld	s1,8(sp)
    80006c68:	02010113          	addi	sp,sp,32
    80006c6c:	00008067          	ret

0000000080006c70 <consolewrite>:
    80006c70:	fb010113          	addi	sp,sp,-80
    80006c74:	04813023          	sd	s0,64(sp)
    80006c78:	04113423          	sd	ra,72(sp)
    80006c7c:	02913c23          	sd	s1,56(sp)
    80006c80:	03213823          	sd	s2,48(sp)
    80006c84:	03313423          	sd	s3,40(sp)
    80006c88:	03413023          	sd	s4,32(sp)
    80006c8c:	01513c23          	sd	s5,24(sp)
    80006c90:	05010413          	addi	s0,sp,80
    80006c94:	06c05c63          	blez	a2,80006d0c <consolewrite+0x9c>
    80006c98:	00060993          	mv	s3,a2
    80006c9c:	00050a13          	mv	s4,a0
    80006ca0:	00058493          	mv	s1,a1
    80006ca4:	00000913          	li	s2,0
    80006ca8:	fff00a93          	li	s5,-1
    80006cac:	01c0006f          	j	80006cc8 <consolewrite+0x58>
    80006cb0:	fbf44503          	lbu	a0,-65(s0)
    80006cb4:	0019091b          	addiw	s2,s2,1
    80006cb8:	00148493          	addi	s1,s1,1
    80006cbc:	00001097          	auipc	ra,0x1
    80006cc0:	a9c080e7          	jalr	-1380(ra) # 80007758 <uartputc>
    80006cc4:	03298063          	beq	s3,s2,80006ce4 <consolewrite+0x74>
    80006cc8:	00048613          	mv	a2,s1
    80006ccc:	00100693          	li	a3,1
    80006cd0:	000a0593          	mv	a1,s4
    80006cd4:	fbf40513          	addi	a0,s0,-65
    80006cd8:	00000097          	auipc	ra,0x0
    80006cdc:	9d8080e7          	jalr	-1576(ra) # 800066b0 <either_copyin>
    80006ce0:	fd5518e3          	bne	a0,s5,80006cb0 <consolewrite+0x40>
    80006ce4:	04813083          	ld	ra,72(sp)
    80006ce8:	04013403          	ld	s0,64(sp)
    80006cec:	03813483          	ld	s1,56(sp)
    80006cf0:	02813983          	ld	s3,40(sp)
    80006cf4:	02013a03          	ld	s4,32(sp)
    80006cf8:	01813a83          	ld	s5,24(sp)
    80006cfc:	00090513          	mv	a0,s2
    80006d00:	03013903          	ld	s2,48(sp)
    80006d04:	05010113          	addi	sp,sp,80
    80006d08:	00008067          	ret
    80006d0c:	00000913          	li	s2,0
    80006d10:	fd5ff06f          	j	80006ce4 <consolewrite+0x74>

0000000080006d14 <consoleread>:
    80006d14:	f9010113          	addi	sp,sp,-112
    80006d18:	06813023          	sd	s0,96(sp)
    80006d1c:	04913c23          	sd	s1,88(sp)
    80006d20:	05213823          	sd	s2,80(sp)
    80006d24:	05313423          	sd	s3,72(sp)
    80006d28:	05413023          	sd	s4,64(sp)
    80006d2c:	03513c23          	sd	s5,56(sp)
    80006d30:	03613823          	sd	s6,48(sp)
    80006d34:	03713423          	sd	s7,40(sp)
    80006d38:	03813023          	sd	s8,32(sp)
    80006d3c:	06113423          	sd	ra,104(sp)
    80006d40:	01913c23          	sd	s9,24(sp)
    80006d44:	07010413          	addi	s0,sp,112
    80006d48:	00060b93          	mv	s7,a2
    80006d4c:	00050913          	mv	s2,a0
    80006d50:	00058c13          	mv	s8,a1
    80006d54:	00060b1b          	sext.w	s6,a2
    80006d58:	00006497          	auipc	s1,0x6
    80006d5c:	bc048493          	addi	s1,s1,-1088 # 8000c918 <cons>
    80006d60:	00400993          	li	s3,4
    80006d64:	fff00a13          	li	s4,-1
    80006d68:	00a00a93          	li	s5,10
    80006d6c:	05705e63          	blez	s7,80006dc8 <consoleread+0xb4>
    80006d70:	09c4a703          	lw	a4,156(s1)
    80006d74:	0984a783          	lw	a5,152(s1)
    80006d78:	0007071b          	sext.w	a4,a4
    80006d7c:	08e78463          	beq	a5,a4,80006e04 <consoleread+0xf0>
    80006d80:	07f7f713          	andi	a4,a5,127
    80006d84:	00e48733          	add	a4,s1,a4
    80006d88:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006d8c:	0017869b          	addiw	a3,a5,1
    80006d90:	08d4ac23          	sw	a3,152(s1)
    80006d94:	00070c9b          	sext.w	s9,a4
    80006d98:	0b370663          	beq	a4,s3,80006e44 <consoleread+0x130>
    80006d9c:	00100693          	li	a3,1
    80006da0:	f9f40613          	addi	a2,s0,-97
    80006da4:	000c0593          	mv	a1,s8
    80006da8:	00090513          	mv	a0,s2
    80006dac:	f8e40fa3          	sb	a4,-97(s0)
    80006db0:	00000097          	auipc	ra,0x0
    80006db4:	8b4080e7          	jalr	-1868(ra) # 80006664 <either_copyout>
    80006db8:	01450863          	beq	a0,s4,80006dc8 <consoleread+0xb4>
    80006dbc:	001c0c13          	addi	s8,s8,1
    80006dc0:	fffb8b9b          	addiw	s7,s7,-1
    80006dc4:	fb5c94e3          	bne	s9,s5,80006d6c <consoleread+0x58>
    80006dc8:	000b851b          	sext.w	a0,s7
    80006dcc:	06813083          	ld	ra,104(sp)
    80006dd0:	06013403          	ld	s0,96(sp)
    80006dd4:	05813483          	ld	s1,88(sp)
    80006dd8:	05013903          	ld	s2,80(sp)
    80006ddc:	04813983          	ld	s3,72(sp)
    80006de0:	04013a03          	ld	s4,64(sp)
    80006de4:	03813a83          	ld	s5,56(sp)
    80006de8:	02813b83          	ld	s7,40(sp)
    80006dec:	02013c03          	ld	s8,32(sp)
    80006df0:	01813c83          	ld	s9,24(sp)
    80006df4:	40ab053b          	subw	a0,s6,a0
    80006df8:	03013b03          	ld	s6,48(sp)
    80006dfc:	07010113          	addi	sp,sp,112
    80006e00:	00008067          	ret
    80006e04:	00001097          	auipc	ra,0x1
    80006e08:	1d8080e7          	jalr	472(ra) # 80007fdc <push_on>
    80006e0c:	0984a703          	lw	a4,152(s1)
    80006e10:	09c4a783          	lw	a5,156(s1)
    80006e14:	0007879b          	sext.w	a5,a5
    80006e18:	fef70ce3          	beq	a4,a5,80006e10 <consoleread+0xfc>
    80006e1c:	00001097          	auipc	ra,0x1
    80006e20:	234080e7          	jalr	564(ra) # 80008050 <pop_on>
    80006e24:	0984a783          	lw	a5,152(s1)
    80006e28:	07f7f713          	andi	a4,a5,127
    80006e2c:	00e48733          	add	a4,s1,a4
    80006e30:	01874703          	lbu	a4,24(a4)
    80006e34:	0017869b          	addiw	a3,a5,1
    80006e38:	08d4ac23          	sw	a3,152(s1)
    80006e3c:	00070c9b          	sext.w	s9,a4
    80006e40:	f5371ee3          	bne	a4,s3,80006d9c <consoleread+0x88>
    80006e44:	000b851b          	sext.w	a0,s7
    80006e48:	f96bf2e3          	bgeu	s7,s6,80006dcc <consoleread+0xb8>
    80006e4c:	08f4ac23          	sw	a5,152(s1)
    80006e50:	f7dff06f          	j	80006dcc <consoleread+0xb8>

0000000080006e54 <consputc>:
    80006e54:	10000793          	li	a5,256
    80006e58:	00f50663          	beq	a0,a5,80006e64 <consputc+0x10>
    80006e5c:	00001317          	auipc	t1,0x1
    80006e60:	9f430067          	jr	-1548(t1) # 80007850 <uartputc_sync>
    80006e64:	ff010113          	addi	sp,sp,-16
    80006e68:	00113423          	sd	ra,8(sp)
    80006e6c:	00813023          	sd	s0,0(sp)
    80006e70:	01010413          	addi	s0,sp,16
    80006e74:	00800513          	li	a0,8
    80006e78:	00001097          	auipc	ra,0x1
    80006e7c:	9d8080e7          	jalr	-1576(ra) # 80007850 <uartputc_sync>
    80006e80:	02000513          	li	a0,32
    80006e84:	00001097          	auipc	ra,0x1
    80006e88:	9cc080e7          	jalr	-1588(ra) # 80007850 <uartputc_sync>
    80006e8c:	00013403          	ld	s0,0(sp)
    80006e90:	00813083          	ld	ra,8(sp)
    80006e94:	00800513          	li	a0,8
    80006e98:	01010113          	addi	sp,sp,16
    80006e9c:	00001317          	auipc	t1,0x1
    80006ea0:	9b430067          	jr	-1612(t1) # 80007850 <uartputc_sync>

0000000080006ea4 <consoleintr>:
    80006ea4:	fe010113          	addi	sp,sp,-32
    80006ea8:	00813823          	sd	s0,16(sp)
    80006eac:	00913423          	sd	s1,8(sp)
    80006eb0:	01213023          	sd	s2,0(sp)
    80006eb4:	00113c23          	sd	ra,24(sp)
    80006eb8:	02010413          	addi	s0,sp,32
    80006ebc:	00006917          	auipc	s2,0x6
    80006ec0:	a5c90913          	addi	s2,s2,-1444 # 8000c918 <cons>
    80006ec4:	00050493          	mv	s1,a0
    80006ec8:	00090513          	mv	a0,s2
    80006ecc:	00001097          	auipc	ra,0x1
    80006ed0:	e40080e7          	jalr	-448(ra) # 80007d0c <acquire>
    80006ed4:	02048c63          	beqz	s1,80006f0c <consoleintr+0x68>
    80006ed8:	0a092783          	lw	a5,160(s2)
    80006edc:	09892703          	lw	a4,152(s2)
    80006ee0:	07f00693          	li	a3,127
    80006ee4:	40e7873b          	subw	a4,a5,a4
    80006ee8:	02e6e263          	bltu	a3,a4,80006f0c <consoleintr+0x68>
    80006eec:	00d00713          	li	a4,13
    80006ef0:	04e48063          	beq	s1,a4,80006f30 <consoleintr+0x8c>
    80006ef4:	07f7f713          	andi	a4,a5,127
    80006ef8:	00e90733          	add	a4,s2,a4
    80006efc:	0017879b          	addiw	a5,a5,1
    80006f00:	0af92023          	sw	a5,160(s2)
    80006f04:	00970c23          	sb	s1,24(a4)
    80006f08:	08f92e23          	sw	a5,156(s2)
    80006f0c:	01013403          	ld	s0,16(sp)
    80006f10:	01813083          	ld	ra,24(sp)
    80006f14:	00813483          	ld	s1,8(sp)
    80006f18:	00013903          	ld	s2,0(sp)
    80006f1c:	00006517          	auipc	a0,0x6
    80006f20:	9fc50513          	addi	a0,a0,-1540 # 8000c918 <cons>
    80006f24:	02010113          	addi	sp,sp,32
    80006f28:	00001317          	auipc	t1,0x1
    80006f2c:	eb030067          	jr	-336(t1) # 80007dd8 <release>
    80006f30:	00a00493          	li	s1,10
    80006f34:	fc1ff06f          	j	80006ef4 <consoleintr+0x50>

0000000080006f38 <consoleinit>:
    80006f38:	fe010113          	addi	sp,sp,-32
    80006f3c:	00113c23          	sd	ra,24(sp)
    80006f40:	00813823          	sd	s0,16(sp)
    80006f44:	00913423          	sd	s1,8(sp)
    80006f48:	02010413          	addi	s0,sp,32
    80006f4c:	00006497          	auipc	s1,0x6
    80006f50:	9cc48493          	addi	s1,s1,-1588 # 8000c918 <cons>
    80006f54:	00048513          	mv	a0,s1
    80006f58:	00003597          	auipc	a1,0x3
    80006f5c:	9b058593          	addi	a1,a1,-1616 # 80009908 <_ZTV7WorkerD+0x3c8>
    80006f60:	00001097          	auipc	ra,0x1
    80006f64:	d88080e7          	jalr	-632(ra) # 80007ce8 <initlock>
    80006f68:	00000097          	auipc	ra,0x0
    80006f6c:	7ac080e7          	jalr	1964(ra) # 80007714 <uartinit>
    80006f70:	01813083          	ld	ra,24(sp)
    80006f74:	01013403          	ld	s0,16(sp)
    80006f78:	00000797          	auipc	a5,0x0
    80006f7c:	d9c78793          	addi	a5,a5,-612 # 80006d14 <consoleread>
    80006f80:	0af4bc23          	sd	a5,184(s1)
    80006f84:	00000797          	auipc	a5,0x0
    80006f88:	cec78793          	addi	a5,a5,-788 # 80006c70 <consolewrite>
    80006f8c:	0cf4b023          	sd	a5,192(s1)
    80006f90:	00813483          	ld	s1,8(sp)
    80006f94:	02010113          	addi	sp,sp,32
    80006f98:	00008067          	ret

0000000080006f9c <console_read>:
    80006f9c:	ff010113          	addi	sp,sp,-16
    80006fa0:	00813423          	sd	s0,8(sp)
    80006fa4:	01010413          	addi	s0,sp,16
    80006fa8:	00813403          	ld	s0,8(sp)
    80006fac:	00006317          	auipc	t1,0x6
    80006fb0:	a2433303          	ld	t1,-1500(t1) # 8000c9d0 <devsw+0x10>
    80006fb4:	01010113          	addi	sp,sp,16
    80006fb8:	00030067          	jr	t1

0000000080006fbc <console_write>:
    80006fbc:	ff010113          	addi	sp,sp,-16
    80006fc0:	00813423          	sd	s0,8(sp)
    80006fc4:	01010413          	addi	s0,sp,16
    80006fc8:	00813403          	ld	s0,8(sp)
    80006fcc:	00006317          	auipc	t1,0x6
    80006fd0:	a0c33303          	ld	t1,-1524(t1) # 8000c9d8 <devsw+0x18>
    80006fd4:	01010113          	addi	sp,sp,16
    80006fd8:	00030067          	jr	t1

0000000080006fdc <panic>:
    80006fdc:	fe010113          	addi	sp,sp,-32
    80006fe0:	00113c23          	sd	ra,24(sp)
    80006fe4:	00813823          	sd	s0,16(sp)
    80006fe8:	00913423          	sd	s1,8(sp)
    80006fec:	02010413          	addi	s0,sp,32
    80006ff0:	00050493          	mv	s1,a0
    80006ff4:	00003517          	auipc	a0,0x3
    80006ff8:	91c50513          	addi	a0,a0,-1764 # 80009910 <_ZTV7WorkerD+0x3d0>
    80006ffc:	00006797          	auipc	a5,0x6
    80007000:	a607ae23          	sw	zero,-1412(a5) # 8000ca78 <pr+0x18>
    80007004:	00000097          	auipc	ra,0x0
    80007008:	034080e7          	jalr	52(ra) # 80007038 <__printf>
    8000700c:	00048513          	mv	a0,s1
    80007010:	00000097          	auipc	ra,0x0
    80007014:	028080e7          	jalr	40(ra) # 80007038 <__printf>
    80007018:	00002517          	auipc	a0,0x2
    8000701c:	69050513          	addi	a0,a0,1680 # 800096a8 <_ZTV7WorkerD+0x168>
    80007020:	00000097          	auipc	ra,0x0
    80007024:	018080e7          	jalr	24(ra) # 80007038 <__printf>
    80007028:	00100793          	li	a5,1
    8000702c:	00004717          	auipc	a4,0x4
    80007030:	7ef72423          	sw	a5,2024(a4) # 8000b814 <panicked>
    80007034:	0000006f          	j	80007034 <panic+0x58>

0000000080007038 <__printf>:
    80007038:	f3010113          	addi	sp,sp,-208
    8000703c:	08813023          	sd	s0,128(sp)
    80007040:	07313423          	sd	s3,104(sp)
    80007044:	09010413          	addi	s0,sp,144
    80007048:	05813023          	sd	s8,64(sp)
    8000704c:	08113423          	sd	ra,136(sp)
    80007050:	06913c23          	sd	s1,120(sp)
    80007054:	07213823          	sd	s2,112(sp)
    80007058:	07413023          	sd	s4,96(sp)
    8000705c:	05513c23          	sd	s5,88(sp)
    80007060:	05613823          	sd	s6,80(sp)
    80007064:	05713423          	sd	s7,72(sp)
    80007068:	03913c23          	sd	s9,56(sp)
    8000706c:	03a13823          	sd	s10,48(sp)
    80007070:	03b13423          	sd	s11,40(sp)
    80007074:	00006317          	auipc	t1,0x6
    80007078:	9ec30313          	addi	t1,t1,-1556 # 8000ca60 <pr>
    8000707c:	01832c03          	lw	s8,24(t1)
    80007080:	00b43423          	sd	a1,8(s0)
    80007084:	00c43823          	sd	a2,16(s0)
    80007088:	00d43c23          	sd	a3,24(s0)
    8000708c:	02e43023          	sd	a4,32(s0)
    80007090:	02f43423          	sd	a5,40(s0)
    80007094:	03043823          	sd	a6,48(s0)
    80007098:	03143c23          	sd	a7,56(s0)
    8000709c:	00050993          	mv	s3,a0
    800070a0:	4a0c1663          	bnez	s8,8000754c <__printf+0x514>
    800070a4:	60098c63          	beqz	s3,800076bc <__printf+0x684>
    800070a8:	0009c503          	lbu	a0,0(s3)
    800070ac:	00840793          	addi	a5,s0,8
    800070b0:	f6f43c23          	sd	a5,-136(s0)
    800070b4:	00000493          	li	s1,0
    800070b8:	22050063          	beqz	a0,800072d8 <__printf+0x2a0>
    800070bc:	00002a37          	lui	s4,0x2
    800070c0:	00018ab7          	lui	s5,0x18
    800070c4:	000f4b37          	lui	s6,0xf4
    800070c8:	00989bb7          	lui	s7,0x989
    800070cc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800070d0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800070d4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800070d8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800070dc:	00148c9b          	addiw	s9,s1,1
    800070e0:	02500793          	li	a5,37
    800070e4:	01998933          	add	s2,s3,s9
    800070e8:	38f51263          	bne	a0,a5,8000746c <__printf+0x434>
    800070ec:	00094783          	lbu	a5,0(s2)
    800070f0:	00078c9b          	sext.w	s9,a5
    800070f4:	1e078263          	beqz	a5,800072d8 <__printf+0x2a0>
    800070f8:	0024849b          	addiw	s1,s1,2
    800070fc:	07000713          	li	a4,112
    80007100:	00998933          	add	s2,s3,s1
    80007104:	38e78a63          	beq	a5,a4,80007498 <__printf+0x460>
    80007108:	20f76863          	bltu	a4,a5,80007318 <__printf+0x2e0>
    8000710c:	42a78863          	beq	a5,a0,8000753c <__printf+0x504>
    80007110:	06400713          	li	a4,100
    80007114:	40e79663          	bne	a5,a4,80007520 <__printf+0x4e8>
    80007118:	f7843783          	ld	a5,-136(s0)
    8000711c:	0007a603          	lw	a2,0(a5)
    80007120:	00878793          	addi	a5,a5,8
    80007124:	f6f43c23          	sd	a5,-136(s0)
    80007128:	42064a63          	bltz	a2,8000755c <__printf+0x524>
    8000712c:	00a00713          	li	a4,10
    80007130:	02e677bb          	remuw	a5,a2,a4
    80007134:	00003d97          	auipc	s11,0x3
    80007138:	804d8d93          	addi	s11,s11,-2044 # 80009938 <digits>
    8000713c:	00900593          	li	a1,9
    80007140:	0006051b          	sext.w	a0,a2
    80007144:	00000c93          	li	s9,0
    80007148:	02079793          	slli	a5,a5,0x20
    8000714c:	0207d793          	srli	a5,a5,0x20
    80007150:	00fd87b3          	add	a5,s11,a5
    80007154:	0007c783          	lbu	a5,0(a5)
    80007158:	02e656bb          	divuw	a3,a2,a4
    8000715c:	f8f40023          	sb	a5,-128(s0)
    80007160:	14c5d863          	bge	a1,a2,800072b0 <__printf+0x278>
    80007164:	06300593          	li	a1,99
    80007168:	00100c93          	li	s9,1
    8000716c:	02e6f7bb          	remuw	a5,a3,a4
    80007170:	02079793          	slli	a5,a5,0x20
    80007174:	0207d793          	srli	a5,a5,0x20
    80007178:	00fd87b3          	add	a5,s11,a5
    8000717c:	0007c783          	lbu	a5,0(a5)
    80007180:	02e6d73b          	divuw	a4,a3,a4
    80007184:	f8f400a3          	sb	a5,-127(s0)
    80007188:	12a5f463          	bgeu	a1,a0,800072b0 <__printf+0x278>
    8000718c:	00a00693          	li	a3,10
    80007190:	00900593          	li	a1,9
    80007194:	02d777bb          	remuw	a5,a4,a3
    80007198:	02079793          	slli	a5,a5,0x20
    8000719c:	0207d793          	srli	a5,a5,0x20
    800071a0:	00fd87b3          	add	a5,s11,a5
    800071a4:	0007c503          	lbu	a0,0(a5)
    800071a8:	02d757bb          	divuw	a5,a4,a3
    800071ac:	f8a40123          	sb	a0,-126(s0)
    800071b0:	48e5f263          	bgeu	a1,a4,80007634 <__printf+0x5fc>
    800071b4:	06300513          	li	a0,99
    800071b8:	02d7f5bb          	remuw	a1,a5,a3
    800071bc:	02059593          	slli	a1,a1,0x20
    800071c0:	0205d593          	srli	a1,a1,0x20
    800071c4:	00bd85b3          	add	a1,s11,a1
    800071c8:	0005c583          	lbu	a1,0(a1)
    800071cc:	02d7d7bb          	divuw	a5,a5,a3
    800071d0:	f8b401a3          	sb	a1,-125(s0)
    800071d4:	48e57263          	bgeu	a0,a4,80007658 <__printf+0x620>
    800071d8:	3e700513          	li	a0,999
    800071dc:	02d7f5bb          	remuw	a1,a5,a3
    800071e0:	02059593          	slli	a1,a1,0x20
    800071e4:	0205d593          	srli	a1,a1,0x20
    800071e8:	00bd85b3          	add	a1,s11,a1
    800071ec:	0005c583          	lbu	a1,0(a1)
    800071f0:	02d7d7bb          	divuw	a5,a5,a3
    800071f4:	f8b40223          	sb	a1,-124(s0)
    800071f8:	46e57663          	bgeu	a0,a4,80007664 <__printf+0x62c>
    800071fc:	02d7f5bb          	remuw	a1,a5,a3
    80007200:	02059593          	slli	a1,a1,0x20
    80007204:	0205d593          	srli	a1,a1,0x20
    80007208:	00bd85b3          	add	a1,s11,a1
    8000720c:	0005c583          	lbu	a1,0(a1)
    80007210:	02d7d7bb          	divuw	a5,a5,a3
    80007214:	f8b402a3          	sb	a1,-123(s0)
    80007218:	46ea7863          	bgeu	s4,a4,80007688 <__printf+0x650>
    8000721c:	02d7f5bb          	remuw	a1,a5,a3
    80007220:	02059593          	slli	a1,a1,0x20
    80007224:	0205d593          	srli	a1,a1,0x20
    80007228:	00bd85b3          	add	a1,s11,a1
    8000722c:	0005c583          	lbu	a1,0(a1)
    80007230:	02d7d7bb          	divuw	a5,a5,a3
    80007234:	f8b40323          	sb	a1,-122(s0)
    80007238:	3eeaf863          	bgeu	s5,a4,80007628 <__printf+0x5f0>
    8000723c:	02d7f5bb          	remuw	a1,a5,a3
    80007240:	02059593          	slli	a1,a1,0x20
    80007244:	0205d593          	srli	a1,a1,0x20
    80007248:	00bd85b3          	add	a1,s11,a1
    8000724c:	0005c583          	lbu	a1,0(a1)
    80007250:	02d7d7bb          	divuw	a5,a5,a3
    80007254:	f8b403a3          	sb	a1,-121(s0)
    80007258:	42eb7e63          	bgeu	s6,a4,80007694 <__printf+0x65c>
    8000725c:	02d7f5bb          	remuw	a1,a5,a3
    80007260:	02059593          	slli	a1,a1,0x20
    80007264:	0205d593          	srli	a1,a1,0x20
    80007268:	00bd85b3          	add	a1,s11,a1
    8000726c:	0005c583          	lbu	a1,0(a1)
    80007270:	02d7d7bb          	divuw	a5,a5,a3
    80007274:	f8b40423          	sb	a1,-120(s0)
    80007278:	42ebfc63          	bgeu	s7,a4,800076b0 <__printf+0x678>
    8000727c:	02079793          	slli	a5,a5,0x20
    80007280:	0207d793          	srli	a5,a5,0x20
    80007284:	00fd8db3          	add	s11,s11,a5
    80007288:	000dc703          	lbu	a4,0(s11)
    8000728c:	00a00793          	li	a5,10
    80007290:	00900c93          	li	s9,9
    80007294:	f8e404a3          	sb	a4,-119(s0)
    80007298:	00065c63          	bgez	a2,800072b0 <__printf+0x278>
    8000729c:	f9040713          	addi	a4,s0,-112
    800072a0:	00f70733          	add	a4,a4,a5
    800072a4:	02d00693          	li	a3,45
    800072a8:	fed70823          	sb	a3,-16(a4)
    800072ac:	00078c93          	mv	s9,a5
    800072b0:	f8040793          	addi	a5,s0,-128
    800072b4:	01978cb3          	add	s9,a5,s9
    800072b8:	f7f40d13          	addi	s10,s0,-129
    800072bc:	000cc503          	lbu	a0,0(s9)
    800072c0:	fffc8c93          	addi	s9,s9,-1
    800072c4:	00000097          	auipc	ra,0x0
    800072c8:	b90080e7          	jalr	-1136(ra) # 80006e54 <consputc>
    800072cc:	ffac98e3          	bne	s9,s10,800072bc <__printf+0x284>
    800072d0:	00094503          	lbu	a0,0(s2)
    800072d4:	e00514e3          	bnez	a0,800070dc <__printf+0xa4>
    800072d8:	1a0c1663          	bnez	s8,80007484 <__printf+0x44c>
    800072dc:	08813083          	ld	ra,136(sp)
    800072e0:	08013403          	ld	s0,128(sp)
    800072e4:	07813483          	ld	s1,120(sp)
    800072e8:	07013903          	ld	s2,112(sp)
    800072ec:	06813983          	ld	s3,104(sp)
    800072f0:	06013a03          	ld	s4,96(sp)
    800072f4:	05813a83          	ld	s5,88(sp)
    800072f8:	05013b03          	ld	s6,80(sp)
    800072fc:	04813b83          	ld	s7,72(sp)
    80007300:	04013c03          	ld	s8,64(sp)
    80007304:	03813c83          	ld	s9,56(sp)
    80007308:	03013d03          	ld	s10,48(sp)
    8000730c:	02813d83          	ld	s11,40(sp)
    80007310:	0d010113          	addi	sp,sp,208
    80007314:	00008067          	ret
    80007318:	07300713          	li	a4,115
    8000731c:	1ce78a63          	beq	a5,a4,800074f0 <__printf+0x4b8>
    80007320:	07800713          	li	a4,120
    80007324:	1ee79e63          	bne	a5,a4,80007520 <__printf+0x4e8>
    80007328:	f7843783          	ld	a5,-136(s0)
    8000732c:	0007a703          	lw	a4,0(a5)
    80007330:	00878793          	addi	a5,a5,8
    80007334:	f6f43c23          	sd	a5,-136(s0)
    80007338:	28074263          	bltz	a4,800075bc <__printf+0x584>
    8000733c:	00002d97          	auipc	s11,0x2
    80007340:	5fcd8d93          	addi	s11,s11,1532 # 80009938 <digits>
    80007344:	00f77793          	andi	a5,a4,15
    80007348:	00fd87b3          	add	a5,s11,a5
    8000734c:	0007c683          	lbu	a3,0(a5)
    80007350:	00f00613          	li	a2,15
    80007354:	0007079b          	sext.w	a5,a4
    80007358:	f8d40023          	sb	a3,-128(s0)
    8000735c:	0047559b          	srliw	a1,a4,0x4
    80007360:	0047569b          	srliw	a3,a4,0x4
    80007364:	00000c93          	li	s9,0
    80007368:	0ee65063          	bge	a2,a4,80007448 <__printf+0x410>
    8000736c:	00f6f693          	andi	a3,a3,15
    80007370:	00dd86b3          	add	a3,s11,a3
    80007374:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007378:	0087d79b          	srliw	a5,a5,0x8
    8000737c:	00100c93          	li	s9,1
    80007380:	f8d400a3          	sb	a3,-127(s0)
    80007384:	0cb67263          	bgeu	a2,a1,80007448 <__printf+0x410>
    80007388:	00f7f693          	andi	a3,a5,15
    8000738c:	00dd86b3          	add	a3,s11,a3
    80007390:	0006c583          	lbu	a1,0(a3)
    80007394:	00f00613          	li	a2,15
    80007398:	0047d69b          	srliw	a3,a5,0x4
    8000739c:	f8b40123          	sb	a1,-126(s0)
    800073a0:	0047d593          	srli	a1,a5,0x4
    800073a4:	28f67e63          	bgeu	a2,a5,80007640 <__printf+0x608>
    800073a8:	00f6f693          	andi	a3,a3,15
    800073ac:	00dd86b3          	add	a3,s11,a3
    800073b0:	0006c503          	lbu	a0,0(a3)
    800073b4:	0087d813          	srli	a6,a5,0x8
    800073b8:	0087d69b          	srliw	a3,a5,0x8
    800073bc:	f8a401a3          	sb	a0,-125(s0)
    800073c0:	28b67663          	bgeu	a2,a1,8000764c <__printf+0x614>
    800073c4:	00f6f693          	andi	a3,a3,15
    800073c8:	00dd86b3          	add	a3,s11,a3
    800073cc:	0006c583          	lbu	a1,0(a3)
    800073d0:	00c7d513          	srli	a0,a5,0xc
    800073d4:	00c7d69b          	srliw	a3,a5,0xc
    800073d8:	f8b40223          	sb	a1,-124(s0)
    800073dc:	29067a63          	bgeu	a2,a6,80007670 <__printf+0x638>
    800073e0:	00f6f693          	andi	a3,a3,15
    800073e4:	00dd86b3          	add	a3,s11,a3
    800073e8:	0006c583          	lbu	a1,0(a3)
    800073ec:	0107d813          	srli	a6,a5,0x10
    800073f0:	0107d69b          	srliw	a3,a5,0x10
    800073f4:	f8b402a3          	sb	a1,-123(s0)
    800073f8:	28a67263          	bgeu	a2,a0,8000767c <__printf+0x644>
    800073fc:	00f6f693          	andi	a3,a3,15
    80007400:	00dd86b3          	add	a3,s11,a3
    80007404:	0006c683          	lbu	a3,0(a3)
    80007408:	0147d79b          	srliw	a5,a5,0x14
    8000740c:	f8d40323          	sb	a3,-122(s0)
    80007410:	21067663          	bgeu	a2,a6,8000761c <__printf+0x5e4>
    80007414:	02079793          	slli	a5,a5,0x20
    80007418:	0207d793          	srli	a5,a5,0x20
    8000741c:	00fd8db3          	add	s11,s11,a5
    80007420:	000dc683          	lbu	a3,0(s11)
    80007424:	00800793          	li	a5,8
    80007428:	00700c93          	li	s9,7
    8000742c:	f8d403a3          	sb	a3,-121(s0)
    80007430:	00075c63          	bgez	a4,80007448 <__printf+0x410>
    80007434:	f9040713          	addi	a4,s0,-112
    80007438:	00f70733          	add	a4,a4,a5
    8000743c:	02d00693          	li	a3,45
    80007440:	fed70823          	sb	a3,-16(a4)
    80007444:	00078c93          	mv	s9,a5
    80007448:	f8040793          	addi	a5,s0,-128
    8000744c:	01978cb3          	add	s9,a5,s9
    80007450:	f7f40d13          	addi	s10,s0,-129
    80007454:	000cc503          	lbu	a0,0(s9)
    80007458:	fffc8c93          	addi	s9,s9,-1
    8000745c:	00000097          	auipc	ra,0x0
    80007460:	9f8080e7          	jalr	-1544(ra) # 80006e54 <consputc>
    80007464:	ff9d18e3          	bne	s10,s9,80007454 <__printf+0x41c>
    80007468:	0100006f          	j	80007478 <__printf+0x440>
    8000746c:	00000097          	auipc	ra,0x0
    80007470:	9e8080e7          	jalr	-1560(ra) # 80006e54 <consputc>
    80007474:	000c8493          	mv	s1,s9
    80007478:	00094503          	lbu	a0,0(s2)
    8000747c:	c60510e3          	bnez	a0,800070dc <__printf+0xa4>
    80007480:	e40c0ee3          	beqz	s8,800072dc <__printf+0x2a4>
    80007484:	00005517          	auipc	a0,0x5
    80007488:	5dc50513          	addi	a0,a0,1500 # 8000ca60 <pr>
    8000748c:	00001097          	auipc	ra,0x1
    80007490:	94c080e7          	jalr	-1716(ra) # 80007dd8 <release>
    80007494:	e49ff06f          	j	800072dc <__printf+0x2a4>
    80007498:	f7843783          	ld	a5,-136(s0)
    8000749c:	03000513          	li	a0,48
    800074a0:	01000d13          	li	s10,16
    800074a4:	00878713          	addi	a4,a5,8
    800074a8:	0007bc83          	ld	s9,0(a5)
    800074ac:	f6e43c23          	sd	a4,-136(s0)
    800074b0:	00000097          	auipc	ra,0x0
    800074b4:	9a4080e7          	jalr	-1628(ra) # 80006e54 <consputc>
    800074b8:	07800513          	li	a0,120
    800074bc:	00000097          	auipc	ra,0x0
    800074c0:	998080e7          	jalr	-1640(ra) # 80006e54 <consputc>
    800074c4:	00002d97          	auipc	s11,0x2
    800074c8:	474d8d93          	addi	s11,s11,1140 # 80009938 <digits>
    800074cc:	03ccd793          	srli	a5,s9,0x3c
    800074d0:	00fd87b3          	add	a5,s11,a5
    800074d4:	0007c503          	lbu	a0,0(a5)
    800074d8:	fffd0d1b          	addiw	s10,s10,-1
    800074dc:	004c9c93          	slli	s9,s9,0x4
    800074e0:	00000097          	auipc	ra,0x0
    800074e4:	974080e7          	jalr	-1676(ra) # 80006e54 <consputc>
    800074e8:	fe0d12e3          	bnez	s10,800074cc <__printf+0x494>
    800074ec:	f8dff06f          	j	80007478 <__printf+0x440>
    800074f0:	f7843783          	ld	a5,-136(s0)
    800074f4:	0007bc83          	ld	s9,0(a5)
    800074f8:	00878793          	addi	a5,a5,8
    800074fc:	f6f43c23          	sd	a5,-136(s0)
    80007500:	000c9a63          	bnez	s9,80007514 <__printf+0x4dc>
    80007504:	1080006f          	j	8000760c <__printf+0x5d4>
    80007508:	001c8c93          	addi	s9,s9,1
    8000750c:	00000097          	auipc	ra,0x0
    80007510:	948080e7          	jalr	-1720(ra) # 80006e54 <consputc>
    80007514:	000cc503          	lbu	a0,0(s9)
    80007518:	fe0518e3          	bnez	a0,80007508 <__printf+0x4d0>
    8000751c:	f5dff06f          	j	80007478 <__printf+0x440>
    80007520:	02500513          	li	a0,37
    80007524:	00000097          	auipc	ra,0x0
    80007528:	930080e7          	jalr	-1744(ra) # 80006e54 <consputc>
    8000752c:	000c8513          	mv	a0,s9
    80007530:	00000097          	auipc	ra,0x0
    80007534:	924080e7          	jalr	-1756(ra) # 80006e54 <consputc>
    80007538:	f41ff06f          	j	80007478 <__printf+0x440>
    8000753c:	02500513          	li	a0,37
    80007540:	00000097          	auipc	ra,0x0
    80007544:	914080e7          	jalr	-1772(ra) # 80006e54 <consputc>
    80007548:	f31ff06f          	j	80007478 <__printf+0x440>
    8000754c:	00030513          	mv	a0,t1
    80007550:	00000097          	auipc	ra,0x0
    80007554:	7bc080e7          	jalr	1980(ra) # 80007d0c <acquire>
    80007558:	b4dff06f          	j	800070a4 <__printf+0x6c>
    8000755c:	40c0053b          	negw	a0,a2
    80007560:	00a00713          	li	a4,10
    80007564:	02e576bb          	remuw	a3,a0,a4
    80007568:	00002d97          	auipc	s11,0x2
    8000756c:	3d0d8d93          	addi	s11,s11,976 # 80009938 <digits>
    80007570:	ff700593          	li	a1,-9
    80007574:	02069693          	slli	a3,a3,0x20
    80007578:	0206d693          	srli	a3,a3,0x20
    8000757c:	00dd86b3          	add	a3,s11,a3
    80007580:	0006c683          	lbu	a3,0(a3)
    80007584:	02e557bb          	divuw	a5,a0,a4
    80007588:	f8d40023          	sb	a3,-128(s0)
    8000758c:	10b65e63          	bge	a2,a1,800076a8 <__printf+0x670>
    80007590:	06300593          	li	a1,99
    80007594:	02e7f6bb          	remuw	a3,a5,a4
    80007598:	02069693          	slli	a3,a3,0x20
    8000759c:	0206d693          	srli	a3,a3,0x20
    800075a0:	00dd86b3          	add	a3,s11,a3
    800075a4:	0006c683          	lbu	a3,0(a3)
    800075a8:	02e7d73b          	divuw	a4,a5,a4
    800075ac:	00200793          	li	a5,2
    800075b0:	f8d400a3          	sb	a3,-127(s0)
    800075b4:	bca5ece3          	bltu	a1,a0,8000718c <__printf+0x154>
    800075b8:	ce5ff06f          	j	8000729c <__printf+0x264>
    800075bc:	40e007bb          	negw	a5,a4
    800075c0:	00002d97          	auipc	s11,0x2
    800075c4:	378d8d93          	addi	s11,s11,888 # 80009938 <digits>
    800075c8:	00f7f693          	andi	a3,a5,15
    800075cc:	00dd86b3          	add	a3,s11,a3
    800075d0:	0006c583          	lbu	a1,0(a3)
    800075d4:	ff100613          	li	a2,-15
    800075d8:	0047d69b          	srliw	a3,a5,0x4
    800075dc:	f8b40023          	sb	a1,-128(s0)
    800075e0:	0047d59b          	srliw	a1,a5,0x4
    800075e4:	0ac75e63          	bge	a4,a2,800076a0 <__printf+0x668>
    800075e8:	00f6f693          	andi	a3,a3,15
    800075ec:	00dd86b3          	add	a3,s11,a3
    800075f0:	0006c603          	lbu	a2,0(a3)
    800075f4:	00f00693          	li	a3,15
    800075f8:	0087d79b          	srliw	a5,a5,0x8
    800075fc:	f8c400a3          	sb	a2,-127(s0)
    80007600:	d8b6e4e3          	bltu	a3,a1,80007388 <__printf+0x350>
    80007604:	00200793          	li	a5,2
    80007608:	e2dff06f          	j	80007434 <__printf+0x3fc>
    8000760c:	00002c97          	auipc	s9,0x2
    80007610:	30cc8c93          	addi	s9,s9,780 # 80009918 <_ZTV7WorkerD+0x3d8>
    80007614:	02800513          	li	a0,40
    80007618:	ef1ff06f          	j	80007508 <__printf+0x4d0>
    8000761c:	00700793          	li	a5,7
    80007620:	00600c93          	li	s9,6
    80007624:	e0dff06f          	j	80007430 <__printf+0x3f8>
    80007628:	00700793          	li	a5,7
    8000762c:	00600c93          	li	s9,6
    80007630:	c69ff06f          	j	80007298 <__printf+0x260>
    80007634:	00300793          	li	a5,3
    80007638:	00200c93          	li	s9,2
    8000763c:	c5dff06f          	j	80007298 <__printf+0x260>
    80007640:	00300793          	li	a5,3
    80007644:	00200c93          	li	s9,2
    80007648:	de9ff06f          	j	80007430 <__printf+0x3f8>
    8000764c:	00400793          	li	a5,4
    80007650:	00300c93          	li	s9,3
    80007654:	dddff06f          	j	80007430 <__printf+0x3f8>
    80007658:	00400793          	li	a5,4
    8000765c:	00300c93          	li	s9,3
    80007660:	c39ff06f          	j	80007298 <__printf+0x260>
    80007664:	00500793          	li	a5,5
    80007668:	00400c93          	li	s9,4
    8000766c:	c2dff06f          	j	80007298 <__printf+0x260>
    80007670:	00500793          	li	a5,5
    80007674:	00400c93          	li	s9,4
    80007678:	db9ff06f          	j	80007430 <__printf+0x3f8>
    8000767c:	00600793          	li	a5,6
    80007680:	00500c93          	li	s9,5
    80007684:	dadff06f          	j	80007430 <__printf+0x3f8>
    80007688:	00600793          	li	a5,6
    8000768c:	00500c93          	li	s9,5
    80007690:	c09ff06f          	j	80007298 <__printf+0x260>
    80007694:	00800793          	li	a5,8
    80007698:	00700c93          	li	s9,7
    8000769c:	bfdff06f          	j	80007298 <__printf+0x260>
    800076a0:	00100793          	li	a5,1
    800076a4:	d91ff06f          	j	80007434 <__printf+0x3fc>
    800076a8:	00100793          	li	a5,1
    800076ac:	bf1ff06f          	j	8000729c <__printf+0x264>
    800076b0:	00900793          	li	a5,9
    800076b4:	00800c93          	li	s9,8
    800076b8:	be1ff06f          	j	80007298 <__printf+0x260>
    800076bc:	00002517          	auipc	a0,0x2
    800076c0:	26450513          	addi	a0,a0,612 # 80009920 <_ZTV7WorkerD+0x3e0>
    800076c4:	00000097          	auipc	ra,0x0
    800076c8:	918080e7          	jalr	-1768(ra) # 80006fdc <panic>

00000000800076cc <printfinit>:
    800076cc:	fe010113          	addi	sp,sp,-32
    800076d0:	00813823          	sd	s0,16(sp)
    800076d4:	00913423          	sd	s1,8(sp)
    800076d8:	00113c23          	sd	ra,24(sp)
    800076dc:	02010413          	addi	s0,sp,32
    800076e0:	00005497          	auipc	s1,0x5
    800076e4:	38048493          	addi	s1,s1,896 # 8000ca60 <pr>
    800076e8:	00048513          	mv	a0,s1
    800076ec:	00002597          	auipc	a1,0x2
    800076f0:	24458593          	addi	a1,a1,580 # 80009930 <_ZTV7WorkerD+0x3f0>
    800076f4:	00000097          	auipc	ra,0x0
    800076f8:	5f4080e7          	jalr	1524(ra) # 80007ce8 <initlock>
    800076fc:	01813083          	ld	ra,24(sp)
    80007700:	01013403          	ld	s0,16(sp)
    80007704:	0004ac23          	sw	zero,24(s1)
    80007708:	00813483          	ld	s1,8(sp)
    8000770c:	02010113          	addi	sp,sp,32
    80007710:	00008067          	ret

0000000080007714 <uartinit>:
    80007714:	ff010113          	addi	sp,sp,-16
    80007718:	00813423          	sd	s0,8(sp)
    8000771c:	01010413          	addi	s0,sp,16
    80007720:	100007b7          	lui	a5,0x10000
    80007724:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007728:	f8000713          	li	a4,-128
    8000772c:	00e781a3          	sb	a4,3(a5)
    80007730:	00300713          	li	a4,3
    80007734:	00e78023          	sb	a4,0(a5)
    80007738:	000780a3          	sb	zero,1(a5)
    8000773c:	00e781a3          	sb	a4,3(a5)
    80007740:	00700693          	li	a3,7
    80007744:	00d78123          	sb	a3,2(a5)
    80007748:	00e780a3          	sb	a4,1(a5)
    8000774c:	00813403          	ld	s0,8(sp)
    80007750:	01010113          	addi	sp,sp,16
    80007754:	00008067          	ret

0000000080007758 <uartputc>:
    80007758:	00004797          	auipc	a5,0x4
    8000775c:	0bc7a783          	lw	a5,188(a5) # 8000b814 <panicked>
    80007760:	00078463          	beqz	a5,80007768 <uartputc+0x10>
    80007764:	0000006f          	j	80007764 <uartputc+0xc>
    80007768:	fd010113          	addi	sp,sp,-48
    8000776c:	02813023          	sd	s0,32(sp)
    80007770:	00913c23          	sd	s1,24(sp)
    80007774:	01213823          	sd	s2,16(sp)
    80007778:	01313423          	sd	s3,8(sp)
    8000777c:	02113423          	sd	ra,40(sp)
    80007780:	03010413          	addi	s0,sp,48
    80007784:	00004917          	auipc	s2,0x4
    80007788:	09490913          	addi	s2,s2,148 # 8000b818 <uart_tx_r>
    8000778c:	00093783          	ld	a5,0(s2)
    80007790:	00004497          	auipc	s1,0x4
    80007794:	09048493          	addi	s1,s1,144 # 8000b820 <uart_tx_w>
    80007798:	0004b703          	ld	a4,0(s1)
    8000779c:	02078693          	addi	a3,a5,32
    800077a0:	00050993          	mv	s3,a0
    800077a4:	02e69c63          	bne	a3,a4,800077dc <uartputc+0x84>
    800077a8:	00001097          	auipc	ra,0x1
    800077ac:	834080e7          	jalr	-1996(ra) # 80007fdc <push_on>
    800077b0:	00093783          	ld	a5,0(s2)
    800077b4:	0004b703          	ld	a4,0(s1)
    800077b8:	02078793          	addi	a5,a5,32
    800077bc:	00e79463          	bne	a5,a4,800077c4 <uartputc+0x6c>
    800077c0:	0000006f          	j	800077c0 <uartputc+0x68>
    800077c4:	00001097          	auipc	ra,0x1
    800077c8:	88c080e7          	jalr	-1908(ra) # 80008050 <pop_on>
    800077cc:	00093783          	ld	a5,0(s2)
    800077d0:	0004b703          	ld	a4,0(s1)
    800077d4:	02078693          	addi	a3,a5,32
    800077d8:	fce688e3          	beq	a3,a4,800077a8 <uartputc+0x50>
    800077dc:	01f77693          	andi	a3,a4,31
    800077e0:	00005597          	auipc	a1,0x5
    800077e4:	2a058593          	addi	a1,a1,672 # 8000ca80 <uart_tx_buf>
    800077e8:	00d586b3          	add	a3,a1,a3
    800077ec:	00170713          	addi	a4,a4,1
    800077f0:	01368023          	sb	s3,0(a3)
    800077f4:	00e4b023          	sd	a4,0(s1)
    800077f8:	10000637          	lui	a2,0x10000
    800077fc:	02f71063          	bne	a4,a5,8000781c <uartputc+0xc4>
    80007800:	0340006f          	j	80007834 <uartputc+0xdc>
    80007804:	00074703          	lbu	a4,0(a4)
    80007808:	00f93023          	sd	a5,0(s2)
    8000780c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007810:	00093783          	ld	a5,0(s2)
    80007814:	0004b703          	ld	a4,0(s1)
    80007818:	00f70e63          	beq	a4,a5,80007834 <uartputc+0xdc>
    8000781c:	00564683          	lbu	a3,5(a2)
    80007820:	01f7f713          	andi	a4,a5,31
    80007824:	00e58733          	add	a4,a1,a4
    80007828:	0206f693          	andi	a3,a3,32
    8000782c:	00178793          	addi	a5,a5,1
    80007830:	fc069ae3          	bnez	a3,80007804 <uartputc+0xac>
    80007834:	02813083          	ld	ra,40(sp)
    80007838:	02013403          	ld	s0,32(sp)
    8000783c:	01813483          	ld	s1,24(sp)
    80007840:	01013903          	ld	s2,16(sp)
    80007844:	00813983          	ld	s3,8(sp)
    80007848:	03010113          	addi	sp,sp,48
    8000784c:	00008067          	ret

0000000080007850 <uartputc_sync>:
    80007850:	ff010113          	addi	sp,sp,-16
    80007854:	00813423          	sd	s0,8(sp)
    80007858:	01010413          	addi	s0,sp,16
    8000785c:	00004717          	auipc	a4,0x4
    80007860:	fb872703          	lw	a4,-72(a4) # 8000b814 <panicked>
    80007864:	02071663          	bnez	a4,80007890 <uartputc_sync+0x40>
    80007868:	00050793          	mv	a5,a0
    8000786c:	100006b7          	lui	a3,0x10000
    80007870:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007874:	02077713          	andi	a4,a4,32
    80007878:	fe070ce3          	beqz	a4,80007870 <uartputc_sync+0x20>
    8000787c:	0ff7f793          	andi	a5,a5,255
    80007880:	00f68023          	sb	a5,0(a3)
    80007884:	00813403          	ld	s0,8(sp)
    80007888:	01010113          	addi	sp,sp,16
    8000788c:	00008067          	ret
    80007890:	0000006f          	j	80007890 <uartputc_sync+0x40>

0000000080007894 <uartstart>:
    80007894:	ff010113          	addi	sp,sp,-16
    80007898:	00813423          	sd	s0,8(sp)
    8000789c:	01010413          	addi	s0,sp,16
    800078a0:	00004617          	auipc	a2,0x4
    800078a4:	f7860613          	addi	a2,a2,-136 # 8000b818 <uart_tx_r>
    800078a8:	00004517          	auipc	a0,0x4
    800078ac:	f7850513          	addi	a0,a0,-136 # 8000b820 <uart_tx_w>
    800078b0:	00063783          	ld	a5,0(a2)
    800078b4:	00053703          	ld	a4,0(a0)
    800078b8:	04f70263          	beq	a4,a5,800078fc <uartstart+0x68>
    800078bc:	100005b7          	lui	a1,0x10000
    800078c0:	00005817          	auipc	a6,0x5
    800078c4:	1c080813          	addi	a6,a6,448 # 8000ca80 <uart_tx_buf>
    800078c8:	01c0006f          	j	800078e4 <uartstart+0x50>
    800078cc:	0006c703          	lbu	a4,0(a3)
    800078d0:	00f63023          	sd	a5,0(a2)
    800078d4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800078d8:	00063783          	ld	a5,0(a2)
    800078dc:	00053703          	ld	a4,0(a0)
    800078e0:	00f70e63          	beq	a4,a5,800078fc <uartstart+0x68>
    800078e4:	01f7f713          	andi	a4,a5,31
    800078e8:	00e806b3          	add	a3,a6,a4
    800078ec:	0055c703          	lbu	a4,5(a1)
    800078f0:	00178793          	addi	a5,a5,1
    800078f4:	02077713          	andi	a4,a4,32
    800078f8:	fc071ae3          	bnez	a4,800078cc <uartstart+0x38>
    800078fc:	00813403          	ld	s0,8(sp)
    80007900:	01010113          	addi	sp,sp,16
    80007904:	00008067          	ret

0000000080007908 <uartgetc>:
    80007908:	ff010113          	addi	sp,sp,-16
    8000790c:	00813423          	sd	s0,8(sp)
    80007910:	01010413          	addi	s0,sp,16
    80007914:	10000737          	lui	a4,0x10000
    80007918:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000791c:	0017f793          	andi	a5,a5,1
    80007920:	00078c63          	beqz	a5,80007938 <uartgetc+0x30>
    80007924:	00074503          	lbu	a0,0(a4)
    80007928:	0ff57513          	andi	a0,a0,255
    8000792c:	00813403          	ld	s0,8(sp)
    80007930:	01010113          	addi	sp,sp,16
    80007934:	00008067          	ret
    80007938:	fff00513          	li	a0,-1
    8000793c:	ff1ff06f          	j	8000792c <uartgetc+0x24>

0000000080007940 <uartintr>:
    80007940:	100007b7          	lui	a5,0x10000
    80007944:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007948:	0017f793          	andi	a5,a5,1
    8000794c:	0a078463          	beqz	a5,800079f4 <uartintr+0xb4>
    80007950:	fe010113          	addi	sp,sp,-32
    80007954:	00813823          	sd	s0,16(sp)
    80007958:	00913423          	sd	s1,8(sp)
    8000795c:	00113c23          	sd	ra,24(sp)
    80007960:	02010413          	addi	s0,sp,32
    80007964:	100004b7          	lui	s1,0x10000
    80007968:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000796c:	0ff57513          	andi	a0,a0,255
    80007970:	fffff097          	auipc	ra,0xfffff
    80007974:	534080e7          	jalr	1332(ra) # 80006ea4 <consoleintr>
    80007978:	0054c783          	lbu	a5,5(s1)
    8000797c:	0017f793          	andi	a5,a5,1
    80007980:	fe0794e3          	bnez	a5,80007968 <uartintr+0x28>
    80007984:	00004617          	auipc	a2,0x4
    80007988:	e9460613          	addi	a2,a2,-364 # 8000b818 <uart_tx_r>
    8000798c:	00004517          	auipc	a0,0x4
    80007990:	e9450513          	addi	a0,a0,-364 # 8000b820 <uart_tx_w>
    80007994:	00063783          	ld	a5,0(a2)
    80007998:	00053703          	ld	a4,0(a0)
    8000799c:	04f70263          	beq	a4,a5,800079e0 <uartintr+0xa0>
    800079a0:	100005b7          	lui	a1,0x10000
    800079a4:	00005817          	auipc	a6,0x5
    800079a8:	0dc80813          	addi	a6,a6,220 # 8000ca80 <uart_tx_buf>
    800079ac:	01c0006f          	j	800079c8 <uartintr+0x88>
    800079b0:	0006c703          	lbu	a4,0(a3)
    800079b4:	00f63023          	sd	a5,0(a2)
    800079b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800079bc:	00063783          	ld	a5,0(a2)
    800079c0:	00053703          	ld	a4,0(a0)
    800079c4:	00f70e63          	beq	a4,a5,800079e0 <uartintr+0xa0>
    800079c8:	01f7f713          	andi	a4,a5,31
    800079cc:	00e806b3          	add	a3,a6,a4
    800079d0:	0055c703          	lbu	a4,5(a1)
    800079d4:	00178793          	addi	a5,a5,1
    800079d8:	02077713          	andi	a4,a4,32
    800079dc:	fc071ae3          	bnez	a4,800079b0 <uartintr+0x70>
    800079e0:	01813083          	ld	ra,24(sp)
    800079e4:	01013403          	ld	s0,16(sp)
    800079e8:	00813483          	ld	s1,8(sp)
    800079ec:	02010113          	addi	sp,sp,32
    800079f0:	00008067          	ret
    800079f4:	00004617          	auipc	a2,0x4
    800079f8:	e2460613          	addi	a2,a2,-476 # 8000b818 <uart_tx_r>
    800079fc:	00004517          	auipc	a0,0x4
    80007a00:	e2450513          	addi	a0,a0,-476 # 8000b820 <uart_tx_w>
    80007a04:	00063783          	ld	a5,0(a2)
    80007a08:	00053703          	ld	a4,0(a0)
    80007a0c:	04f70263          	beq	a4,a5,80007a50 <uartintr+0x110>
    80007a10:	100005b7          	lui	a1,0x10000
    80007a14:	00005817          	auipc	a6,0x5
    80007a18:	06c80813          	addi	a6,a6,108 # 8000ca80 <uart_tx_buf>
    80007a1c:	01c0006f          	j	80007a38 <uartintr+0xf8>
    80007a20:	0006c703          	lbu	a4,0(a3)
    80007a24:	00f63023          	sd	a5,0(a2)
    80007a28:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007a2c:	00063783          	ld	a5,0(a2)
    80007a30:	00053703          	ld	a4,0(a0)
    80007a34:	02f70063          	beq	a4,a5,80007a54 <uartintr+0x114>
    80007a38:	01f7f713          	andi	a4,a5,31
    80007a3c:	00e806b3          	add	a3,a6,a4
    80007a40:	0055c703          	lbu	a4,5(a1)
    80007a44:	00178793          	addi	a5,a5,1
    80007a48:	02077713          	andi	a4,a4,32
    80007a4c:	fc071ae3          	bnez	a4,80007a20 <uartintr+0xe0>
    80007a50:	00008067          	ret
    80007a54:	00008067          	ret

0000000080007a58 <kinit>:
    80007a58:	fc010113          	addi	sp,sp,-64
    80007a5c:	02913423          	sd	s1,40(sp)
    80007a60:	fffff7b7          	lui	a5,0xfffff
    80007a64:	00006497          	auipc	s1,0x6
    80007a68:	03b48493          	addi	s1,s1,59 # 8000da9f <end+0xfff>
    80007a6c:	02813823          	sd	s0,48(sp)
    80007a70:	01313c23          	sd	s3,24(sp)
    80007a74:	00f4f4b3          	and	s1,s1,a5
    80007a78:	02113c23          	sd	ra,56(sp)
    80007a7c:	03213023          	sd	s2,32(sp)
    80007a80:	01413823          	sd	s4,16(sp)
    80007a84:	01513423          	sd	s5,8(sp)
    80007a88:	04010413          	addi	s0,sp,64
    80007a8c:	000017b7          	lui	a5,0x1
    80007a90:	01100993          	li	s3,17
    80007a94:	00f487b3          	add	a5,s1,a5
    80007a98:	01b99993          	slli	s3,s3,0x1b
    80007a9c:	06f9e063          	bltu	s3,a5,80007afc <kinit+0xa4>
    80007aa0:	00005a97          	auipc	s5,0x5
    80007aa4:	000a8a93          	mv	s5,s5
    80007aa8:	0754ec63          	bltu	s1,s5,80007b20 <kinit+0xc8>
    80007aac:	0734fa63          	bgeu	s1,s3,80007b20 <kinit+0xc8>
    80007ab0:	00088a37          	lui	s4,0x88
    80007ab4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007ab8:	00004917          	auipc	s2,0x4
    80007abc:	d7090913          	addi	s2,s2,-656 # 8000b828 <kmem>
    80007ac0:	00ca1a13          	slli	s4,s4,0xc
    80007ac4:	0140006f          	j	80007ad8 <kinit+0x80>
    80007ac8:	000017b7          	lui	a5,0x1
    80007acc:	00f484b3          	add	s1,s1,a5
    80007ad0:	0554e863          	bltu	s1,s5,80007b20 <kinit+0xc8>
    80007ad4:	0534f663          	bgeu	s1,s3,80007b20 <kinit+0xc8>
    80007ad8:	00001637          	lui	a2,0x1
    80007adc:	00100593          	li	a1,1
    80007ae0:	00048513          	mv	a0,s1
    80007ae4:	00000097          	auipc	ra,0x0
    80007ae8:	5e4080e7          	jalr	1508(ra) # 800080c8 <__memset>
    80007aec:	00093783          	ld	a5,0(s2)
    80007af0:	00f4b023          	sd	a5,0(s1)
    80007af4:	00993023          	sd	s1,0(s2)
    80007af8:	fd4498e3          	bne	s1,s4,80007ac8 <kinit+0x70>
    80007afc:	03813083          	ld	ra,56(sp)
    80007b00:	03013403          	ld	s0,48(sp)
    80007b04:	02813483          	ld	s1,40(sp)
    80007b08:	02013903          	ld	s2,32(sp)
    80007b0c:	01813983          	ld	s3,24(sp)
    80007b10:	01013a03          	ld	s4,16(sp)
    80007b14:	00813a83          	ld	s5,8(sp)
    80007b18:	04010113          	addi	sp,sp,64
    80007b1c:	00008067          	ret
    80007b20:	00002517          	auipc	a0,0x2
    80007b24:	e3050513          	addi	a0,a0,-464 # 80009950 <digits+0x18>
    80007b28:	fffff097          	auipc	ra,0xfffff
    80007b2c:	4b4080e7          	jalr	1204(ra) # 80006fdc <panic>

0000000080007b30 <freerange>:
    80007b30:	fc010113          	addi	sp,sp,-64
    80007b34:	000017b7          	lui	a5,0x1
    80007b38:	02913423          	sd	s1,40(sp)
    80007b3c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007b40:	009504b3          	add	s1,a0,s1
    80007b44:	fffff537          	lui	a0,0xfffff
    80007b48:	02813823          	sd	s0,48(sp)
    80007b4c:	02113c23          	sd	ra,56(sp)
    80007b50:	03213023          	sd	s2,32(sp)
    80007b54:	01313c23          	sd	s3,24(sp)
    80007b58:	01413823          	sd	s4,16(sp)
    80007b5c:	01513423          	sd	s5,8(sp)
    80007b60:	01613023          	sd	s6,0(sp)
    80007b64:	04010413          	addi	s0,sp,64
    80007b68:	00a4f4b3          	and	s1,s1,a0
    80007b6c:	00f487b3          	add	a5,s1,a5
    80007b70:	06f5e463          	bltu	a1,a5,80007bd8 <freerange+0xa8>
    80007b74:	00005a97          	auipc	s5,0x5
    80007b78:	f2ca8a93          	addi	s5,s5,-212 # 8000caa0 <end>
    80007b7c:	0954e263          	bltu	s1,s5,80007c00 <freerange+0xd0>
    80007b80:	01100993          	li	s3,17
    80007b84:	01b99993          	slli	s3,s3,0x1b
    80007b88:	0734fc63          	bgeu	s1,s3,80007c00 <freerange+0xd0>
    80007b8c:	00058a13          	mv	s4,a1
    80007b90:	00004917          	auipc	s2,0x4
    80007b94:	c9890913          	addi	s2,s2,-872 # 8000b828 <kmem>
    80007b98:	00002b37          	lui	s6,0x2
    80007b9c:	0140006f          	j	80007bb0 <freerange+0x80>
    80007ba0:	000017b7          	lui	a5,0x1
    80007ba4:	00f484b3          	add	s1,s1,a5
    80007ba8:	0554ec63          	bltu	s1,s5,80007c00 <freerange+0xd0>
    80007bac:	0534fa63          	bgeu	s1,s3,80007c00 <freerange+0xd0>
    80007bb0:	00001637          	lui	a2,0x1
    80007bb4:	00100593          	li	a1,1
    80007bb8:	00048513          	mv	a0,s1
    80007bbc:	00000097          	auipc	ra,0x0
    80007bc0:	50c080e7          	jalr	1292(ra) # 800080c8 <__memset>
    80007bc4:	00093703          	ld	a4,0(s2)
    80007bc8:	016487b3          	add	a5,s1,s6
    80007bcc:	00e4b023          	sd	a4,0(s1)
    80007bd0:	00993023          	sd	s1,0(s2)
    80007bd4:	fcfa76e3          	bgeu	s4,a5,80007ba0 <freerange+0x70>
    80007bd8:	03813083          	ld	ra,56(sp)
    80007bdc:	03013403          	ld	s0,48(sp)
    80007be0:	02813483          	ld	s1,40(sp)
    80007be4:	02013903          	ld	s2,32(sp)
    80007be8:	01813983          	ld	s3,24(sp)
    80007bec:	01013a03          	ld	s4,16(sp)
    80007bf0:	00813a83          	ld	s5,8(sp)
    80007bf4:	00013b03          	ld	s6,0(sp)
    80007bf8:	04010113          	addi	sp,sp,64
    80007bfc:	00008067          	ret
    80007c00:	00002517          	auipc	a0,0x2
    80007c04:	d5050513          	addi	a0,a0,-688 # 80009950 <digits+0x18>
    80007c08:	fffff097          	auipc	ra,0xfffff
    80007c0c:	3d4080e7          	jalr	980(ra) # 80006fdc <panic>

0000000080007c10 <kfree>:
    80007c10:	fe010113          	addi	sp,sp,-32
    80007c14:	00813823          	sd	s0,16(sp)
    80007c18:	00113c23          	sd	ra,24(sp)
    80007c1c:	00913423          	sd	s1,8(sp)
    80007c20:	02010413          	addi	s0,sp,32
    80007c24:	03451793          	slli	a5,a0,0x34
    80007c28:	04079c63          	bnez	a5,80007c80 <kfree+0x70>
    80007c2c:	00005797          	auipc	a5,0x5
    80007c30:	e7478793          	addi	a5,a5,-396 # 8000caa0 <end>
    80007c34:	00050493          	mv	s1,a0
    80007c38:	04f56463          	bltu	a0,a5,80007c80 <kfree+0x70>
    80007c3c:	01100793          	li	a5,17
    80007c40:	01b79793          	slli	a5,a5,0x1b
    80007c44:	02f57e63          	bgeu	a0,a5,80007c80 <kfree+0x70>
    80007c48:	00001637          	lui	a2,0x1
    80007c4c:	00100593          	li	a1,1
    80007c50:	00000097          	auipc	ra,0x0
    80007c54:	478080e7          	jalr	1144(ra) # 800080c8 <__memset>
    80007c58:	00004797          	auipc	a5,0x4
    80007c5c:	bd078793          	addi	a5,a5,-1072 # 8000b828 <kmem>
    80007c60:	0007b703          	ld	a4,0(a5)
    80007c64:	01813083          	ld	ra,24(sp)
    80007c68:	01013403          	ld	s0,16(sp)
    80007c6c:	00e4b023          	sd	a4,0(s1)
    80007c70:	0097b023          	sd	s1,0(a5)
    80007c74:	00813483          	ld	s1,8(sp)
    80007c78:	02010113          	addi	sp,sp,32
    80007c7c:	00008067          	ret
    80007c80:	00002517          	auipc	a0,0x2
    80007c84:	cd050513          	addi	a0,a0,-816 # 80009950 <digits+0x18>
    80007c88:	fffff097          	auipc	ra,0xfffff
    80007c8c:	354080e7          	jalr	852(ra) # 80006fdc <panic>

0000000080007c90 <kalloc>:
    80007c90:	fe010113          	addi	sp,sp,-32
    80007c94:	00813823          	sd	s0,16(sp)
    80007c98:	00913423          	sd	s1,8(sp)
    80007c9c:	00113c23          	sd	ra,24(sp)
    80007ca0:	02010413          	addi	s0,sp,32
    80007ca4:	00004797          	auipc	a5,0x4
    80007ca8:	b8478793          	addi	a5,a5,-1148 # 8000b828 <kmem>
    80007cac:	0007b483          	ld	s1,0(a5)
    80007cb0:	02048063          	beqz	s1,80007cd0 <kalloc+0x40>
    80007cb4:	0004b703          	ld	a4,0(s1)
    80007cb8:	00001637          	lui	a2,0x1
    80007cbc:	00500593          	li	a1,5
    80007cc0:	00048513          	mv	a0,s1
    80007cc4:	00e7b023          	sd	a4,0(a5)
    80007cc8:	00000097          	auipc	ra,0x0
    80007ccc:	400080e7          	jalr	1024(ra) # 800080c8 <__memset>
    80007cd0:	01813083          	ld	ra,24(sp)
    80007cd4:	01013403          	ld	s0,16(sp)
    80007cd8:	00048513          	mv	a0,s1
    80007cdc:	00813483          	ld	s1,8(sp)
    80007ce0:	02010113          	addi	sp,sp,32
    80007ce4:	00008067          	ret

0000000080007ce8 <initlock>:
    80007ce8:	ff010113          	addi	sp,sp,-16
    80007cec:	00813423          	sd	s0,8(sp)
    80007cf0:	01010413          	addi	s0,sp,16
    80007cf4:	00813403          	ld	s0,8(sp)
    80007cf8:	00b53423          	sd	a1,8(a0)
    80007cfc:	00052023          	sw	zero,0(a0)
    80007d00:	00053823          	sd	zero,16(a0)
    80007d04:	01010113          	addi	sp,sp,16
    80007d08:	00008067          	ret

0000000080007d0c <acquire>:
    80007d0c:	fe010113          	addi	sp,sp,-32
    80007d10:	00813823          	sd	s0,16(sp)
    80007d14:	00913423          	sd	s1,8(sp)
    80007d18:	00113c23          	sd	ra,24(sp)
    80007d1c:	01213023          	sd	s2,0(sp)
    80007d20:	02010413          	addi	s0,sp,32
    80007d24:	00050493          	mv	s1,a0
    80007d28:	10002973          	csrr	s2,sstatus
    80007d2c:	100027f3          	csrr	a5,sstatus
    80007d30:	ffd7f793          	andi	a5,a5,-3
    80007d34:	10079073          	csrw	sstatus,a5
    80007d38:	fffff097          	auipc	ra,0xfffff
    80007d3c:	8e0080e7          	jalr	-1824(ra) # 80006618 <mycpu>
    80007d40:	07852783          	lw	a5,120(a0)
    80007d44:	06078e63          	beqz	a5,80007dc0 <acquire+0xb4>
    80007d48:	fffff097          	auipc	ra,0xfffff
    80007d4c:	8d0080e7          	jalr	-1840(ra) # 80006618 <mycpu>
    80007d50:	07852783          	lw	a5,120(a0)
    80007d54:	0004a703          	lw	a4,0(s1)
    80007d58:	0017879b          	addiw	a5,a5,1
    80007d5c:	06f52c23          	sw	a5,120(a0)
    80007d60:	04071063          	bnez	a4,80007da0 <acquire+0x94>
    80007d64:	00100713          	li	a4,1
    80007d68:	00070793          	mv	a5,a4
    80007d6c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007d70:	0007879b          	sext.w	a5,a5
    80007d74:	fe079ae3          	bnez	a5,80007d68 <acquire+0x5c>
    80007d78:	0ff0000f          	fence
    80007d7c:	fffff097          	auipc	ra,0xfffff
    80007d80:	89c080e7          	jalr	-1892(ra) # 80006618 <mycpu>
    80007d84:	01813083          	ld	ra,24(sp)
    80007d88:	01013403          	ld	s0,16(sp)
    80007d8c:	00a4b823          	sd	a0,16(s1)
    80007d90:	00013903          	ld	s2,0(sp)
    80007d94:	00813483          	ld	s1,8(sp)
    80007d98:	02010113          	addi	sp,sp,32
    80007d9c:	00008067          	ret
    80007da0:	0104b903          	ld	s2,16(s1)
    80007da4:	fffff097          	auipc	ra,0xfffff
    80007da8:	874080e7          	jalr	-1932(ra) # 80006618 <mycpu>
    80007dac:	faa91ce3          	bne	s2,a0,80007d64 <acquire+0x58>
    80007db0:	00002517          	auipc	a0,0x2
    80007db4:	ba850513          	addi	a0,a0,-1112 # 80009958 <digits+0x20>
    80007db8:	fffff097          	auipc	ra,0xfffff
    80007dbc:	224080e7          	jalr	548(ra) # 80006fdc <panic>
    80007dc0:	00195913          	srli	s2,s2,0x1
    80007dc4:	fffff097          	auipc	ra,0xfffff
    80007dc8:	854080e7          	jalr	-1964(ra) # 80006618 <mycpu>
    80007dcc:	00197913          	andi	s2,s2,1
    80007dd0:	07252e23          	sw	s2,124(a0)
    80007dd4:	f75ff06f          	j	80007d48 <acquire+0x3c>

0000000080007dd8 <release>:
    80007dd8:	fe010113          	addi	sp,sp,-32
    80007ddc:	00813823          	sd	s0,16(sp)
    80007de0:	00113c23          	sd	ra,24(sp)
    80007de4:	00913423          	sd	s1,8(sp)
    80007de8:	01213023          	sd	s2,0(sp)
    80007dec:	02010413          	addi	s0,sp,32
    80007df0:	00052783          	lw	a5,0(a0)
    80007df4:	00079a63          	bnez	a5,80007e08 <release+0x30>
    80007df8:	00002517          	auipc	a0,0x2
    80007dfc:	b6850513          	addi	a0,a0,-1176 # 80009960 <digits+0x28>
    80007e00:	fffff097          	auipc	ra,0xfffff
    80007e04:	1dc080e7          	jalr	476(ra) # 80006fdc <panic>
    80007e08:	01053903          	ld	s2,16(a0)
    80007e0c:	00050493          	mv	s1,a0
    80007e10:	fffff097          	auipc	ra,0xfffff
    80007e14:	808080e7          	jalr	-2040(ra) # 80006618 <mycpu>
    80007e18:	fea910e3          	bne	s2,a0,80007df8 <release+0x20>
    80007e1c:	0004b823          	sd	zero,16(s1)
    80007e20:	0ff0000f          	fence
    80007e24:	0f50000f          	fence	iorw,ow
    80007e28:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007e2c:	ffffe097          	auipc	ra,0xffffe
    80007e30:	7ec080e7          	jalr	2028(ra) # 80006618 <mycpu>
    80007e34:	100027f3          	csrr	a5,sstatus
    80007e38:	0027f793          	andi	a5,a5,2
    80007e3c:	04079a63          	bnez	a5,80007e90 <release+0xb8>
    80007e40:	07852783          	lw	a5,120(a0)
    80007e44:	02f05e63          	blez	a5,80007e80 <release+0xa8>
    80007e48:	fff7871b          	addiw	a4,a5,-1
    80007e4c:	06e52c23          	sw	a4,120(a0)
    80007e50:	00071c63          	bnez	a4,80007e68 <release+0x90>
    80007e54:	07c52783          	lw	a5,124(a0)
    80007e58:	00078863          	beqz	a5,80007e68 <release+0x90>
    80007e5c:	100027f3          	csrr	a5,sstatus
    80007e60:	0027e793          	ori	a5,a5,2
    80007e64:	10079073          	csrw	sstatus,a5
    80007e68:	01813083          	ld	ra,24(sp)
    80007e6c:	01013403          	ld	s0,16(sp)
    80007e70:	00813483          	ld	s1,8(sp)
    80007e74:	00013903          	ld	s2,0(sp)
    80007e78:	02010113          	addi	sp,sp,32
    80007e7c:	00008067          	ret
    80007e80:	00002517          	auipc	a0,0x2
    80007e84:	b0050513          	addi	a0,a0,-1280 # 80009980 <digits+0x48>
    80007e88:	fffff097          	auipc	ra,0xfffff
    80007e8c:	154080e7          	jalr	340(ra) # 80006fdc <panic>
    80007e90:	00002517          	auipc	a0,0x2
    80007e94:	ad850513          	addi	a0,a0,-1320 # 80009968 <digits+0x30>
    80007e98:	fffff097          	auipc	ra,0xfffff
    80007e9c:	144080e7          	jalr	324(ra) # 80006fdc <panic>

0000000080007ea0 <holding>:
    80007ea0:	00052783          	lw	a5,0(a0)
    80007ea4:	00079663          	bnez	a5,80007eb0 <holding+0x10>
    80007ea8:	00000513          	li	a0,0
    80007eac:	00008067          	ret
    80007eb0:	fe010113          	addi	sp,sp,-32
    80007eb4:	00813823          	sd	s0,16(sp)
    80007eb8:	00913423          	sd	s1,8(sp)
    80007ebc:	00113c23          	sd	ra,24(sp)
    80007ec0:	02010413          	addi	s0,sp,32
    80007ec4:	01053483          	ld	s1,16(a0)
    80007ec8:	ffffe097          	auipc	ra,0xffffe
    80007ecc:	750080e7          	jalr	1872(ra) # 80006618 <mycpu>
    80007ed0:	01813083          	ld	ra,24(sp)
    80007ed4:	01013403          	ld	s0,16(sp)
    80007ed8:	40a48533          	sub	a0,s1,a0
    80007edc:	00153513          	seqz	a0,a0
    80007ee0:	00813483          	ld	s1,8(sp)
    80007ee4:	02010113          	addi	sp,sp,32
    80007ee8:	00008067          	ret

0000000080007eec <push_off>:
    80007eec:	fe010113          	addi	sp,sp,-32
    80007ef0:	00813823          	sd	s0,16(sp)
    80007ef4:	00113c23          	sd	ra,24(sp)
    80007ef8:	00913423          	sd	s1,8(sp)
    80007efc:	02010413          	addi	s0,sp,32
    80007f00:	100024f3          	csrr	s1,sstatus
    80007f04:	100027f3          	csrr	a5,sstatus
    80007f08:	ffd7f793          	andi	a5,a5,-3
    80007f0c:	10079073          	csrw	sstatus,a5
    80007f10:	ffffe097          	auipc	ra,0xffffe
    80007f14:	708080e7          	jalr	1800(ra) # 80006618 <mycpu>
    80007f18:	07852783          	lw	a5,120(a0)
    80007f1c:	02078663          	beqz	a5,80007f48 <push_off+0x5c>
    80007f20:	ffffe097          	auipc	ra,0xffffe
    80007f24:	6f8080e7          	jalr	1784(ra) # 80006618 <mycpu>
    80007f28:	07852783          	lw	a5,120(a0)
    80007f2c:	01813083          	ld	ra,24(sp)
    80007f30:	01013403          	ld	s0,16(sp)
    80007f34:	0017879b          	addiw	a5,a5,1
    80007f38:	06f52c23          	sw	a5,120(a0)
    80007f3c:	00813483          	ld	s1,8(sp)
    80007f40:	02010113          	addi	sp,sp,32
    80007f44:	00008067          	ret
    80007f48:	0014d493          	srli	s1,s1,0x1
    80007f4c:	ffffe097          	auipc	ra,0xffffe
    80007f50:	6cc080e7          	jalr	1740(ra) # 80006618 <mycpu>
    80007f54:	0014f493          	andi	s1,s1,1
    80007f58:	06952e23          	sw	s1,124(a0)
    80007f5c:	fc5ff06f          	j	80007f20 <push_off+0x34>

0000000080007f60 <pop_off>:
    80007f60:	ff010113          	addi	sp,sp,-16
    80007f64:	00813023          	sd	s0,0(sp)
    80007f68:	00113423          	sd	ra,8(sp)
    80007f6c:	01010413          	addi	s0,sp,16
    80007f70:	ffffe097          	auipc	ra,0xffffe
    80007f74:	6a8080e7          	jalr	1704(ra) # 80006618 <mycpu>
    80007f78:	100027f3          	csrr	a5,sstatus
    80007f7c:	0027f793          	andi	a5,a5,2
    80007f80:	04079663          	bnez	a5,80007fcc <pop_off+0x6c>
    80007f84:	07852783          	lw	a5,120(a0)
    80007f88:	02f05a63          	blez	a5,80007fbc <pop_off+0x5c>
    80007f8c:	fff7871b          	addiw	a4,a5,-1
    80007f90:	06e52c23          	sw	a4,120(a0)
    80007f94:	00071c63          	bnez	a4,80007fac <pop_off+0x4c>
    80007f98:	07c52783          	lw	a5,124(a0)
    80007f9c:	00078863          	beqz	a5,80007fac <pop_off+0x4c>
    80007fa0:	100027f3          	csrr	a5,sstatus
    80007fa4:	0027e793          	ori	a5,a5,2
    80007fa8:	10079073          	csrw	sstatus,a5
    80007fac:	00813083          	ld	ra,8(sp)
    80007fb0:	00013403          	ld	s0,0(sp)
    80007fb4:	01010113          	addi	sp,sp,16
    80007fb8:	00008067          	ret
    80007fbc:	00002517          	auipc	a0,0x2
    80007fc0:	9c450513          	addi	a0,a0,-1596 # 80009980 <digits+0x48>
    80007fc4:	fffff097          	auipc	ra,0xfffff
    80007fc8:	018080e7          	jalr	24(ra) # 80006fdc <panic>
    80007fcc:	00002517          	auipc	a0,0x2
    80007fd0:	99c50513          	addi	a0,a0,-1636 # 80009968 <digits+0x30>
    80007fd4:	fffff097          	auipc	ra,0xfffff
    80007fd8:	008080e7          	jalr	8(ra) # 80006fdc <panic>

0000000080007fdc <push_on>:
    80007fdc:	fe010113          	addi	sp,sp,-32
    80007fe0:	00813823          	sd	s0,16(sp)
    80007fe4:	00113c23          	sd	ra,24(sp)
    80007fe8:	00913423          	sd	s1,8(sp)
    80007fec:	02010413          	addi	s0,sp,32
    80007ff0:	100024f3          	csrr	s1,sstatus
    80007ff4:	100027f3          	csrr	a5,sstatus
    80007ff8:	0027e793          	ori	a5,a5,2
    80007ffc:	10079073          	csrw	sstatus,a5
    80008000:	ffffe097          	auipc	ra,0xffffe
    80008004:	618080e7          	jalr	1560(ra) # 80006618 <mycpu>
    80008008:	07852783          	lw	a5,120(a0)
    8000800c:	02078663          	beqz	a5,80008038 <push_on+0x5c>
    80008010:	ffffe097          	auipc	ra,0xffffe
    80008014:	608080e7          	jalr	1544(ra) # 80006618 <mycpu>
    80008018:	07852783          	lw	a5,120(a0)
    8000801c:	01813083          	ld	ra,24(sp)
    80008020:	01013403          	ld	s0,16(sp)
    80008024:	0017879b          	addiw	a5,a5,1
    80008028:	06f52c23          	sw	a5,120(a0)
    8000802c:	00813483          	ld	s1,8(sp)
    80008030:	02010113          	addi	sp,sp,32
    80008034:	00008067          	ret
    80008038:	0014d493          	srli	s1,s1,0x1
    8000803c:	ffffe097          	auipc	ra,0xffffe
    80008040:	5dc080e7          	jalr	1500(ra) # 80006618 <mycpu>
    80008044:	0014f493          	andi	s1,s1,1
    80008048:	06952e23          	sw	s1,124(a0)
    8000804c:	fc5ff06f          	j	80008010 <push_on+0x34>

0000000080008050 <pop_on>:
    80008050:	ff010113          	addi	sp,sp,-16
    80008054:	00813023          	sd	s0,0(sp)
    80008058:	00113423          	sd	ra,8(sp)
    8000805c:	01010413          	addi	s0,sp,16
    80008060:	ffffe097          	auipc	ra,0xffffe
    80008064:	5b8080e7          	jalr	1464(ra) # 80006618 <mycpu>
    80008068:	100027f3          	csrr	a5,sstatus
    8000806c:	0027f793          	andi	a5,a5,2
    80008070:	04078463          	beqz	a5,800080b8 <pop_on+0x68>
    80008074:	07852783          	lw	a5,120(a0)
    80008078:	02f05863          	blez	a5,800080a8 <pop_on+0x58>
    8000807c:	fff7879b          	addiw	a5,a5,-1
    80008080:	06f52c23          	sw	a5,120(a0)
    80008084:	07853783          	ld	a5,120(a0)
    80008088:	00079863          	bnez	a5,80008098 <pop_on+0x48>
    8000808c:	100027f3          	csrr	a5,sstatus
    80008090:	ffd7f793          	andi	a5,a5,-3
    80008094:	10079073          	csrw	sstatus,a5
    80008098:	00813083          	ld	ra,8(sp)
    8000809c:	00013403          	ld	s0,0(sp)
    800080a0:	01010113          	addi	sp,sp,16
    800080a4:	00008067          	ret
    800080a8:	00002517          	auipc	a0,0x2
    800080ac:	90050513          	addi	a0,a0,-1792 # 800099a8 <digits+0x70>
    800080b0:	fffff097          	auipc	ra,0xfffff
    800080b4:	f2c080e7          	jalr	-212(ra) # 80006fdc <panic>
    800080b8:	00002517          	auipc	a0,0x2
    800080bc:	8d050513          	addi	a0,a0,-1840 # 80009988 <digits+0x50>
    800080c0:	fffff097          	auipc	ra,0xfffff
    800080c4:	f1c080e7          	jalr	-228(ra) # 80006fdc <panic>

00000000800080c8 <__memset>:
    800080c8:	ff010113          	addi	sp,sp,-16
    800080cc:	00813423          	sd	s0,8(sp)
    800080d0:	01010413          	addi	s0,sp,16
    800080d4:	1a060e63          	beqz	a2,80008290 <__memset+0x1c8>
    800080d8:	40a007b3          	neg	a5,a0
    800080dc:	0077f793          	andi	a5,a5,7
    800080e0:	00778693          	addi	a3,a5,7
    800080e4:	00b00813          	li	a6,11
    800080e8:	0ff5f593          	andi	a1,a1,255
    800080ec:	fff6071b          	addiw	a4,a2,-1
    800080f0:	1b06e663          	bltu	a3,a6,8000829c <__memset+0x1d4>
    800080f4:	1cd76463          	bltu	a4,a3,800082bc <__memset+0x1f4>
    800080f8:	1a078e63          	beqz	a5,800082b4 <__memset+0x1ec>
    800080fc:	00b50023          	sb	a1,0(a0)
    80008100:	00100713          	li	a4,1
    80008104:	1ae78463          	beq	a5,a4,800082ac <__memset+0x1e4>
    80008108:	00b500a3          	sb	a1,1(a0)
    8000810c:	00200713          	li	a4,2
    80008110:	1ae78a63          	beq	a5,a4,800082c4 <__memset+0x1fc>
    80008114:	00b50123          	sb	a1,2(a0)
    80008118:	00300713          	li	a4,3
    8000811c:	18e78463          	beq	a5,a4,800082a4 <__memset+0x1dc>
    80008120:	00b501a3          	sb	a1,3(a0)
    80008124:	00400713          	li	a4,4
    80008128:	1ae78263          	beq	a5,a4,800082cc <__memset+0x204>
    8000812c:	00b50223          	sb	a1,4(a0)
    80008130:	00500713          	li	a4,5
    80008134:	1ae78063          	beq	a5,a4,800082d4 <__memset+0x20c>
    80008138:	00b502a3          	sb	a1,5(a0)
    8000813c:	00700713          	li	a4,7
    80008140:	18e79e63          	bne	a5,a4,800082dc <__memset+0x214>
    80008144:	00b50323          	sb	a1,6(a0)
    80008148:	00700e93          	li	t4,7
    8000814c:	00859713          	slli	a4,a1,0x8
    80008150:	00e5e733          	or	a4,a1,a4
    80008154:	01059e13          	slli	t3,a1,0x10
    80008158:	01c76e33          	or	t3,a4,t3
    8000815c:	01859313          	slli	t1,a1,0x18
    80008160:	006e6333          	or	t1,t3,t1
    80008164:	02059893          	slli	a7,a1,0x20
    80008168:	40f60e3b          	subw	t3,a2,a5
    8000816c:	011368b3          	or	a7,t1,a7
    80008170:	02859813          	slli	a6,a1,0x28
    80008174:	0108e833          	or	a6,a7,a6
    80008178:	03059693          	slli	a3,a1,0x30
    8000817c:	003e589b          	srliw	a7,t3,0x3
    80008180:	00d866b3          	or	a3,a6,a3
    80008184:	03859713          	slli	a4,a1,0x38
    80008188:	00389813          	slli	a6,a7,0x3
    8000818c:	00f507b3          	add	a5,a0,a5
    80008190:	00e6e733          	or	a4,a3,a4
    80008194:	000e089b          	sext.w	a7,t3
    80008198:	00f806b3          	add	a3,a6,a5
    8000819c:	00e7b023          	sd	a4,0(a5)
    800081a0:	00878793          	addi	a5,a5,8
    800081a4:	fed79ce3          	bne	a5,a3,8000819c <__memset+0xd4>
    800081a8:	ff8e7793          	andi	a5,t3,-8
    800081ac:	0007871b          	sext.w	a4,a5
    800081b0:	01d787bb          	addw	a5,a5,t4
    800081b4:	0ce88e63          	beq	a7,a4,80008290 <__memset+0x1c8>
    800081b8:	00f50733          	add	a4,a0,a5
    800081bc:	00b70023          	sb	a1,0(a4)
    800081c0:	0017871b          	addiw	a4,a5,1
    800081c4:	0cc77663          	bgeu	a4,a2,80008290 <__memset+0x1c8>
    800081c8:	00e50733          	add	a4,a0,a4
    800081cc:	00b70023          	sb	a1,0(a4)
    800081d0:	0027871b          	addiw	a4,a5,2
    800081d4:	0ac77e63          	bgeu	a4,a2,80008290 <__memset+0x1c8>
    800081d8:	00e50733          	add	a4,a0,a4
    800081dc:	00b70023          	sb	a1,0(a4)
    800081e0:	0037871b          	addiw	a4,a5,3
    800081e4:	0ac77663          	bgeu	a4,a2,80008290 <__memset+0x1c8>
    800081e8:	00e50733          	add	a4,a0,a4
    800081ec:	00b70023          	sb	a1,0(a4)
    800081f0:	0047871b          	addiw	a4,a5,4
    800081f4:	08c77e63          	bgeu	a4,a2,80008290 <__memset+0x1c8>
    800081f8:	00e50733          	add	a4,a0,a4
    800081fc:	00b70023          	sb	a1,0(a4)
    80008200:	0057871b          	addiw	a4,a5,5
    80008204:	08c77663          	bgeu	a4,a2,80008290 <__memset+0x1c8>
    80008208:	00e50733          	add	a4,a0,a4
    8000820c:	00b70023          	sb	a1,0(a4)
    80008210:	0067871b          	addiw	a4,a5,6
    80008214:	06c77e63          	bgeu	a4,a2,80008290 <__memset+0x1c8>
    80008218:	00e50733          	add	a4,a0,a4
    8000821c:	00b70023          	sb	a1,0(a4)
    80008220:	0077871b          	addiw	a4,a5,7
    80008224:	06c77663          	bgeu	a4,a2,80008290 <__memset+0x1c8>
    80008228:	00e50733          	add	a4,a0,a4
    8000822c:	00b70023          	sb	a1,0(a4)
    80008230:	0087871b          	addiw	a4,a5,8
    80008234:	04c77e63          	bgeu	a4,a2,80008290 <__memset+0x1c8>
    80008238:	00e50733          	add	a4,a0,a4
    8000823c:	00b70023          	sb	a1,0(a4)
    80008240:	0097871b          	addiw	a4,a5,9
    80008244:	04c77663          	bgeu	a4,a2,80008290 <__memset+0x1c8>
    80008248:	00e50733          	add	a4,a0,a4
    8000824c:	00b70023          	sb	a1,0(a4)
    80008250:	00a7871b          	addiw	a4,a5,10
    80008254:	02c77e63          	bgeu	a4,a2,80008290 <__memset+0x1c8>
    80008258:	00e50733          	add	a4,a0,a4
    8000825c:	00b70023          	sb	a1,0(a4)
    80008260:	00b7871b          	addiw	a4,a5,11
    80008264:	02c77663          	bgeu	a4,a2,80008290 <__memset+0x1c8>
    80008268:	00e50733          	add	a4,a0,a4
    8000826c:	00b70023          	sb	a1,0(a4)
    80008270:	00c7871b          	addiw	a4,a5,12
    80008274:	00c77e63          	bgeu	a4,a2,80008290 <__memset+0x1c8>
    80008278:	00e50733          	add	a4,a0,a4
    8000827c:	00b70023          	sb	a1,0(a4)
    80008280:	00d7879b          	addiw	a5,a5,13
    80008284:	00c7f663          	bgeu	a5,a2,80008290 <__memset+0x1c8>
    80008288:	00f507b3          	add	a5,a0,a5
    8000828c:	00b78023          	sb	a1,0(a5)
    80008290:	00813403          	ld	s0,8(sp)
    80008294:	01010113          	addi	sp,sp,16
    80008298:	00008067          	ret
    8000829c:	00b00693          	li	a3,11
    800082a0:	e55ff06f          	j	800080f4 <__memset+0x2c>
    800082a4:	00300e93          	li	t4,3
    800082a8:	ea5ff06f          	j	8000814c <__memset+0x84>
    800082ac:	00100e93          	li	t4,1
    800082b0:	e9dff06f          	j	8000814c <__memset+0x84>
    800082b4:	00000e93          	li	t4,0
    800082b8:	e95ff06f          	j	8000814c <__memset+0x84>
    800082bc:	00000793          	li	a5,0
    800082c0:	ef9ff06f          	j	800081b8 <__memset+0xf0>
    800082c4:	00200e93          	li	t4,2
    800082c8:	e85ff06f          	j	8000814c <__memset+0x84>
    800082cc:	00400e93          	li	t4,4
    800082d0:	e7dff06f          	j	8000814c <__memset+0x84>
    800082d4:	00500e93          	li	t4,5
    800082d8:	e75ff06f          	j	8000814c <__memset+0x84>
    800082dc:	00600e93          	li	t4,6
    800082e0:	e6dff06f          	j	8000814c <__memset+0x84>

00000000800082e4 <__memmove>:
    800082e4:	ff010113          	addi	sp,sp,-16
    800082e8:	00813423          	sd	s0,8(sp)
    800082ec:	01010413          	addi	s0,sp,16
    800082f0:	0e060863          	beqz	a2,800083e0 <__memmove+0xfc>
    800082f4:	fff6069b          	addiw	a3,a2,-1
    800082f8:	0006881b          	sext.w	a6,a3
    800082fc:	0ea5e863          	bltu	a1,a0,800083ec <__memmove+0x108>
    80008300:	00758713          	addi	a4,a1,7
    80008304:	00a5e7b3          	or	a5,a1,a0
    80008308:	40a70733          	sub	a4,a4,a0
    8000830c:	0077f793          	andi	a5,a5,7
    80008310:	00f73713          	sltiu	a4,a4,15
    80008314:	00174713          	xori	a4,a4,1
    80008318:	0017b793          	seqz	a5,a5
    8000831c:	00e7f7b3          	and	a5,a5,a4
    80008320:	10078863          	beqz	a5,80008430 <__memmove+0x14c>
    80008324:	00900793          	li	a5,9
    80008328:	1107f463          	bgeu	a5,a6,80008430 <__memmove+0x14c>
    8000832c:	0036581b          	srliw	a6,a2,0x3
    80008330:	fff8081b          	addiw	a6,a6,-1
    80008334:	02081813          	slli	a6,a6,0x20
    80008338:	01d85893          	srli	a7,a6,0x1d
    8000833c:	00858813          	addi	a6,a1,8
    80008340:	00058793          	mv	a5,a1
    80008344:	00050713          	mv	a4,a0
    80008348:	01088833          	add	a6,a7,a6
    8000834c:	0007b883          	ld	a7,0(a5)
    80008350:	00878793          	addi	a5,a5,8
    80008354:	00870713          	addi	a4,a4,8
    80008358:	ff173c23          	sd	a7,-8(a4)
    8000835c:	ff0798e3          	bne	a5,a6,8000834c <__memmove+0x68>
    80008360:	ff867713          	andi	a4,a2,-8
    80008364:	02071793          	slli	a5,a4,0x20
    80008368:	0207d793          	srli	a5,a5,0x20
    8000836c:	00f585b3          	add	a1,a1,a5
    80008370:	40e686bb          	subw	a3,a3,a4
    80008374:	00f507b3          	add	a5,a0,a5
    80008378:	06e60463          	beq	a2,a4,800083e0 <__memmove+0xfc>
    8000837c:	0005c703          	lbu	a4,0(a1)
    80008380:	00e78023          	sb	a4,0(a5)
    80008384:	04068e63          	beqz	a3,800083e0 <__memmove+0xfc>
    80008388:	0015c603          	lbu	a2,1(a1)
    8000838c:	00100713          	li	a4,1
    80008390:	00c780a3          	sb	a2,1(a5)
    80008394:	04e68663          	beq	a3,a4,800083e0 <__memmove+0xfc>
    80008398:	0025c603          	lbu	a2,2(a1)
    8000839c:	00200713          	li	a4,2
    800083a0:	00c78123          	sb	a2,2(a5)
    800083a4:	02e68e63          	beq	a3,a4,800083e0 <__memmove+0xfc>
    800083a8:	0035c603          	lbu	a2,3(a1)
    800083ac:	00300713          	li	a4,3
    800083b0:	00c781a3          	sb	a2,3(a5)
    800083b4:	02e68663          	beq	a3,a4,800083e0 <__memmove+0xfc>
    800083b8:	0045c603          	lbu	a2,4(a1)
    800083bc:	00400713          	li	a4,4
    800083c0:	00c78223          	sb	a2,4(a5)
    800083c4:	00e68e63          	beq	a3,a4,800083e0 <__memmove+0xfc>
    800083c8:	0055c603          	lbu	a2,5(a1)
    800083cc:	00500713          	li	a4,5
    800083d0:	00c782a3          	sb	a2,5(a5)
    800083d4:	00e68663          	beq	a3,a4,800083e0 <__memmove+0xfc>
    800083d8:	0065c703          	lbu	a4,6(a1)
    800083dc:	00e78323          	sb	a4,6(a5)
    800083e0:	00813403          	ld	s0,8(sp)
    800083e4:	01010113          	addi	sp,sp,16
    800083e8:	00008067          	ret
    800083ec:	02061713          	slli	a4,a2,0x20
    800083f0:	02075713          	srli	a4,a4,0x20
    800083f4:	00e587b3          	add	a5,a1,a4
    800083f8:	f0f574e3          	bgeu	a0,a5,80008300 <__memmove+0x1c>
    800083fc:	02069613          	slli	a2,a3,0x20
    80008400:	02065613          	srli	a2,a2,0x20
    80008404:	fff64613          	not	a2,a2
    80008408:	00e50733          	add	a4,a0,a4
    8000840c:	00c78633          	add	a2,a5,a2
    80008410:	fff7c683          	lbu	a3,-1(a5)
    80008414:	fff78793          	addi	a5,a5,-1
    80008418:	fff70713          	addi	a4,a4,-1
    8000841c:	00d70023          	sb	a3,0(a4)
    80008420:	fec798e3          	bne	a5,a2,80008410 <__memmove+0x12c>
    80008424:	00813403          	ld	s0,8(sp)
    80008428:	01010113          	addi	sp,sp,16
    8000842c:	00008067          	ret
    80008430:	02069713          	slli	a4,a3,0x20
    80008434:	02075713          	srli	a4,a4,0x20
    80008438:	00170713          	addi	a4,a4,1
    8000843c:	00e50733          	add	a4,a0,a4
    80008440:	00050793          	mv	a5,a0
    80008444:	0005c683          	lbu	a3,0(a1)
    80008448:	00178793          	addi	a5,a5,1
    8000844c:	00158593          	addi	a1,a1,1
    80008450:	fed78fa3          	sb	a3,-1(a5)
    80008454:	fee798e3          	bne	a5,a4,80008444 <__memmove+0x160>
    80008458:	f89ff06f          	j	800083e0 <__memmove+0xfc>
	...
