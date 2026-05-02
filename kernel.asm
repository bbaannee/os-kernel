
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	41013103          	ld	sp,1040(sp) # 8000b410 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	460060ef          	jal	ra,8000647c <start>

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
    80001084:	125000ef          	jal	ra,800019a8 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm>

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
    8000124c:	5b87c783          	lbu	a5,1464(a5) # 8000b800 <_ZN8_console11initializedE>
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
    80001278:	4b0080e7          	jalr	1200(ra) # 80002724 <_Znwm>
    8000127c:	00050493          	mv	s1,a0
    80001280:	00000097          	auipc	ra,0x0
    80001284:	ec4080e7          	jalr	-316(ra) # 80001144 <_ZN7kBufferC1Ev>
    80001288:	0000a797          	auipc	a5,0xa
    8000128c:	5897bc23          	sd	s1,1432(a5) # 8000b820 <_ZN8_console6inbuffE>
    outbuff = new kBuffer();
    80001290:	10c00513          	li	a0,268
    80001294:	00001097          	auipc	ra,0x1
    80001298:	490080e7          	jalr	1168(ra) # 80002724 <_Znwm>
    8000129c:	00050493          	mv	s1,a0
    800012a0:	00000097          	auipc	ra,0x0
    800012a4:	ea4080e7          	jalr	-348(ra) # 80001144 <_ZN7kBufferC1Ev>
    800012a8:	0000a797          	auipc	a5,0xa
    800012ac:	5697b823          	sd	s1,1392(a5) # 8000b818 <_ZN8_console7outbuffE>

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
    800012c8:	d00080e7          	jalr	-768(ra) # 80001fc4 <_ZN4_semC1Ei>
    800012cc:	0000a797          	auipc	a5,0xa
    800012d0:	5497b223          	sd	s1,1348(a5) # 8000b810 <_ZN8_console5inSemE>
    800012d4:	02000513          	li	a0,32
    800012d8:	00000097          	auipc	ra,0x0
    800012dc:	368080e7          	jalr	872(ra) # 80001640 <_ZN15MemoryAllocator7kmallocEm>
    800012e0:	00050493          	mv	s1,a0
    outSem  = new _sem(256);
    800012e4:	10000593          	li	a1,256
    800012e8:	00001097          	auipc	ra,0x1
    800012ec:	cdc080e7          	jalr	-804(ra) # 80001fc4 <_ZN4_semC1Ei>
    800012f0:	0000a797          	auipc	a5,0xa
    800012f4:	5097bc23          	sd	s1,1304(a5) # 8000b808 <_ZN8_console6outSemE>
    initialized = true;
    800012f8:	00100793          	li	a5,1
    800012fc:	0000a717          	auipc	a4,0xa
    80001300:	50f70223          	sb	a5,1284(a4) # 8000b800 <_ZN8_console11initializedE>
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
    80001328:	428080e7          	jalr	1064(ra) # 8000274c <_ZdlPv>
    8000132c:	00090513          	mv	a0,s2
    80001330:	0000b097          	auipc	ra,0xb
    80001334:	678080e7          	jalr	1656(ra) # 8000c9a8 <_Unwind_Resume>
    outbuff = new kBuffer();
    80001338:	00050913          	mv	s2,a0
    8000133c:	00048513          	mv	a0,s1
    80001340:	00001097          	auipc	ra,0x1
    80001344:	40c080e7          	jalr	1036(ra) # 8000274c <_ZdlPv>
    80001348:	00090513          	mv	a0,s2
    8000134c:	0000b097          	auipc	ra,0xb
    80001350:	65c080e7          	jalr	1628(ra) # 8000c9a8 <_Unwind_Resume>
    inSem   = new _sem(0);
    80001354:	00050913          	mv	s2,a0
    80001358:	00048513          	mv	a0,s1
    8000135c:	00001097          	auipc	ra,0x1
    80001360:	3f0080e7          	jalr	1008(ra) # 8000274c <_ZdlPv>
    80001364:	00090513          	mv	a0,s2
    80001368:	0000b097          	auipc	ra,0xb
    8000136c:	640080e7          	jalr	1600(ra) # 8000c9a8 <_Unwind_Resume>
    outSem  = new _sem(256);
    80001370:	00050913          	mv	s2,a0
    80001374:	00048513          	mv	a0,s1
    80001378:	00001097          	auipc	ra,0x1
    8000137c:	3d4080e7          	jalr	980(ra) # 8000274c <_ZdlPv>
    80001380:	00090513          	mv	a0,s2
    80001384:	0000b097          	auipc	ra,0xb
    80001388:	624080e7          	jalr	1572(ra) # 8000c9a8 <_Unwind_Resume>

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
    800013a8:	47c53503          	ld	a0,1148(a0) # 8000b820 <_ZN8_console6inbuffE>
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
    800013ec:	43053503          	ld	a0,1072(a0) # 8000b818 <_ZN8_console7outbuffE>
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
    80001418:	40c53503          	ld	a0,1036(a0) # 8000b820 <_ZN8_console6inbuffE>
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
    80001448:	3dc53503          	ld	a0,988(a0) # 8000b820 <_ZN8_console6inbuffE>
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
    80001460:	3b453503          	ld	a0,948(a0) # 8000b810 <_ZN8_console5inSemE>
    80001464:	00001097          	auipc	ra,0x1
    80001468:	e4c080e7          	jalr	-436(ra) # 800022b0 <_ZN4_sem6signalEv>
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
    80001488:	39453503          	ld	a0,916(a0) # 8000b818 <_ZN8_console7outbuffE>
    8000148c:	00000097          	auipc	ra,0x0
    80001490:	d9c080e7          	jalr	-612(ra) # 80001228 <_ZN7kBuffer7isEmptyEv>
    80001494:	04051263          	bnez	a0,800014d8 <_ZN8_console4putcEc+0x114>
    80001498:	00000097          	auipc	ra,0x0
    8000149c:	db0080e7          	jalr	-592(ra) # 80001248 <_ZN8_console10ensureInitEv>
    		char c = _console::getOutBuff()->get();
    800014a0:	0000a517          	auipc	a0,0xa
    800014a4:	37853503          	ld	a0,888(a0) # 8000b818 <_ZN8_console7outbuffE>
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
    800014c8:	34453503          	ld	a0,836(a0) # 8000b808 <_ZN8_console6outSemE>
    800014cc:	00001097          	auipc	ra,0x1
    800014d0:	de4080e7          	jalr	-540(ra) # 800022b0 <_ZN4_sem6signalEv>
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
    80001500:	e2c080e7          	jalr	-468(ra) # 80006328 <_Z8userMainv>
    sem_signal(mainsem);
    80001504:	0000a517          	auipc	a0,0xa
    80001508:	32453503          	ld	a0,804(a0) # 8000b828 <mainsem>
    8000150c:	00001097          	auipc	ra,0x1
    80001510:	fdc080e7          	jalr	-36(ra) # 800024e8 <_Z10sem_signalP4_sem>
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
    80001538:	ea8080e7          	jalr	-344(ra) # 800023dc <_Z15thread_dispatchv>
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
    8000156c:	de8080e7          	jalr	-536(ra) # 80002350 <_Z13thread_createPP7_threadPFvPvES2_>
    _thread::running = (_thread *)mainHandle;
    80001570:	fe843783          	ld	a5,-24(s0)
    80001574:	0000a717          	auipc	a4,0xa
    80001578:	2ef73223          	sd	a5,740(a4) # 8000b858 <_ZN7_thread7runningE>

    // Kreiraj idle nit
    thread_t idleHandle;
    thread_create(&idleHandle, idlef, nullptr);
    8000157c:	00000613          	li	a2,0
    80001580:	00000597          	auipc	a1,0x0
    80001584:	fa458593          	addi	a1,a1,-92 # 80001524 <_Z5idlefPv>
    80001588:	fe040513          	addi	a0,s0,-32
    8000158c:	00001097          	auipc	ra,0x1
    80001590:	dc4080e7          	jalr	-572(ra) # 80002350 <_Z13thread_createPP7_threadPFvPvES2_>

    sem_open(&mainsem, 0);
    80001594:	00000593          	li	a1,0
    80001598:	0000a517          	auipc	a0,0xa
    8000159c:	29050513          	addi	a0,a0,656 # 8000b828 <mainsem>
    800015a0:	00001097          	auipc	ra,0x1
    800015a4:	e94080e7          	jalr	-364(ra) # 80002434 <_Z8sem_openPP4_semj>

    thread_t testthread;
    thread_create(&testthread, testwrapper, nullptr);
    800015a8:	00000613          	li	a2,0
    800015ac:	00000597          	auipc	a1,0x0
    800015b0:	f4058593          	addi	a1,a1,-192 # 800014ec <_Z11testwrapperPv>
    800015b4:	fd840513          	addi	a0,s0,-40
    800015b8:	00001097          	auipc	ra,0x1
    800015bc:	d98080e7          	jalr	-616(ra) # 80002350 <_Z13thread_createPP7_threadPFvPvES2_>

    sem_wait(mainsem);
    800015c0:	0000a517          	auipc	a0,0xa
    800015c4:	26853503          	ld	a0,616(a0) # 8000b828 <mainsem>
    800015c8:	00001097          	auipc	ra,0x1
    800015cc:	ee8080e7          	jalr	-280(ra) # 800024b0 <_Z8sem_waitP4_sem>

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
    800015f4:	df07b783          	ld	a5,-528(a5) # 8000b3e0 <HEAP_START_ADDR>
    size_t end = (size_t)HEAP_END_ADDR;
    800015f8:	0000a717          	auipc	a4,0xa
    800015fc:	de073703          	ld	a4,-544(a4) # 8000b3d8 <HEAP_END_ADDR>

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
    80001620:	20f6ba23          	sd	a5,532(a3) # 8000b830 <_ZN15MemoryAllocator4headE>
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
    8000165c:	1e07c783          	lbu	a5,480(a5) # 8000b838 <_ZN15MemoryAllocator6isinitE>
    80001660:	00078e63          	beqz	a5,8000167c <_ZN15MemoryAllocator7kmallocEm+0x3c>
    size_t bytes_needed = (size_t)((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
    80001664:	03f48713          	addi	a4,s1,63
    80001668:	fc077713          	andi	a4,a4,-64
    segmentHeader *curr = head;
    8000166c:	0000a797          	auipc	a5,0xa
    80001670:	1c47b783          	ld	a5,452(a5) # 8000b830 <_ZN15MemoryAllocator4headE>
    segmentHeader *prev = nullptr;
    80001674:	00000613          	li	a2,0
    80001678:	0240006f          	j	8000169c <_ZN15MemoryAllocator7kmallocEm+0x5c>
        isinit = true;
    8000167c:	00100793          	li	a5,1
    80001680:	0000a717          	auipc	a4,0xa
    80001684:	1af70c23          	sb	a5,440(a4) # 8000b838 <_ZN15MemoryAllocator6isinitE>
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
    8000170c:	12b7b423          	sd	a1,296(a5) # 8000b830 <_ZN15MemoryAllocator4headE>
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
    8000178c:	0b07c783          	lbu	a5,176(a5) # 8000b838 <_ZN15MemoryAllocator6isinitE>
    80001790:	04078663          	beqz	a5,800017dc <_ZN15MemoryAllocator5kfreeEPv+0x70>
    if (!addr)
    80001794:	0a090863          	beqz	s2,80001844 <_ZN15MemoryAllocator5kfreeEPv+0xd8>
    segmentHeader *newFree = (segmentHeader *)((char *)addr - MEM_BLOCK_SIZE);
    80001798:	fc090513          	addi	a0,s2,-64
    if ((size_t)newFree < (size_t)HEAP_START_ADDR || (size_t)newFree >= (size_t)HEAP_END_ADDR)
    8000179c:	0000a797          	auipc	a5,0xa
    800017a0:	c447b783          	ld	a5,-956(a5) # 8000b3e0 <HEAP_START_ADDR>
    800017a4:	0af56463          	bltu	a0,a5,8000184c <_ZN15MemoryAllocator5kfreeEPv+0xe0>
    800017a8:	0000a797          	auipc	a5,0xa
    800017ac:	c307b783          	ld	a5,-976(a5) # 8000b3d8 <HEAP_END_ADDR>
    800017b0:	0af57263          	bgeu	a0,a5,80001854 <_ZN15MemoryAllocator5kfreeEPv+0xe8>
    segmentHeader *curr = head;
    800017b4:	0000a717          	auipc	a4,0xa
    800017b8:	07c73703          	ld	a4,124(a4) # 8000b830 <_ZN15MemoryAllocator4headE>
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
    800017e4:	04f70c23          	sb	a5,88(a4) # 8000b838 <_ZN15MemoryAllocator6isinitE>
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
    8000183c:	fea7bc23          	sd	a0,-8(a5) # 8000b830 <_ZN15MemoryAllocator4headE>
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

0000000080001864 <_Z12_printStringPKc>:
#include "../h/print.hpp"
#include "../h/Console.h"

#include "../lib/hw.h"
void _printString(const char *string)
{
    80001864:	fe010113          	addi	sp,sp,-32
    80001868:	00113c23          	sd	ra,24(sp)
    8000186c:	00813823          	sd	s0,16(sp)
    80001870:	00913423          	sd	s1,8(sp)
    80001874:	02010413          	addi	s0,sp,32
    80001878:	00050493          	mv	s1,a0
    8000187c:	0100006f          	j	8000188c <_Z12_printStringPKc+0x28>
    while (*string != '\0')
    {
        _console::putc(*string);
    80001880:	00000097          	auipc	ra,0x0
    80001884:	b44080e7          	jalr	-1212(ra) # 800013c4 <_ZN8_console4putcEc>
        string++;
    80001888:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000188c:	0004c503          	lbu	a0,0(s1)
    80001890:	fe0518e3          	bnez	a0,80001880 <_Z12_printStringPKc+0x1c>
    }
}
    80001894:	01813083          	ld	ra,24(sp)
    80001898:	01013403          	ld	s0,16(sp)
    8000189c:	00813483          	ld	s1,8(sp)
    800018a0:	02010113          	addi	sp,sp,32
    800018a4:	00008067          	ret

00000000800018a8 <_Z13_printIntegermmb>:

void _printInteger(uint64 integer, uint64 base, bool sign)
{
    800018a8:	fd010113          	addi	sp,sp,-48
    800018ac:	02113423          	sd	ra,40(sp)
    800018b0:	02813023          	sd	s0,32(sp)
    800018b4:	00913c23          	sd	s1,24(sp)
    800018b8:	03010413          	addi	s0,sp,48
    if (base < 2 || base > 16){
    800018bc:	ffe58713          	addi	a4,a1,-2
    800018c0:	00e00793          	li	a5,14
    800018c4:	00e7ea63          	bltu	a5,a4,800018d8 <_Z13_printIntegermmb+0x30>
    char buf[16];
    int i, neg;
    uint64 x;

    neg = 0;
    if (sign && (long long)integer < 0)
    800018c8:	02060863          	beqz	a2,800018f8 <_Z13_printIntegermmb+0x50>
    800018cc:	02054063          	bltz	a0,800018ec <_Z13_printIntegermmb+0x44>
    neg = 0;
    800018d0:	00000613          	li	a2,0
    800018d4:	0280006f          	j	800018fc <_Z13_printIntegermmb+0x54>
        _printString("Error in printInteger: base not supported\n");
    800018d8:	00007517          	auipc	a0,0x7
    800018dc:	74850513          	addi	a0,a0,1864 # 80009020 <CONSOLE_STATUS+0x10>
    800018e0:	00000097          	auipc	ra,0x0
    800018e4:	f84080e7          	jalr	-124(ra) # 80001864 <_Z12_printStringPKc>
        return;
    800018e8:	0840006f          	j	8000196c <_Z13_printIntegermmb+0xc4>
    {
        neg = 1;
        x = -(long long)integer;
    800018ec:	40a00533          	neg	a0,a0
        neg = 1;
    800018f0:	00100613          	li	a2,1
        x = -(long long)integer;
    800018f4:	0080006f          	j	800018fc <_Z13_printIntegermmb+0x54>
    neg = 0;
    800018f8:	00000613          	li	a2,0
    } else
    {
        x = integer;
    }

    i = 0;
    800018fc:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % base];
    80001900:	02b576b3          	remu	a3,a0,a1
    80001904:	00048713          	mv	a4,s1
    80001908:	0014849b          	addiw	s1,s1,1
    8000190c:	00007797          	auipc	a5,0x7
    80001910:	74478793          	addi	a5,a5,1860 # 80009050 <_ZZ13_printIntegermmbE6digits>
    80001914:	00d787b3          	add	a5,a5,a3
    80001918:	0007c683          	lbu	a3,0(a5)
    8000191c:	fe040793          	addi	a5,s0,-32
    80001920:	00e787b3          	add	a5,a5,a4
    80001924:	fed78823          	sb	a3,-16(a5)
    } while ((x /= base) != 0);
    80001928:	00050793          	mv	a5,a0
    8000192c:	02b55533          	divu	a0,a0,a1
    80001930:	fcb7f8e3          	bgeu	a5,a1,80001900 <_Z13_printIntegermmb+0x58>
    if (neg)
    80001934:	02060863          	beqz	a2,80001964 <_Z13_printIntegermmb+0xbc>
        buf[i++] = '-';
    80001938:	fe040793          	addi	a5,s0,-32
    8000193c:	009784b3          	add	s1,a5,s1
    80001940:	02d00793          	li	a5,45
    80001944:	fef48823          	sb	a5,-16(s1)
    80001948:	0027049b          	addiw	s1,a4,2
    8000194c:	0180006f          	j	80001964 <_Z13_printIntegermmb+0xbc>

    while (--i >= 0) { _console::putc(buf[i]); }
    80001950:	fe040793          	addi	a5,s0,-32
    80001954:	009787b3          	add	a5,a5,s1
    80001958:	ff07c503          	lbu	a0,-16(a5)
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	a68080e7          	jalr	-1432(ra) # 800013c4 <_ZN8_console4putcEc>
    80001964:	fff4849b          	addiw	s1,s1,-1
    80001968:	fe04d4e3          	bgez	s1,80001950 <_Z13_printIntegermmb+0xa8>
    8000196c:	02813083          	ld	ra,40(sp)
    80001970:	02013403          	ld	s0,32(sp)
    80001974:	01813483          	ld	s1,24(sp)
    80001978:	03010113          	addi	sp,sp,48
    8000197c:	00008067          	ret

0000000080001980 <_ZN5Riscv10popSppSpieEv>:
#include "../h/Thread.h"
#include "../h/Semaphore.h"
#include "../h/Console.h"
#include "../h/print.hpp"
void Riscv::popSppSpie()
{
    80001980:	ff010113          	addi	sp,sp,-16
    80001984:	00813423          	sd	s0,8(sp)
    80001988:	01010413          	addi	s0,sp,16
	__asm__ volatile("csrw sepc, ra");
    8000198c:	14109073          	csrw	sepc,ra
    __asm__ volatile("csrs sstatus, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001990:	10000793          	li	a5,256
    80001994:	1007b073          	csrc	sstatus,a5
	Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
	__asm__ volatile("sret");
    80001998:	10200073          	sret
}
    8000199c:	00813403          	ld	s0,8(sp)
    800019a0:	01010113          	addi	sp,sp,16
    800019a4:	00008067          	ret

00000000800019a8 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm>:
void Riscv::handleSupervisorTrap(uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5, uint64 a6, uint64 a7)
{
    800019a8:	f7010113          	addi	sp,sp,-144
    800019ac:	08113423          	sd	ra,136(sp)
    800019b0:	08813023          	sd	s0,128(sp)
    800019b4:	06913c23          	sd	s1,120(sp)
    800019b8:	07213823          	sd	s2,112(sp)
    800019bc:	07313423          	sd	s3,104(sp)
    800019c0:	09010413          	addi	s0,sp,144
    800019c4:	00058493          	mv	s1,a1
    800019c8:	00060913          	mv	s2,a2
    __asm__ volatile("csrr %[scause], scause" : [scause] "=r"(scause));
    800019cc:	142027f3          	csrr	a5,scause
    800019d0:	faf43423          	sd	a5,-88(s0)
    return scause;
    800019d4:	fa843603          	ld	a2,-88(s0)

	uint64 scause = r_scause();

	if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    800019d8:	ff860593          	addi	a1,a2,-8
    800019dc:	00100793          	li	a5,1
    800019e0:	04b7fc63          	bgeu	a5,a1,80001a38 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x90>
		}

		w_sstatus(sstatus);
		w_sepc(sepc);
	}
	else if (scause == 0x8000000000000009UL)
    800019e4:	fff00793          	li	a5,-1
    800019e8:	03f79793          	slli	a5,a5,0x3f
    800019ec:	00978793          	addi	a5,a5,9
    800019f0:	30f60063          	beq	a2,a5,80001cf0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x348>
			}
		}

		plic_complete(irq); // Obaveštavamo PLIC da je obrada završena
	}
	else if (scause == 0x8000000000000001UL)
    800019f4:	fff00793          	li	a5,-1
    800019f8:	03f79793          	slli	a5,a5,0x3f
    800019fc:	00178793          	addi	a5,a5,1
    80001a00:	4cf61263          	bne	a2,a5,80001ec4 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x51c>
	{
		_thread::timeSliceCounter++;
    80001a04:	0000a717          	auipc	a4,0xa
    80001a08:	e4c70713          	addi	a4,a4,-436 # 8000b850 <_ZN7_thread16timeSliceCounterE>
    80001a0c:	00073783          	ld	a5,0(a4)
    80001a10:	00178793          	addi	a5,a5,1
    80001a14:	00f73023          	sd	a5,0(a4)
		if (_thread::sleepingHead)
    80001a18:	0000a797          	auipc	a5,0xa
    80001a1c:	e307b783          	ld	a5,-464(a5) # 8000b848 <_ZN7_thread12sleepingHeadE>
    80001a20:	42078e63          	beqz	a5,80001e5c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x4b4>
		{
			if (_thread::sleepingHead->timeSleeping > 0)
    80001a24:	0507b703          	ld	a4,80(a5)
    80001a28:	3c070e63          	beqz	a4,80001e04 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x45c>
			{
				_thread::sleepingHead->timeSleeping--;
    80001a2c:	fff70713          	addi	a4,a4,-1
    80001a30:	04e7b823          	sd	a4,80(a5)
    80001a34:	3d00006f          	j	80001e04 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x45c>
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001a38:	141027f3          	csrr	a5,sepc
    80001a3c:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80001a40:	fb843783          	ld	a5,-72(s0)
		uint64 volatile sepc = r_sepc() + 4;
    80001a44:	00478793          	addi	a5,a5,4
    80001a48:	f6f43c23          	sd	a5,-136(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001a4c:	100027f3          	csrr	a5,sstatus
    80001a50:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80001a54:	fb043783          	ld	a5,-80(s0)
		uint64 volatile sstatus = r_sstatus();
    80001a58:	f8f43023          	sd	a5,-128(s0)
		switch (call)
    80001a5c:	04200793          	li	a5,66
    80001a60:	02a7e863          	bltu	a5,a0,80001a90 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
    80001a64:	00251513          	slli	a0,a0,0x2
    80001a68:	00007617          	auipc	a2,0x7
    80001a6c:	62c60613          	addi	a2,a2,1580 # 80009094 <_ZZ13_printIntegermmbE6digits+0x44>
    80001a70:	00c507b3          	add	a5,a0,a2
    80001a74:	0007a783          	lw	a5,0(a5)
    80001a78:	00c787b3          	add	a5,a5,a2
    80001a7c:	00078067          	jr	a5
			writeARegister(0, (uint64)MemoryAllocator::kmalloc(bytes));
    80001a80:	00649513          	slli	a0,s1,0x6
    80001a84:	00000097          	auipc	ra,0x0
    80001a88:	bbc080e7          	jalr	-1092(ra) # 80001640 <_ZN15MemoryAllocator7kmallocEm>
    return value;
}

inline void Riscv::writeARegister(int reg_number, uint64 value)
{
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001a8c:	00050513          	mv	a0,a0
		w_sstatus(sstatus);
    80001a90:	f8043783          	ld	a5,-128(s0)
    __asm__ volatile("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001a94:	10079073          	csrw	sstatus,a5
		w_sepc(sepc);
    80001a98:	f7843783          	ld	a5,-136(s0)
    __asm__ volatile("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001a9c:	14179073          	csrw	sepc,a5
        _printInteger(r_scause());
        _printString("\n");

        while(1);
	}
}
    80001aa0:	08813083          	ld	ra,136(sp)
    80001aa4:	08013403          	ld	s0,128(sp)
    80001aa8:	07813483          	ld	s1,120(sp)
    80001aac:	07013903          	ld	s2,112(sp)
    80001ab0:	06813983          	ld	s3,104(sp)
    80001ab4:	09010113          	addi	sp,sp,144
    80001ab8:	00008067          	ret
			writeARegister(0, (uint64)MemoryAllocator::kfree((void *)a1));
    80001abc:	00048513          	mv	a0,s1
    80001ac0:	00000097          	auipc	ra,0x0
    80001ac4:	cac080e7          	jalr	-852(ra) # 8000176c <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001ac8:	00050513          	mv	a0,a0
}
    80001acc:	fc5ff06f          	j	80001a90 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
			void *volatile arg = (void *)a3;
    80001ad0:	f8d43423          	sd	a3,-120(s0)
			void *volatile stack_space = (void *)a4;
    80001ad4:	f8e43823          	sd	a4,-112(s0)
			*handle = _thread::createThread(body, arg, stack_space);
    80001ad8:	f8843583          	ld	a1,-120(s0)
    80001adc:	f9043603          	ld	a2,-112(s0)
    80001ae0:	00090513          	mv	a0,s2
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	280080e7          	jalr	640(ra) # 80002d64 <_ZN7_thread12createThreadEPFvPvES0_S0_>
    80001aec:	00a4b023          	sd	a0,0(s1)
			if (*handle)
    80001af0:	04050863          	beqz	a0,80001b40 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x198>
				if (body != nullptr)
    80001af4:	04090063          	beqz	s2,80001b34 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x18c>
class Scheduler
{
public:
    static Scheduler &instance()
    {
        static Scheduler instance;
    80001af8:	0000a797          	auipc	a5,0xa
    80001afc:	d487c783          	lbu	a5,-696(a5) # 8000b840 <_ZGVZN9Scheduler8instanceEvE8instance>
    80001b00:	02079063          	bnez	a5,80001b20 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x178>
    void put(_thread *t);

    _thread *get();

private:
    Scheduler() : head(nullptr), tail(nullptr) {};
    80001b04:	0000a797          	auipc	a5,0xa
    80001b08:	dcc78793          	addi	a5,a5,-564 # 8000b8d0 <_ZZN9Scheduler8instanceEvE8instance>
    80001b0c:	0007b023          	sd	zero,0(a5)
    80001b10:	0007b423          	sd	zero,8(a5)
        static Scheduler instance;
    80001b14:	00100793          	li	a5,1
    80001b18:	0000a717          	auipc	a4,0xa
    80001b1c:	d2f70423          	sb	a5,-728(a4) # 8000b840 <_ZGVZN9Scheduler8instanceEvE8instance>
					Scheduler::instance().put(*handle);
    80001b20:	0004b583          	ld	a1,0(s1)
    80001b24:	0000a517          	auipc	a0,0xa
    80001b28:	dac50513          	addi	a0,a0,-596 # 8000b8d0 <_ZZN9Scheduler8instanceEvE8instance>
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	420080e7          	jalr	1056(ra) # 80001f4c <_ZN9Scheduler3putEP7_thread>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001b34:	00000793          	li	a5,0
    80001b38:	00078513          	mv	a0,a5
}
    80001b3c:	f55ff06f          	j	80001a90 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001b40:	fff00793          	li	a5,-1
    80001b44:	00078513          	mv	a0,a5
}
    80001b48:	f49ff06f          	j	80001a90 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
			_thread::timeSliceCounter = 0;
    80001b4c:	0000a797          	auipc	a5,0xa
    80001b50:	d007b223          	sd	zero,-764(a5) # 8000b850 <_ZN7_thread16timeSliceCounterE>
			if (_thread::running)
    80001b54:	0000a797          	auipc	a5,0xa
    80001b58:	d047b783          	ld	a5,-764(a5) # 8000b858 <_ZN7_thread7runningE>
    80001b5c:	02078063          	beqz	a5,80001b7c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x1d4>

	uint64 getTimeSlice() const
	{
		return timeSlice;
	}
	void setFinished(bool finished) { _thread::finished = finished; };
    80001b60:	00100713          	li	a4,1
    80001b64:	04e780a3          	sb	a4,65(a5)
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001b68:	00000793          	li	a5,0
    80001b6c:	00078513          	mv	a0,a5
			_thread::dispatch();
    80001b70:	00001097          	auipc	ra,0x1
    80001b74:	01c080e7          	jalr	28(ra) # 80002b8c <_ZN7_thread8dispatchEv>
			break;
    80001b78:	f19ff06f          	j	80001a90 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
    80001b7c:	fff00793          	li	a5,-1
    80001b80:	00078513          	mv	a0,a5
}
    80001b84:	fedff06f          	j	80001b70 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x1c8>
			_thread::timeSliceCounter = 0;
    80001b88:	0000a797          	auipc	a5,0xa
    80001b8c:	cc07b423          	sd	zero,-824(a5) # 8000b850 <_ZN7_thread16timeSliceCounterE>
			_thread::dispatch();
    80001b90:	00001097          	auipc	ra,0x1
    80001b94:	ffc080e7          	jalr	-4(ra) # 80002b8c <_ZN7_thread8dispatchEv>
			break;
    80001b98:	ef9ff06f          	j	80001a90 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>

class _sem {
public:

    void* operator new(size_t size){
        void* ptr = MemoryAllocator::kmalloc(size);
    80001b9c:	02000513          	li	a0,32
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	aa0080e7          	jalr	-1376(ra) # 80001640 <_ZN15MemoryAllocator7kmallocEm>
    80001ba8:	00050993          	mv	s3,a0
			*handle = new _sem(a2);
    80001bac:	0009059b          	sext.w	a1,s2
    80001bb0:	00000097          	auipc	ra,0x0
    80001bb4:	414080e7          	jalr	1044(ra) # 80001fc4 <_ZN4_semC1Ei>
    80001bb8:	0134b023          	sd	s3,0(s1)
			if (*handle)
    80001bbc:	00098863          	beqz	s3,80001bcc <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x224>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001bc0:	00000793          	li	a5,0
    80001bc4:	00078513          	mv	a0,a5
}
    80001bc8:	ec9ff06f          	j	80001a90 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001bcc:	fff00793          	li	a5,-1
    80001bd0:	00078513          	mv	a0,a5
}
    80001bd4:	ebdff06f          	j	80001a90 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
			if (s == nullptr)
    80001bd8:	00049863          	bnez	s1,80001be8 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x240>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001bdc:	fff00793          	li	a5,-1
    80001be0:	00078513          	mv	a0,a5
}
    80001be4:	eadff06f          	j	80001a90 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
				writeARegister(0, s->close());
    80001be8:	00048513          	mv	a0,s1
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	478080e7          	jalr	1144(ra) # 80002064 <_ZN4_sem5closeEv>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001bf4:	00050513          	mv	a0,a0
				delete s;
    80001bf8:	00048513          	mv	a0,s1
    80001bfc:	00001097          	auipc	ra,0x1
    80001c00:	b50080e7          	jalr	-1200(ra) # 8000274c <_ZdlPv>
    80001c04:	e8dff06f          	j	80001a90 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
			if (s == nullptr)
    80001c08:	00049863          	bnez	s1,80001c18 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x270>
    80001c0c:	fff00793          	li	a5,-1
    80001c10:	00078513          	mv	a0,a5
}
    80001c14:	e7dff06f          	j	80001a90 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
				writeARegister(0, s->wait());
    80001c18:	00048513          	mv	a0,s1
    80001c1c:	00000097          	auipc	ra,0x0
    80001c20:	594080e7          	jalr	1428(ra) # 800021b0 <_ZN4_sem4waitEv>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001c24:	00050513          	mv	a0,a0
}
    80001c28:	e69ff06f          	j	80001a90 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
			if (s == nullptr)
    80001c2c:	00049863          	bnez	s1,80001c3c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x294>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001c30:	fff00793          	li	a5,-1
    80001c34:	00078513          	mv	a0,a5
}
    80001c38:	e59ff06f          	j	80001a90 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
				writeARegister(0, s->signal());
    80001c3c:	00048513          	mv	a0,s1
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	670080e7          	jalr	1648(ra) # 800022b0 <_ZN4_sem6signalEv>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001c48:	00050513          	mv	a0,a0
}
    80001c4c:	e45ff06f          	j	80001a90 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
			unsigned n = (unsigned)a2;
    80001c50:	0009059b          	sext.w	a1,s2
			if (s == nullptr)
    80001c54:	00049863          	bnez	s1,80001c64 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x2bc>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001c58:	fff00793          	li	a5,-1
    80001c5c:	00078513          	mv	a0,a5
}
    80001c60:	e31ff06f          	j	80001a90 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
				writeARegister(0, s->wait_n(n));
    80001c64:	00048513          	mv	a0,s1
    80001c68:	00000097          	auipc	ra,0x0
    80001c6c:	49c080e7          	jalr	1180(ra) # 80002104 <_ZN4_sem6wait_nEj>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001c70:	00050513          	mv	a0,a0
}
    80001c74:	e1dff06f          	j	80001a90 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
			unsigned n = (unsigned)a2;
    80001c78:	0009059b          	sext.w	a1,s2
			if (s == nullptr)
    80001c7c:	00049863          	bnez	s1,80001c8c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x2e4>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001c80:	fff00793          	li	a5,-1
    80001c84:	00078513          	mv	a0,a5
}
    80001c88:	e09ff06f          	j	80001a90 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
				writeARegister(0, s->signal_n(n));
    80001c8c:	00048513          	mv	a0,s1
    80001c90:	00000097          	auipc	ra,0x0
    80001c94:	54c080e7          	jalr	1356(ra) # 800021dc <_ZN4_sem8signal_nEj>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001c98:	00050513          	mv	a0,a0
}
    80001c9c:	df5ff06f          	j	80001a90 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
			if (_thread::running == nullptr)
    80001ca0:	0000a517          	auipc	a0,0xa
    80001ca4:	bb853503          	ld	a0,-1096(a0) # 8000b858 <_ZN7_thread7runningE>
    80001ca8:	00050e63          	beqz	a0,80001cc4 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x31c>
				_thread::running->time_sleep(a1);
    80001cac:	00048593          	mv	a1,s1
    80001cb0:	00001097          	auipc	ra,0x1
    80001cb4:	fb4080e7          	jalr	-76(ra) # 80002c64 <_ZN7_thread10time_sleepEm>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001cb8:	00000793          	li	a5,0
    80001cbc:	00078513          	mv	a0,a5
}
    80001cc0:	dd1ff06f          	j	80001a90 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001cc4:	fff00793          	li	a5,-1
    80001cc8:	00078513          	mv	a0,a5
}
    80001ccc:	dc5ff06f          	j	80001a90 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
			char c = _console::getc();
    80001cd0:	fffff097          	auipc	ra,0xfffff
    80001cd4:	6bc080e7          	jalr	1724(ra) # 8000138c <_ZN8_console4getcEv>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80001cd8:	00050513          	mv	a0,a0
}
    80001cdc:	db5ff06f          	j	80001a90 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
			_console::putc(c);
    80001ce0:	0ff4f513          	andi	a0,s1,255
    80001ce4:	fffff097          	auipc	ra,0xfffff
    80001ce8:	6e0080e7          	jalr	1760(ra) # 800013c4 <_ZN8_console4putcEc>
			break;
    80001cec:	da5ff06f          	j	80001a90 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xe8>
		int irq = plic_claim(); // Potvrđujemo prekid PLIC kontroleru
    80001cf0:	00005097          	auipc	ra,0x5
    80001cf4:	fe4080e7          	jalr	-28(ra) # 80006cd4 <plic_claim>
    80001cf8:	00050913          	mv	s2,a0
		if (irq == CONSOLE_IRQ)
    80001cfc:	00a00793          	li	a5,10
    80001d00:	00f50a63          	beq	a0,a5,80001d14 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x36c>
		plic_complete(irq); // Obaveštavamo PLIC da je obrada završena
    80001d04:	00090513          	mv	a0,s2
    80001d08:	00005097          	auipc	ra,0x5
    80001d0c:	004080e7          	jalr	4(ra) # 80006d0c <plic_complete>
    80001d10:	d91ff06f          	j	80001aa0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xf8>
			while ((*((volatile uint8 *)CONSOLE_STATUS) & 0x01) && !_console::getInBuff()->isFull())
    80001d14:	00007497          	auipc	s1,0x7
    80001d18:	2fc4b483          	ld	s1,764(s1) # 80009010 <CONSOLE_STATUS>
    80001d1c:	0004c783          	lbu	a5,0(s1)
    80001d20:	0017f793          	andi	a5,a5,1
    80001d24:	06078463          	beqz	a5,80001d8c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x3e4>
        ensureInit();
    80001d28:	fffff097          	auipc	ra,0xfffff
    80001d2c:	520080e7          	jalr	1312(ra) # 80001248 <_ZN8_console10ensureInitEv>
    80001d30:	0000a517          	auipc	a0,0xa
    80001d34:	af053503          	ld	a0,-1296(a0) # 8000b820 <_ZN8_console6inbuffE>
    80001d38:	fffff097          	auipc	ra,0xfffff
    80001d3c:	4cc080e7          	jalr	1228(ra) # 80001204 <_ZN7kBuffer6isFullEv>
    80001d40:	04051663          	bnez	a0,80001d8c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x3e4>
				char c = *((volatile uint8 *)CONSOLE_RX_DATA);
    80001d44:	00007797          	auipc	a5,0x7
    80001d48:	2bc7b783          	ld	a5,700(a5) # 80009000 <CONSOLE_RX_DATA>
    80001d4c:	0007c483          	lbu	s1,0(a5)
    80001d50:	0ff4f493          	andi	s1,s1,255
    80001d54:	fffff097          	auipc	ra,0xfffff
    80001d58:	4f4080e7          	jalr	1268(ra) # 80001248 <_ZN8_console10ensureInitEv>
				_console::getInBuff()->put(c);
    80001d5c:	00048593          	mv	a1,s1
    80001d60:	0000a517          	auipc	a0,0xa
    80001d64:	ac053503          	ld	a0,-1344(a0) # 8000b820 <_ZN8_console6inbuffE>
    80001d68:	fffff097          	auipc	ra,0xfffff
    80001d6c:	400080e7          	jalr	1024(ra) # 80001168 <_ZN7kBuffer3putEc>
        ensureInit();
    80001d70:	fffff097          	auipc	ra,0xfffff
    80001d74:	4d8080e7          	jalr	1240(ra) # 80001248 <_ZN8_console10ensureInitEv>
				_console::getInSem()->signal();
    80001d78:	0000a517          	auipc	a0,0xa
    80001d7c:	a9853503          	ld	a0,-1384(a0) # 8000b810 <_ZN8_console5inSemE>
    80001d80:	00000097          	auipc	ra,0x0
    80001d84:	530080e7          	jalr	1328(ra) # 800022b0 <_ZN4_sem6signalEv>
			while ((*((volatile uint8 *)CONSOLE_STATUS) & 0x01) && !_console::getInBuff()->isFull())
    80001d88:	f8dff06f          	j	80001d14 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x36c>
			while ((*((volatile uint8 *)CONSOLE_STATUS) & 0x20) && !_console::getOutBuff()->isEmpty())
    80001d8c:	0004c783          	lbu	a5,0(s1)
    80001d90:	0207f793          	andi	a5,a5,32
    80001d94:	f60788e3          	beqz	a5,80001d04 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x35c>
        ensureInit();
    80001d98:	fffff097          	auipc	ra,0xfffff
    80001d9c:	4b0080e7          	jalr	1200(ra) # 80001248 <_ZN8_console10ensureInitEv>
    80001da0:	0000a517          	auipc	a0,0xa
    80001da4:	a7853503          	ld	a0,-1416(a0) # 8000b818 <_ZN8_console7outbuffE>
    80001da8:	fffff097          	auipc	ra,0xfffff
    80001dac:	480080e7          	jalr	1152(ra) # 80001228 <_ZN7kBuffer7isEmptyEv>
    80001db0:	f4051ae3          	bnez	a0,80001d04 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x35c>
    80001db4:	fffff097          	auipc	ra,0xfffff
    80001db8:	494080e7          	jalr	1172(ra) # 80001248 <_ZN8_console10ensureInitEv>
				char c = _console::getOutBuff()->get();
    80001dbc:	0000a517          	auipc	a0,0xa
    80001dc0:	a5c53503          	ld	a0,-1444(a0) # 8000b818 <_ZN8_console7outbuffE>
    80001dc4:	fffff097          	auipc	ra,0xfffff
    80001dc8:	3f0080e7          	jalr	1008(ra) # 800011b4 <_ZN7kBuffer3getEv>
				*((volatile uint8 *)CONSOLE_TX_DATA) = (uint8)c;
    80001dcc:	00007797          	auipc	a5,0x7
    80001dd0:	23c7b783          	ld	a5,572(a5) # 80009008 <CONSOLE_TX_DATA>
    80001dd4:	00a78023          	sb	a0,0(a5)
        ensureInit();
    80001dd8:	fffff097          	auipc	ra,0xfffff
    80001ddc:	470080e7          	jalr	1136(ra) # 80001248 <_ZN8_console10ensureInitEv>
				_console::getOutSem()->signal();
    80001de0:	0000a517          	auipc	a0,0xa
    80001de4:	a2853503          	ld	a0,-1496(a0) # 8000b808 <_ZN8_console6outSemE>
    80001de8:	00000097          	auipc	ra,0x0
    80001dec:	4c8080e7          	jalr	1224(ra) # 800022b0 <_ZN4_sem6signalEv>
			while ((*((volatile uint8 *)CONSOLE_STATUS) & 0x20) && !_console::getOutBuff()->isEmpty())
    80001df0:	f9dff06f          	j	80001d8c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x3e4>
				Scheduler::instance().put(t);
    80001df4:	0000a517          	auipc	a0,0xa
    80001df8:	adc50513          	addi	a0,a0,-1316 # 8000b8d0 <_ZZN9Scheduler8instanceEvE8instance>
    80001dfc:	00000097          	auipc	ra,0x0
    80001e00:	150080e7          	jalr	336(ra) # 80001f4c <_ZN9Scheduler3putEP7_thread>
			while (_thread::sleepingHead && _thread::sleepingHead->timeSleeping == 0)
    80001e04:	0000a597          	auipc	a1,0xa
    80001e08:	a445b583          	ld	a1,-1468(a1) # 8000b848 <_ZN7_thread12sleepingHeadE>
    80001e0c:	04058863          	beqz	a1,80001e5c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x4b4>
    80001e10:	0505b783          	ld	a5,80(a1)
    80001e14:	04079463          	bnez	a5,80001e5c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x4b4>
				_thread::sleepingHead = t->waitnext;
    80001e18:	0085b783          	ld	a5,8(a1)
    80001e1c:	0000a717          	auipc	a4,0xa
    80001e20:	a2f73623          	sd	a5,-1492(a4) # 8000b848 <_ZN7_thread12sleepingHeadE>
				t->waitnext = nullptr;
    80001e24:	0005b423          	sd	zero,8(a1)
				t->isReady = true;
    80001e28:	00100793          	li	a5,1
    80001e2c:	04f58023          	sb	a5,64(a1)
    80001e30:	0000a797          	auipc	a5,0xa
    80001e34:	a107c783          	lbu	a5,-1520(a5) # 8000b840 <_ZGVZN9Scheduler8instanceEvE8instance>
    80001e38:	fa079ee3          	bnez	a5,80001df4 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x44c>
    Scheduler() : head(nullptr), tail(nullptr) {};
    80001e3c:	0000a797          	auipc	a5,0xa
    80001e40:	a9478793          	addi	a5,a5,-1388 # 8000b8d0 <_ZZN9Scheduler8instanceEvE8instance>
    80001e44:	0007b023          	sd	zero,0(a5)
    80001e48:	0007b423          	sd	zero,8(a5)
        static Scheduler instance;
    80001e4c:	00100793          	li	a5,1
    80001e50:	0000a717          	auipc	a4,0xa
    80001e54:	9ef70823          	sb	a5,-1552(a4) # 8000b840 <_ZGVZN9Scheduler8instanceEvE8instance>
    80001e58:	f9dff06f          	j	80001df4 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x44c>
		if (_thread::timeSliceCounter >= _thread::running->getTimeSlice())
    80001e5c:	0000a797          	auipc	a5,0xa
    80001e60:	9fc7b783          	ld	a5,-1540(a5) # 8000b858 <_ZN7_thread7runningE>
		return timeSlice;
    80001e64:	0387b783          	ld	a5,56(a5)
    80001e68:	0000a717          	auipc	a4,0xa
    80001e6c:	9e873703          	ld	a4,-1560(a4) # 8000b850 <_ZN7_thread16timeSliceCounterE>
    80001e70:	00f77863          	bgeu	a4,a5,80001e80 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x4d8>
    __asm__ volatile("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001e74:	00200793          	li	a5,2
    80001e78:	1447b073          	csrc	sip,a5
}
    80001e7c:	c25ff06f          	j	80001aa0 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0xf8>
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001e80:	141027f3          	csrr	a5,sepc
    80001e84:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001e88:	fc843783          	ld	a5,-56(s0)
			uint64 volatile sepc = r_sepc();
    80001e8c:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001e90:	100027f3          	csrr	a5,sstatus
    80001e94:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001e98:	fc043783          	ld	a5,-64(s0)
			uint64 volatile sstatus = r_sstatus();
    80001e9c:	faf43023          	sd	a5,-96(s0)
			_thread::timeSliceCounter = 0;
    80001ea0:	0000a797          	auipc	a5,0xa
    80001ea4:	9a07b823          	sd	zero,-1616(a5) # 8000b850 <_ZN7_thread16timeSliceCounterE>
			_thread::dispatch();
    80001ea8:	00001097          	auipc	ra,0x1
    80001eac:	ce4080e7          	jalr	-796(ra) # 80002b8c <_ZN7_thread8dispatchEv>
			w_sstatus(sstatus);
    80001eb0:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001eb4:	10079073          	csrw	sstatus,a5
			w_sepc(sepc);
    80001eb8:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001ebc:	14179073          	csrw	sepc,a5
}
    80001ec0:	fb5ff06f          	j	80001e74 <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x4cc>
		_printString("Unhandled exception: SEPC = ");
    80001ec4:	00007517          	auipc	a0,0x7
    80001ec8:	1a450513          	addi	a0,a0,420 # 80009068 <_ZZ13_printIntegermmbE6digits+0x18>
    80001ecc:	00000097          	auipc	ra,0x0
    80001ed0:	998080e7          	jalr	-1640(ra) # 80001864 <_Z12_printStringPKc>
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001ed4:	141027f3          	csrr	a5,sepc
    80001ed8:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001edc:	fc843503          	ld	a0,-56(s0)
        _printInteger(r_sepc(), 16);
    80001ee0:	00100613          	li	a2,1
    80001ee4:	01000593          	li	a1,16
    80001ee8:	00000097          	auipc	ra,0x0
    80001eec:	9c0080e7          	jalr	-1600(ra) # 800018a8 <_Z13_printIntegermmb>
        _printString(", SCAUSE = ");
    80001ef0:	00007517          	auipc	a0,0x7
    80001ef4:	19850513          	addi	a0,a0,408 # 80009088 <_ZZ13_printIntegermmbE6digits+0x38>
    80001ef8:	00000097          	auipc	ra,0x0
    80001efc:	96c080e7          	jalr	-1684(ra) # 80001864 <_Z12_printStringPKc>
    __asm__ volatile("csrr %[scause], scause" : [scause] "=r"(scause));
    80001f00:	142027f3          	csrr	a5,scause
    80001f04:	fcf43023          	sd	a5,-64(s0)
    return scause;
    80001f08:	fc043503          	ld	a0,-64(s0)
        _printInteger(r_scause());
    80001f0c:	00100613          	li	a2,1
    80001f10:	00a00593          	li	a1,10
    80001f14:	00000097          	auipc	ra,0x0
    80001f18:	994080e7          	jalr	-1644(ra) # 800018a8 <_Z13_printIntegermmb>
        _printString("\n");
    80001f1c:	00007517          	auipc	a0,0x7
    80001f20:	7d450513          	addi	a0,a0,2004 # 800096f0 <_ZTV7WorkerD+0x168>
    80001f24:	00000097          	auipc	ra,0x0
    80001f28:	940080e7          	jalr	-1728(ra) # 80001864 <_Z12_printStringPKc>
        while(1);
    80001f2c:	0000006f          	j	80001f2c <_ZN5Riscv20handleSupervisorTrapEmmmmmmmm+0x584>
			*handle = new _sem(a2);
    80001f30:	00050493          	mv	s1,a0
    80001f34:	00098513          	mv	a0,s3
    80001f38:	00001097          	auipc	ra,0x1
    80001f3c:	814080e7          	jalr	-2028(ra) # 8000274c <_ZdlPv>
    80001f40:	00048513          	mv	a0,s1
    80001f44:	0000b097          	auipc	ra,0xb
    80001f48:	a64080e7          	jalr	-1436(ra) # 8000c9a8 <_Unwind_Resume>

0000000080001f4c <_ZN9Scheduler3putEP7_thread>:
#include "../h/Scheduler.h"

#include "../h/Thread.h"

void Scheduler::put(_thread *t)
{
    80001f4c:	ff010113          	addi	sp,sp,-16
    80001f50:	00813423          	sd	s0,8(sp)
    80001f54:	01010413          	addi	s0,sp,16
    if (!t)
    80001f58:	00058e63          	beqz	a1,80001f74 <_ZN9Scheduler3putEP7_thread+0x28>
        return;
    t->next = nullptr;
    80001f5c:	0005b023          	sd	zero,0(a1)

    if (!head)
    80001f60:	00053783          	ld	a5,0(a0)
    80001f64:	00078e63          	beqz	a5,80001f80 <_ZN9Scheduler3putEP7_thread+0x34>
    {
        head = t;
    }
    else
    {
        tail->next = t;
    80001f68:	00853783          	ld	a5,8(a0)
    80001f6c:	00b7b023          	sd	a1,0(a5)
    }
    tail = t;
    80001f70:	00b53423          	sd	a1,8(a0)
}
    80001f74:	00813403          	ld	s0,8(sp)
    80001f78:	01010113          	addi	sp,sp,16
    80001f7c:	00008067          	ret
        head = t;
    80001f80:	00b53023          	sd	a1,0(a0)
    80001f84:	fedff06f          	j	80001f70 <_ZN9Scheduler3putEP7_thread+0x24>

0000000080001f88 <_ZN9Scheduler3getEv>:

_thread *Scheduler::get()
{
    80001f88:	ff010113          	addi	sp,sp,-16
    80001f8c:	00813423          	sd	s0,8(sp)
    80001f90:	01010413          	addi	s0,sp,16
    80001f94:	00050793          	mv	a5,a0
    if (!head)
    80001f98:	00053503          	ld	a0,0(a0)
    80001f9c:	00050a63          	beqz	a0,80001fb0 <_ZN9Scheduler3getEv+0x28>
    {
        return nullptr;
    }

    _thread *t = head;
    head = head->next;
    80001fa0:	00053703          	ld	a4,0(a0)
    80001fa4:	00e7b023          	sd	a4,0(a5)

    if (!head)
    80001fa8:	00070a63          	beqz	a4,80001fbc <_ZN9Scheduler3getEv+0x34>
    {
        tail = nullptr;
    }

    t->next = nullptr;
    80001fac:	00053023          	sd	zero,0(a0)
    return t;
    80001fb0:	00813403          	ld	s0,8(sp)
    80001fb4:	01010113          	addi	sp,sp,16
    80001fb8:	00008067          	ret
        tail = nullptr;
    80001fbc:	0007b423          	sd	zero,8(a5)
    80001fc0:	fedff06f          	j	80001fac <_ZN9Scheduler3getEv+0x24>

0000000080001fc4 <_ZN4_semC1Ei>:
#include "../h/Semaphore.h"
#include "../h/Thread.h"

_sem::_sem(int init) : val(init), head(nullptr), tail(nullptr), closed(false)
    80001fc4:	ff010113          	addi	sp,sp,-16
    80001fc8:	00813423          	sd	s0,8(sp)
    80001fcc:	01010413          	addi	s0,sp,16
    80001fd0:	00b52023          	sw	a1,0(a0)
    80001fd4:	00053423          	sd	zero,8(a0)
    80001fd8:	00053823          	sd	zero,16(a0)
    80001fdc:	00050c23          	sb	zero,24(a0)
{
}
    80001fe0:	00813403          	ld	s0,8(sp)
    80001fe4:	01010113          	addi	sp,sp,16
    80001fe8:	00008067          	ret

0000000080001fec <_ZN4_sem3addEP7_thread>:
{
    return signal_n(1);
}

void _sem::add(_thread *t)
{
    80001fec:	ff010113          	addi	sp,sp,-16
    80001ff0:	00813423          	sd	s0,8(sp)
    80001ff4:	01010413          	addi	s0,sp,16
    if (!t)
    80001ff8:	00058e63          	beqz	a1,80002014 <_ZN4_sem3addEP7_thread+0x28>
        return;
    t->waitnext = nullptr;
    80001ffc:	0005b423          	sd	zero,8(a1)

    if (!head)
    80002000:	00853783          	ld	a5,8(a0)
    80002004:	00078e63          	beqz	a5,80002020 <_ZN4_sem3addEP7_thread+0x34>
    {
        head = t;
    }
    else
    {
        tail->waitnext = t;
    80002008:	01053783          	ld	a5,16(a0)
    8000200c:	00b7b423          	sd	a1,8(a5)
    }
    tail = t;
    80002010:	00b53823          	sd	a1,16(a0)
}
    80002014:	00813403          	ld	s0,8(sp)
    80002018:	01010113          	addi	sp,sp,16
    8000201c:	00008067          	ret
        head = t;
    80002020:	00b53423          	sd	a1,8(a0)
    80002024:	fedff06f          	j	80002010 <_ZN4_sem3addEP7_thread+0x24>

0000000080002028 <_ZN4_sem3getEv>:
_thread *_sem::get()
{
    80002028:	ff010113          	addi	sp,sp,-16
    8000202c:	00813423          	sd	s0,8(sp)
    80002030:	01010413          	addi	s0,sp,16
    80002034:	00050793          	mv	a5,a0
    if (!head)
    80002038:	00853503          	ld	a0,8(a0)
    8000203c:	00050a63          	beqz	a0,80002050 <_ZN4_sem3getEv+0x28>
    {
        return nullptr;
    }

    _thread *t = head;
    head = head->waitnext;
    80002040:	00853703          	ld	a4,8(a0)
    80002044:	00e7b423          	sd	a4,8(a5)

    if (!head)
    80002048:	00070a63          	beqz	a4,8000205c <_ZN4_sem3getEv+0x34>
    {
        tail = nullptr;
    }

    t->waitnext = nullptr;
    8000204c:	00053423          	sd	zero,8(a0)
    return t;
}
    80002050:	00813403          	ld	s0,8(sp)
    80002054:	01010113          	addi	sp,sp,16
    80002058:	00008067          	ret
        tail = nullptr;
    8000205c:	0007b823          	sd	zero,16(a5)
    80002060:	fedff06f          	j	8000204c <_ZN4_sem3getEv+0x24>

0000000080002064 <_ZN4_sem5closeEv>:

int _sem::close()
{
    80002064:	fe010113          	addi	sp,sp,-32
    80002068:	00113c23          	sd	ra,24(sp)
    8000206c:	00813823          	sd	s0,16(sp)
    80002070:	00913423          	sd	s1,8(sp)
    80002074:	02010413          	addi	s0,sp,32
    80002078:	00050493          	mv	s1,a0
    closed = true;
    8000207c:	00100793          	li	a5,1
    80002080:	00f50c23          	sb	a5,24(a0)

    while (head)
    80002084:	0084b783          	ld	a5,8(s1)
    80002088:	06078263          	beqz	a5,800020ec <_ZN4_sem5closeEv+0x88>
    {
        _thread *t = get();
    8000208c:	00048513          	mv	a0,s1
    80002090:	00000097          	auipc	ra,0x0
    80002094:	f98080e7          	jalr	-104(ra) # 80002028 <_ZN4_sem3getEv>
        if (t)
    80002098:	fe0506e3          	beqz	a0,80002084 <_ZN4_sem5closeEv+0x20>
        {
            t->isReady = true;
    8000209c:	00100793          	li	a5,1
    800020a0:	04f50023          	sb	a5,64(a0)

            t->semStatus = -1;
    800020a4:	fff00793          	li	a5,-1
    800020a8:	04f52223          	sw	a5,68(a0)
    800020ac:	00009797          	auipc	a5,0x9
    800020b0:	7947c783          	lbu	a5,1940(a5) # 8000b840 <_ZGVZN9Scheduler8instanceEvE8instance>
    800020b4:	02079063          	bnez	a5,800020d4 <_ZN4_sem5closeEv+0x70>
    Scheduler() : head(nullptr), tail(nullptr) {};
    800020b8:	0000a797          	auipc	a5,0xa
    800020bc:	81878793          	addi	a5,a5,-2024 # 8000b8d0 <_ZZN9Scheduler8instanceEvE8instance>
    800020c0:	0007b023          	sd	zero,0(a5)
    800020c4:	0007b423          	sd	zero,8(a5)
        static Scheduler instance;
    800020c8:	00100793          	li	a5,1
    800020cc:	00009717          	auipc	a4,0x9
    800020d0:	76f70a23          	sb	a5,1908(a4) # 8000b840 <_ZGVZN9Scheduler8instanceEvE8instance>

            Scheduler::instance().put(t);
    800020d4:	00050593          	mv	a1,a0
    800020d8:	00009517          	auipc	a0,0x9
    800020dc:	7f850513          	addi	a0,a0,2040 # 8000b8d0 <_ZZN9Scheduler8instanceEvE8instance>
    800020e0:	00000097          	auipc	ra,0x0
    800020e4:	e6c080e7          	jalr	-404(ra) # 80001f4c <_ZN9Scheduler3putEP7_thread>
    800020e8:	f9dff06f          	j	80002084 <_ZN4_sem5closeEv+0x20>
        }
    }

    return 0;
}
    800020ec:	00000513          	li	a0,0
    800020f0:	01813083          	ld	ra,24(sp)
    800020f4:	01013403          	ld	s0,16(sp)
    800020f8:	00813483          	ld	s1,8(sp)
    800020fc:	02010113          	addi	sp,sp,32
    80002100:	00008067          	ret

0000000080002104 <_ZN4_sem6wait_nEj>:
int _sem::wait_n(unsigned n)
{
    if(closed) return -1;
    80002104:	01854703          	lbu	a4,24(a0)
    80002108:	08071c63          	bnez	a4,800021a0 <_ZN4_sem6wait_nEj+0x9c>
    8000210c:	00058793          	mv	a5,a1
    if(n == 0) return 0;
    80002110:	08058c63          	beqz	a1,800021a8 <_ZN4_sem6wait_nEj+0xa4>

    if(head == nullptr && val >=(int) n){
    80002114:	00853703          	ld	a4,8(a0)
    80002118:	06070263          	beqz	a4,8000217c <_ZN4_sem6wait_nEj+0x78>
{
    8000211c:	fe010113          	addi	sp,sp,-32
    80002120:	00113c23          	sd	ra,24(sp)
    80002124:	00813823          	sd	s0,16(sp)
    80002128:	00913423          	sd	s1,8(sp)
    8000212c:	02010413          	addi	s0,sp,32
        val -= n;
        return 0;
    }else{
        _thread::running->isReady = false;
    80002130:	00009497          	auipc	s1,0x9
    80002134:	72848493          	addi	s1,s1,1832 # 8000b858 <_ZN7_thread7runningE>
    80002138:	0004b583          	ld	a1,0(s1)
    8000213c:	04058023          	sb	zero,64(a1)
        _thread::running->requestedN = n; 
    80002140:	04f5a423          	sw	a5,72(a1)
        _thread::running->semStatus = 0;
    80002144:	0405a223          	sw	zero,68(a1)

        add(_thread::running); 
    80002148:	00000097          	auipc	ra,0x0
    8000214c:	ea4080e7          	jalr	-348(ra) # 80001fec <_ZN4_sem3addEP7_thread>
        _thread::dispatch();
    80002150:	00001097          	auipc	ra,0x1
    80002154:	a3c080e7          	jalr	-1476(ra) # 80002b8c <_ZN7_thread8dispatchEv>

  
        if (_thread::running->semStatus < 0) {
    80002158:	0004b783          	ld	a5,0(s1)
    8000215c:	0447a783          	lw	a5,68(a5)
    80002160:	0207cc63          	bltz	a5,80002198 <_ZN4_sem6wait_nEj+0x94>
            return -1;
        }
        return 0;
    80002164:	00000513          	li	a0,0
    }
}
    80002168:	01813083          	ld	ra,24(sp)
    8000216c:	01013403          	ld	s0,16(sp)
    80002170:	00813483          	ld	s1,8(sp)
    80002174:	02010113          	addi	sp,sp,32
    80002178:	00008067          	ret
    if(head == nullptr && val >=(int) n){
    8000217c:	00052703          	lw	a4,0(a0)
    80002180:	0005869b          	sext.w	a3,a1
    80002184:	f8d74ce3          	blt	a4,a3,8000211c <_ZN4_sem6wait_nEj+0x18>
        val -= n;
    80002188:	40b707bb          	subw	a5,a4,a1
    8000218c:	00f52023          	sw	a5,0(a0)
        return 0;
    80002190:	00000513          	li	a0,0
    80002194:	00008067          	ret
            return -1;
    80002198:	fff00513          	li	a0,-1
    8000219c:	fcdff06f          	j	80002168 <_ZN4_sem6wait_nEj+0x64>
    if(closed) return -1;
    800021a0:	fff00513          	li	a0,-1
    800021a4:	00008067          	ret
    if(n == 0) return 0;
    800021a8:	00000513          	li	a0,0
}
    800021ac:	00008067          	ret

00000000800021b0 <_ZN4_sem4waitEv>:
{   
    800021b0:	ff010113          	addi	sp,sp,-16
    800021b4:	00113423          	sd	ra,8(sp)
    800021b8:	00813023          	sd	s0,0(sp)
    800021bc:	01010413          	addi	s0,sp,16
    return wait_n(1);
    800021c0:	00100593          	li	a1,1
    800021c4:	00000097          	auipc	ra,0x0
    800021c8:	f40080e7          	jalr	-192(ra) # 80002104 <_ZN4_sem6wait_nEj>
}
    800021cc:	00813083          	ld	ra,8(sp)
    800021d0:	00013403          	ld	s0,0(sp)
    800021d4:	01010113          	addi	sp,sp,16
    800021d8:	00008067          	ret

00000000800021dc <_ZN4_sem8signal_nEj>:

int _sem::signal_n(unsigned n) {
    if (closed) return -1;
    800021dc:	01854783          	lbu	a5,24(a0)
    800021e0:	0a079463          	bnez	a5,80002288 <_ZN4_sem8signal_nEj+0xac>
int _sem::signal_n(unsigned n) {
    800021e4:	fe010113          	addi	sp,sp,-32
    800021e8:	00113c23          	sd	ra,24(sp)
    800021ec:	00813823          	sd	s0,16(sp)
    800021f0:	00913423          	sd	s1,8(sp)
    800021f4:	02010413          	addi	s0,sp,32
    800021f8:	00050493          	mv	s1,a0
    
    val += n;
    800021fc:	00052783          	lw	a5,0(a0)
    80002200:	00b785bb          	addw	a1,a5,a1
    80002204:	00b52023          	sw	a1,0(a0)
    80002208:	0140006f          	j	8000221c <_ZN4_sem8signal_nEj+0x40>
        
        val -= t->requestedN; 
        t->isReady = true;
        t->semStatus = 0;
        
        Scheduler::instance().put(t);
    8000220c:	00009517          	auipc	a0,0x9
    80002210:	6c450513          	addi	a0,a0,1732 # 8000b8d0 <_ZZN9Scheduler8instanceEvE8instance>
    80002214:	00000097          	auipc	ra,0x0
    80002218:	d38080e7          	jalr	-712(ra) # 80001f4c <_ZN9Scheduler3putEP7_thread>
    while (head && val >= (int)head->requestedN) {
    8000221c:	0084b783          	ld	a5,8(s1)
    80002220:	06078863          	beqz	a5,80002290 <_ZN4_sem8signal_nEj+0xb4>
    80002224:	0004a703          	lw	a4,0(s1)
    80002228:	0487a783          	lw	a5,72(a5)
    8000222c:	06f74e63          	blt	a4,a5,800022a8 <_ZN4_sem8signal_nEj+0xcc>
        _thread *t = get(); 
    80002230:	00048513          	mv	a0,s1
    80002234:	00000097          	auipc	ra,0x0
    80002238:	df4080e7          	jalr	-524(ra) # 80002028 <_ZN4_sem3getEv>
    8000223c:	00050593          	mv	a1,a0
        val -= t->requestedN; 
    80002240:	04852703          	lw	a4,72(a0)
    80002244:	0004a783          	lw	a5,0(s1)
    80002248:	40e787bb          	subw	a5,a5,a4
    8000224c:	00f4a023          	sw	a5,0(s1)
        t->isReady = true;
    80002250:	00100793          	li	a5,1
    80002254:	04f50023          	sb	a5,64(a0)
        t->semStatus = 0;
    80002258:	04052223          	sw	zero,68(a0)
    8000225c:	00009797          	auipc	a5,0x9
    80002260:	5e47c783          	lbu	a5,1508(a5) # 8000b840 <_ZGVZN9Scheduler8instanceEvE8instance>
    80002264:	fa0794e3          	bnez	a5,8000220c <_ZN4_sem8signal_nEj+0x30>
    Scheduler() : head(nullptr), tail(nullptr) {};
    80002268:	00009797          	auipc	a5,0x9
    8000226c:	66878793          	addi	a5,a5,1640 # 8000b8d0 <_ZZN9Scheduler8instanceEvE8instance>
    80002270:	0007b023          	sd	zero,0(a5)
    80002274:	0007b423          	sd	zero,8(a5)
        static Scheduler instance;
    80002278:	00100793          	li	a5,1
    8000227c:	00009717          	auipc	a4,0x9
    80002280:	5cf70223          	sb	a5,1476(a4) # 8000b840 <_ZGVZN9Scheduler8instanceEvE8instance>
    80002284:	f89ff06f          	j	8000220c <_ZN4_sem8signal_nEj+0x30>
    if (closed) return -1;
    80002288:	fff00513          	li	a0,-1

    }

    return 0;
    8000228c:	00008067          	ret
    return 0;
    80002290:	00000513          	li	a0,0
    80002294:	01813083          	ld	ra,24(sp)
    80002298:	01013403          	ld	s0,16(sp)
    8000229c:	00813483          	ld	s1,8(sp)
    800022a0:	02010113          	addi	sp,sp,32
    800022a4:	00008067          	ret
    return 0;
    800022a8:	00000513          	li	a0,0
    800022ac:	fe9ff06f          	j	80002294 <_ZN4_sem8signal_nEj+0xb8>

00000000800022b0 <_ZN4_sem6signalEv>:
{
    800022b0:	ff010113          	addi	sp,sp,-16
    800022b4:	00113423          	sd	ra,8(sp)
    800022b8:	00813023          	sd	s0,0(sp)
    800022bc:	01010413          	addi	s0,sp,16
    return signal_n(1);
    800022c0:	00100593          	li	a1,1
    800022c4:	00000097          	auipc	ra,0x0
    800022c8:	f18080e7          	jalr	-232(ra) # 800021dc <_ZN4_sem8signal_nEj>
}
    800022cc:	00813083          	ld	ra,8(sp)
    800022d0:	00013403          	ld	s0,0(sp)
    800022d4:	01010113          	addi	sp,sp,16
    800022d8:	00008067          	ret

00000000800022dc <_Z9mem_allocm>:
#include "../h/syscall_c.h"
#include  "../h/riscv.h"
#include "../h/Console.h"

void *mem_alloc(size_t size) {
    800022dc:	fe010113          	addi	sp,sp,-32
    800022e0:	00813c23          	sd	s0,24(sp)
    800022e4:	02010413          	addi	s0,sp,32
    size_t blocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    800022e8:	03f50513          	addi	a0,a0,63
    800022ec:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    800022f0:	00050593          	mv	a1,a0
    800022f4:	00100793          	li	a5,1
    800022f8:	00078513          	mv	a0,a5

    Riscv::writeARegister(1, blocks);
    Riscv::writeARegister(0, 0x01);

    __asm__ volatile("ecall");
    800022fc:	00000073          	ecall
    __asm__ volatile("mv %[val], a%[reg]" : [val] "=r"(value) : [reg] "i"(reg_number));
    80002300:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80002304:	fef43423          	sd	a5,-24(s0)
    return (void*) a0;
    80002308:	fe843503          	ld	a0,-24(s0)


}
    8000230c:	01813403          	ld	s0,24(sp)
    80002310:	02010113          	addi	sp,sp,32
    80002314:	00008067          	ret

0000000080002318 <_Z8mem_freePv>:

int mem_free (void* ptr) {
    80002318:	fe010113          	addi	sp,sp,-32
    8000231c:	00813c23          	sd	s0,24(sp)
    80002320:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80002324:	00050593          	mv	a1,a0
    80002328:	00200793          	li	a5,2
    8000232c:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)ptr);
    Riscv::writeARegister(0, 0x02);

    __asm__ volatile("ecall");
    80002330:	00000073          	ecall
    __asm__ volatile("mv %[val], a%[reg]" : [val] "=r"(value) : [reg] "i"(reg_number));
    80002334:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80002338:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    8000233c:	fe843503          	ld	a0,-24(s0)
}
    80002340:	0005051b          	sext.w	a0,a0
    80002344:	01813403          	ld	s0,24(sp)
    80002348:	02010113          	addi	sp,sp,32
    8000234c:	00008067          	ret

0000000080002350 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void(*start_routine)(void *), void *arg) {
    80002350:	fc010113          	addi	sp,sp,-64
    80002354:	02113c23          	sd	ra,56(sp)
    80002358:	02813823          	sd	s0,48(sp)
    8000235c:	02913423          	sd	s1,40(sp)
    80002360:	03213023          	sd	s2,32(sp)
    80002364:	01313c23          	sd	s3,24(sp)
    80002368:	04010413          	addi	s0,sp,64
    8000236c:	00050913          	mv	s2,a0
    80002370:	00058493          	mv	s1,a1
    80002374:	00060993          	mv	s3,a2
    void* volatile stack = nullptr;
    80002378:	fc043423          	sd	zero,-56(s0)
    if (start_routine) {
    8000237c:	00058a63          	beqz	a1,80002390 <_Z13thread_createPP7_threadPFvPvES2_+0x40>
        stack = mem_alloc(DEFAULT_STACK_SIZE);
    80002380:	00001537          	lui	a0,0x1
    80002384:	00000097          	auipc	ra,0x0
    80002388:	f58080e7          	jalr	-168(ra) # 800022dc <_Z9mem_allocm>
    8000238c:	fca43423          	sd	a0,-56(s0)
    }


    Riscv::writeARegister(4, (uint64)stack);
    80002390:	fc843783          	ld	a5,-56(s0)
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80002394:	00078713          	mv	a4,a5
    80002398:	00098693          	mv	a3,s3
    8000239c:	00048613          	mv	a2,s1
    800023a0:	00090593          	mv	a1,s2
    800023a4:	01100793          	li	a5,17
    800023a8:	00078513          	mv	a0,a5
    Riscv::writeARegister(2, (uint64)start_routine);
    Riscv::writeARegister(1, (uint64)handle);

    Riscv::writeARegister(0, 0x11);

    __asm__ volatile("ecall");
    800023ac:	00000073          	ecall
    __asm__ volatile("mv %[val], a%[reg]" : [val] "=r"(value) : [reg] "i"(reg_number));
    800023b0:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    800023b4:	fcf43023          	sd	a5,-64(s0)
    return (int) a0;
    800023b8:	fc043503          	ld	a0,-64(s0)
}
    800023bc:	0005051b          	sext.w	a0,a0
    800023c0:	03813083          	ld	ra,56(sp)
    800023c4:	03013403          	ld	s0,48(sp)
    800023c8:	02813483          	ld	s1,40(sp)
    800023cc:	02013903          	ld	s2,32(sp)
    800023d0:	01813983          	ld	s3,24(sp)
    800023d4:	04010113          	addi	sp,sp,64
    800023d8:	00008067          	ret

00000000800023dc <_Z15thread_dispatchv>:

void thread_dispatch() {
    800023dc:	ff010113          	addi	sp,sp,-16
    800023e0:	00813423          	sd	s0,8(sp)
    800023e4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    800023e8:	01300793          	li	a5,19
    800023ec:	00078513          	mv	a0,a5
    Riscv::writeARegister(0, 0x13);

    __asm__ volatile("ecall");
    800023f0:	00000073          	ecall

}
    800023f4:	00813403          	ld	s0,8(sp)
    800023f8:	01010113          	addi	sp,sp,16
    800023fc:	00008067          	ret

0000000080002400 <_Z11thread_exitv>:

int thread_exit() {
    80002400:	fe010113          	addi	sp,sp,-32
    80002404:	00813c23          	sd	s0,24(sp)
    80002408:	02010413          	addi	s0,sp,32
    8000240c:	01200793          	li	a5,18
    80002410:	00078513          	mv	a0,a5
    Riscv::writeARegister(0, 0x12);

    __asm__ volatile("ecall");
    80002414:	00000073          	ecall
    __asm__ volatile("mv %[val], a%[reg]" : [val] "=r"(value) : [reg] "i"(reg_number));
    80002418:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    8000241c:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    80002420:	fe843503          	ld	a0,-24(s0)

}
    80002424:	0005051b          	sext.w	a0,a0
    80002428:	01813403          	ld	s0,24(sp)
    8000242c:	02010113          	addi	sp,sp,32
    80002430:	00008067          	ret

0000000080002434 <_Z8sem_openPP4_semj>:

int sem_open(sem_t*handle, unsigned init) {
    80002434:	fe010113          	addi	sp,sp,-32
    80002438:	00813c23          	sd	s0,24(sp)
    8000243c:	02010413          	addi	s0,sp,32
    Riscv::writeARegister(2, (uint64)init);
    80002440:	02059593          	slli	a1,a1,0x20
    80002444:	0205d593          	srli	a1,a1,0x20
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80002448:	00058613          	mv	a2,a1
    8000244c:	00050593          	mv	a1,a0
    80002450:	02100793          	li	a5,33
    80002454:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)handle);

    Riscv::writeARegister(0, 0x21);

    __asm__ volatile("ecall");
    80002458:	00000073          	ecall
    __asm__ volatile("mv %[val], a%[reg]" : [val] "=r"(value) : [reg] "i"(reg_number));
    8000245c:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80002460:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    80002464:	fe843503          	ld	a0,-24(s0)

}
    80002468:	0005051b          	sext.w	a0,a0
    8000246c:	01813403          	ld	s0,24(sp)
    80002470:	02010113          	addi	sp,sp,32
    80002474:	00008067          	ret

0000000080002478 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    80002478:	fe010113          	addi	sp,sp,-32
    8000247c:	00813c23          	sd	s0,24(sp)
    80002480:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80002484:	00050593          	mv	a1,a0
    80002488:	02200793          	li	a5,34
    8000248c:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)handle);

    Riscv::writeARegister(0, 0x22);

    __asm__ volatile("ecall");
    80002490:	00000073          	ecall
    __asm__ volatile("mv %[val], a%[reg]" : [val] "=r"(value) : [reg] "i"(reg_number));
    80002494:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80002498:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    8000249c:	fe843503          	ld	a0,-24(s0)
}
    800024a0:	0005051b          	sext.w	a0,a0
    800024a4:	01813403          	ld	s0,24(sp)
    800024a8:	02010113          	addi	sp,sp,32
    800024ac:	00008067          	ret

00000000800024b0 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    800024b0:	fe010113          	addi	sp,sp,-32
    800024b4:	00813c23          	sd	s0,24(sp)
    800024b8:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    800024bc:	00050593          	mv	a1,a0
    800024c0:	02300793          	li	a5,35
    800024c4:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)id);

    Riscv::writeARegister(0, 0x23);

    __asm__ volatile("ecall");
    800024c8:	00000073          	ecall
    __asm__ volatile("mv %[val], a%[reg]" : [val] "=r"(value) : [reg] "i"(reg_number));
    800024cc:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    800024d0:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    800024d4:	fe843503          	ld	a0,-24(s0)
}
    800024d8:	0005051b          	sext.w	a0,a0
    800024dc:	01813403          	ld	s0,24(sp)
    800024e0:	02010113          	addi	sp,sp,32
    800024e4:	00008067          	ret

00000000800024e8 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    800024e8:	fe010113          	addi	sp,sp,-32
    800024ec:	00813c23          	sd	s0,24(sp)
    800024f0:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    800024f4:	00050593          	mv	a1,a0
    800024f8:	02400793          	li	a5,36
    800024fc:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)id);

    Riscv::writeARegister(0, 0x24);

    __asm__ volatile("ecall");
    80002500:	00000073          	ecall
    __asm__ volatile("mv %[val], a%[reg]" : [val] "=r"(value) : [reg] "i"(reg_number));
    80002504:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80002508:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    8000250c:	fe843503          	ld	a0,-24(s0)
}
    80002510:	0005051b          	sext.w	a0,a0
    80002514:	01813403          	ld	s0,24(sp)
    80002518:	02010113          	addi	sp,sp,32
    8000251c:	00008067          	ret

0000000080002520 <_Z10sem_wait_nP4_semj>:

int sem_wait_n(sem_t id, unsigned n)
{
    80002520:	fe010113          	addi	sp,sp,-32
    80002524:	00813c23          	sd	s0,24(sp)
    80002528:	02010413          	addi	s0,sp,32
    Riscv::writeARegister(2, (uint64)n);
    8000252c:	02059593          	slli	a1,a1,0x20
    80002530:	0205d593          	srli	a1,a1,0x20
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80002534:	00058613          	mv	a2,a1
    80002538:	00050593          	mv	a1,a0
    8000253c:	02500793          	li	a5,37
    80002540:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)id);

    Riscv::writeARegister(0, 0x25);

    __asm__ volatile("ecall");
    80002544:	00000073          	ecall
    __asm__ volatile("mv %[val], a%[reg]" : [val] "=r"(value) : [reg] "i"(reg_number));
    80002548:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    8000254c:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    80002550:	fe843503          	ld	a0,-24(s0)
}
    80002554:	0005051b          	sext.w	a0,a0
    80002558:	01813403          	ld	s0,24(sp)
    8000255c:	02010113          	addi	sp,sp,32
    80002560:	00008067          	ret

0000000080002564 <_Z12sem_signal_nP4_semj>:
int sem_signal_n(sem_t id, unsigned n)
{   
    80002564:	fe010113          	addi	sp,sp,-32
    80002568:	00813c23          	sd	s0,24(sp)
    8000256c:	02010413          	addi	s0,sp,32
    Riscv::writeARegister(2, (uint64)n);
    80002570:	02059593          	slli	a1,a1,0x20
    80002574:	0205d593          	srli	a1,a1,0x20
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80002578:	00058613          	mv	a2,a1
    8000257c:	00050593          	mv	a1,a0
    80002580:	02600793          	li	a5,38
    80002584:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)id);

    Riscv::writeARegister(0, 0x26);

    __asm__ volatile("ecall");
    80002588:	00000073          	ecall
    __asm__ volatile("mv %[val], a%[reg]" : [val] "=r"(value) : [reg] "i"(reg_number));
    8000258c:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80002590:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    80002594:	fe843503          	ld	a0,-24(s0)
}
    80002598:	0005051b          	sext.w	a0,a0
    8000259c:	01813403          	ld	s0,24(sp)
    800025a0:	02010113          	addi	sp,sp,32
    800025a4:	00008067          	ret

00000000800025a8 <_Z10time_sleepm>:
int time_sleep(time_t t)
{
    800025a8:	fe010113          	addi	sp,sp,-32
    800025ac:	00813c23          	sd	s0,24(sp)
    800025b0:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    800025b4:	00050593          	mv	a1,a0
    800025b8:	03100793          	li	a5,49
    800025bc:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)t);
    Riscv::writeARegister(0, 0x31);

    __asm__ volatile("ecall");
    800025c0:	00000073          	ecall
    __asm__ volatile("mv %[val], a%[reg]" : [val] "=r"(value) : [reg] "i"(reg_number));
    800025c4:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    800025c8:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    800025cc:	fe843503          	ld	a0,-24(s0)
}
    800025d0:	0005051b          	sext.w	a0,a0
    800025d4:	01813403          	ld	s0,24(sp)
    800025d8:	02010113          	addi	sp,sp,32
    800025dc:	00008067          	ret

00000000800025e0 <_Z4getcv>:

char getc() {
    800025e0:	fe010113          	addi	sp,sp,-32
    800025e4:	00113c23          	sd	ra,24(sp)
    800025e8:	00813823          	sd	s0,16(sp)
    800025ec:	02010413          	addi	s0,sp,32
        ensureInit();
    800025f0:	fffff097          	auipc	ra,0xfffff
    800025f4:	c58080e7          	jalr	-936(ra) # 80001248 <_ZN8_console10ensureInitEv>
     sem_wait(reinterpret_cast<sem_t>(_console::getInSem()));
    800025f8:	00009517          	auipc	a0,0x9
    800025fc:	21853503          	ld	a0,536(a0) # 8000b810 <_ZN8_console5inSemE>
    80002600:	00000097          	auipc	ra,0x0
    80002604:	eb0080e7          	jalr	-336(ra) # 800024b0 <_Z8sem_waitP4_sem>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80002608:	04100793          	li	a5,65
    8000260c:	00078513          	mv	a0,a5
    Riscv::writeARegister(0, 0x41);

    __asm__ volatile("ecall");
    80002610:	00000073          	ecall
    __asm__ volatile("mv %[val], a%[reg]" : [val] "=r"(value) : [reg] "i"(reg_number));
    80002614:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80002618:	fef43423          	sd	a5,-24(s0)
    return (char) a0;
    8000261c:	fe843503          	ld	a0,-24(s0)
}
    80002620:	0ff57513          	andi	a0,a0,255
    80002624:	01813083          	ld	ra,24(sp)
    80002628:	01013403          	ld	s0,16(sp)
    8000262c:	02010113          	addi	sp,sp,32
    80002630:	00008067          	ret

0000000080002634 <_Z4putcc>:

void putc(char c) {
    80002634:	fe010113          	addi	sp,sp,-32
    80002638:	00113c23          	sd	ra,24(sp)
    8000263c:	00813823          	sd	s0,16(sp)
    80002640:	00913423          	sd	s1,8(sp)
    80002644:	02010413          	addi	s0,sp,32
    80002648:	00050493          	mv	s1,a0
        ensureInit();
    8000264c:	fffff097          	auipc	ra,0xfffff
    80002650:	bfc080e7          	jalr	-1028(ra) # 80001248 <_ZN8_console10ensureInitEv>
    sem_wait(reinterpret_cast<sem_t>(_console::getOutSem()));
    80002654:	00009517          	auipc	a0,0x9
    80002658:	1b453503          	ld	a0,436(a0) # 8000b808 <_ZN8_console6outSemE>
    8000265c:	00000097          	auipc	ra,0x0
    80002660:	e54080e7          	jalr	-428(ra) # 800024b0 <_Z8sem_waitP4_sem>
    __asm__ volatile("mv a%[reg], %[val]" ::[reg] "i"(reg_number), [val] "r"(value));
    80002664:	00048593          	mv	a1,s1
    80002668:	04200793          	li	a5,66
    8000266c:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)c);
    Riscv::writeARegister(0, 0x42);

    __asm__ volatile("ecall");
    80002670:	00000073          	ecall

}
    80002674:	01813083          	ld	ra,24(sp)
    80002678:	01013403          	ld	s0,16(sp)
    8000267c:	00813483          	ld	s1,8(sp)
    80002680:	02010113          	addi	sp,sp,32
    80002684:	00008067          	ret

0000000080002688 <_ZN6ThreadD1Ev>:
    this->myHandle = 0;
    this->body = body;
    this->arg = arg;
}

Thread::~Thread() = default;
    80002688:	ff010113          	addi	sp,sp,-16
    8000268c:	00813423          	sd	s0,8(sp)
    80002690:	01010413          	addi	s0,sp,16
    80002694:	00007797          	auipc	a5,0x7
    80002698:	b1c78793          	addi	a5,a5,-1252 # 800091b0 <_ZTV6Thread+0x10>
    8000269c:	00f53023          	sd	a5,0(a0)
    800026a0:	00813403          	ld	s0,8(sp)
    800026a4:	01010113          	addi	sp,sp,16
    800026a8:	00008067          	ret

00000000800026ac <_ZN6Thread7wrapperEPv>:
{
    return time_sleep(t);
}

void Thread::wrapper(void * arg)
{
    800026ac:	ff010113          	addi	sp,sp,-16
    800026b0:	00113423          	sd	ra,8(sp)
    800026b4:	00813023          	sd	s0,0(sp)
    800026b8:	01010413          	addi	s0,sp,16
    Thread* t = (Thread*) arg;
    t->run();
    800026bc:	00053783          	ld	a5,0(a0)
    800026c0:	0107b783          	ld	a5,16(a5)
    800026c4:	000780e7          	jalr	a5
}
    800026c8:	00813083          	ld	ra,8(sp)
    800026cc:	00013403          	ld	s0,0(sp)
    800026d0:	01010113          	addi	sp,sp,16
    800026d4:	00008067          	ret

00000000800026d8 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init)
{
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore()
    800026d8:	fe010113          	addi	sp,sp,-32
    800026dc:	00113c23          	sd	ra,24(sp)
    800026e0:	00813823          	sd	s0,16(sp)
    800026e4:	00913423          	sd	s1,8(sp)
    800026e8:	02010413          	addi	s0,sp,32
    800026ec:	00050493          	mv	s1,a0
    800026f0:	00007797          	auipc	a5,0x7
    800026f4:	ae878793          	addi	a5,a5,-1304 # 800091d8 <_ZTV9Semaphore+0x10>
    800026f8:	00f53023          	sd	a5,0(a0)
{
    if (!myHandle) return;
    800026fc:	00853503          	ld	a0,8(a0)
    80002700:	00050863          	beqz	a0,80002710 <_ZN9SemaphoreD1Ev+0x38>
    sem_close(myHandle);
    80002704:	00000097          	auipc	ra,0x0
    80002708:	d74080e7          	jalr	-652(ra) # 80002478 <_Z9sem_closeP4_sem>
    myHandle = 0;
    8000270c:	0004b423          	sd	zero,8(s1)
}
    80002710:	01813083          	ld	ra,24(sp)
    80002714:	01013403          	ld	s0,16(sp)
    80002718:	00813483          	ld	s1,8(sp)
    8000271c:	02010113          	addi	sp,sp,32
    80002720:	00008067          	ret

0000000080002724 <_Znwm>:
void* operator new(size_t size) {
    80002724:	ff010113          	addi	sp,sp,-16
    80002728:	00113423          	sd	ra,8(sp)
    8000272c:	00813023          	sd	s0,0(sp)
    80002730:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002734:	00000097          	auipc	ra,0x0
    80002738:	ba8080e7          	jalr	-1112(ra) # 800022dc <_Z9mem_allocm>
}
    8000273c:	00813083          	ld	ra,8(sp)
    80002740:	00013403          	ld	s0,0(sp)
    80002744:	01010113          	addi	sp,sp,16
    80002748:	00008067          	ret

000000008000274c <_ZdlPv>:
void operator delete(void* ptr) {
    8000274c:	ff010113          	addi	sp,sp,-16
    80002750:	00113423          	sd	ra,8(sp)
    80002754:	00813023          	sd	s0,0(sp)
    80002758:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    8000275c:	00000097          	auipc	ra,0x0
    80002760:	bbc080e7          	jalr	-1092(ra) # 80002318 <_Z8mem_freePv>
}
    80002764:	00813083          	ld	ra,8(sp)
    80002768:	00013403          	ld	s0,0(sp)
    8000276c:	01010113          	addi	sp,sp,16
    80002770:	00008067          	ret

0000000080002774 <_ZN6ThreadD0Ev>:
Thread::~Thread() = default;
    80002774:	fe010113          	addi	sp,sp,-32
    80002778:	00113c23          	sd	ra,24(sp)
    8000277c:	00813823          	sd	s0,16(sp)
    80002780:	00913423          	sd	s1,8(sp)
    80002784:	02010413          	addi	s0,sp,32
    80002788:	00050493          	mv	s1,a0
    8000278c:	00000097          	auipc	ra,0x0
    80002790:	efc080e7          	jalr	-260(ra) # 80002688 <_ZN6ThreadD1Ev>
    80002794:	00048513          	mv	a0,s1
    80002798:	00000097          	auipc	ra,0x0
    8000279c:	fb4080e7          	jalr	-76(ra) # 8000274c <_ZdlPv>
    800027a0:	01813083          	ld	ra,24(sp)
    800027a4:	01013403          	ld	s0,16(sp)
    800027a8:	00813483          	ld	s1,8(sp)
    800027ac:	02010113          	addi	sp,sp,32
    800027b0:	00008067          	ret

00000000800027b4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore()
    800027b4:	fe010113          	addi	sp,sp,-32
    800027b8:	00113c23          	sd	ra,24(sp)
    800027bc:	00813823          	sd	s0,16(sp)
    800027c0:	00913423          	sd	s1,8(sp)
    800027c4:	02010413          	addi	s0,sp,32
    800027c8:	00050493          	mv	s1,a0
}
    800027cc:	00000097          	auipc	ra,0x0
    800027d0:	f0c080e7          	jalr	-244(ra) # 800026d8 <_ZN9SemaphoreD1Ev>
    800027d4:	00048513          	mv	a0,s1
    800027d8:	00000097          	auipc	ra,0x0
    800027dc:	f74080e7          	jalr	-140(ra) # 8000274c <_ZdlPv>
    800027e0:	01813083          	ld	ra,24(sp)
    800027e4:	01013403          	ld	s0,16(sp)
    800027e8:	00813483          	ld	s1,8(sp)
    800027ec:	02010113          	addi	sp,sp,32
    800027f0:	00008067          	ret

00000000800027f4 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg)
    800027f4:	ff010113          	addi	sp,sp,-16
    800027f8:	00813423          	sd	s0,8(sp)
    800027fc:	01010413          	addi	s0,sp,16
    80002800:	00007797          	auipc	a5,0x7
    80002804:	9b078793          	addi	a5,a5,-1616 # 800091b0 <_ZTV6Thread+0x10>
    80002808:	00f53023          	sd	a5,0(a0)
    this->myHandle = 0;
    8000280c:	00053423          	sd	zero,8(a0)
    this->body = body;
    80002810:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    80002814:	00c53c23          	sd	a2,24(a0)
}
    80002818:	00813403          	ld	s0,8(sp)
    8000281c:	01010113          	addi	sp,sp,16
    80002820:	00008067          	ret

0000000080002824 <_ZN6Thread5startEv>:
{
    80002824:	ff010113          	addi	sp,sp,-16
    80002828:	00113423          	sd	ra,8(sp)
    8000282c:	00813023          	sd	s0,0(sp)
    80002830:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, body, arg);
    80002834:	01853603          	ld	a2,24(a0)
    80002838:	01053583          	ld	a1,16(a0)
    8000283c:	00850513          	addi	a0,a0,8
    80002840:	00000097          	auipc	ra,0x0
    80002844:	b10080e7          	jalr	-1264(ra) # 80002350 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80002848:	00813083          	ld	ra,8(sp)
    8000284c:	00013403          	ld	s0,0(sp)
    80002850:	01010113          	addi	sp,sp,16
    80002854:	00008067          	ret

0000000080002858 <_ZN6Thread8dispatchEv>:
{
    80002858:	ff010113          	addi	sp,sp,-16
    8000285c:	00113423          	sd	ra,8(sp)
    80002860:	00813023          	sd	s0,0(sp)
    80002864:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002868:	00000097          	auipc	ra,0x0
    8000286c:	b74080e7          	jalr	-1164(ra) # 800023dc <_Z15thread_dispatchv>
}
    80002870:	00813083          	ld	ra,8(sp)
    80002874:	00013403          	ld	s0,0(sp)
    80002878:	01010113          	addi	sp,sp,16
    8000287c:	00008067          	ret

0000000080002880 <_ZN6Thread5sleepEm>:
{
    80002880:	ff010113          	addi	sp,sp,-16
    80002884:	00113423          	sd	ra,8(sp)
    80002888:	00813023          	sd	s0,0(sp)
    8000288c:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    80002890:	00000097          	auipc	ra,0x0
    80002894:	d18080e7          	jalr	-744(ra) # 800025a8 <_Z10time_sleepm>
}
    80002898:	00813083          	ld	ra,8(sp)
    8000289c:	00013403          	ld	s0,0(sp)
    800028a0:	01010113          	addi	sp,sp,16
    800028a4:	00008067          	ret

00000000800028a8 <_ZN14PeriodicThread3runEv>:
{
    this->period = period;
}

void PeriodicThread::run()
{
    800028a8:	fe010113          	addi	sp,sp,-32
    800028ac:	00113c23          	sd	ra,24(sp)
    800028b0:	00813823          	sd	s0,16(sp)
    800028b4:	00913423          	sd	s1,8(sp)
    800028b8:	02010413          	addi	s0,sp,32
    800028bc:	00050493          	mv	s1,a0
    800028c0:	01c0006f          	j	800028dc <_ZN14PeriodicThread3runEv+0x34>
    while(this->period != (time_t) -1){
        Thread::sleep(period);
    800028c4:	00000097          	auipc	ra,0x0
    800028c8:	fbc080e7          	jalr	-68(ra) # 80002880 <_ZN6Thread5sleepEm>
        periodicActivation();
    800028cc:	0004b783          	ld	a5,0(s1)
    800028d0:	0187b783          	ld	a5,24(a5)
    800028d4:	00048513          	mv	a0,s1
    800028d8:	000780e7          	jalr	a5
    while(this->period != (time_t) -1){
    800028dc:	0204b503          	ld	a0,32(s1)
    800028e0:	fff00793          	li	a5,-1
    800028e4:	fef510e3          	bne	a0,a5,800028c4 <_ZN14PeriodicThread3runEv+0x1c>
    }
}
    800028e8:	01813083          	ld	ra,24(sp)
    800028ec:	01013403          	ld	s0,16(sp)
    800028f0:	00813483          	ld	s1,8(sp)
    800028f4:	02010113          	addi	sp,sp,32
    800028f8:	00008067          	ret

00000000800028fc <_ZN6ThreadC1Ev>:
Thread::Thread()
    800028fc:	ff010113          	addi	sp,sp,-16
    80002900:	00813423          	sd	s0,8(sp)
    80002904:	01010413          	addi	s0,sp,16
    80002908:	00007797          	auipc	a5,0x7
    8000290c:	8a878793          	addi	a5,a5,-1880 # 800091b0 <_ZTV6Thread+0x10>
    80002910:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80002914:	00053423          	sd	zero,8(a0)
    body = wrapper;
    80002918:	00000797          	auipc	a5,0x0
    8000291c:	d9478793          	addi	a5,a5,-620 # 800026ac <_ZN6Thread7wrapperEPv>
    80002920:	00f53823          	sd	a5,16(a0)
    arg = this;
    80002924:	00a53c23          	sd	a0,24(a0)
}
    80002928:	00813403          	ld	s0,8(sp)
    8000292c:	01010113          	addi	sp,sp,16
    80002930:	00008067          	ret

0000000080002934 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init)
    80002934:	ff010113          	addi	sp,sp,-16
    80002938:	00113423          	sd	ra,8(sp)
    8000293c:	00813023          	sd	s0,0(sp)
    80002940:	01010413          	addi	s0,sp,16
    80002944:	00007797          	auipc	a5,0x7
    80002948:	89478793          	addi	a5,a5,-1900 # 800091d8 <_ZTV9Semaphore+0x10>
    8000294c:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80002950:	00850513          	addi	a0,a0,8
    80002954:	00000097          	auipc	ra,0x0
    80002958:	ae0080e7          	jalr	-1312(ra) # 80002434 <_Z8sem_openPP4_semj>
}
    8000295c:	00813083          	ld	ra,8(sp)
    80002960:	00013403          	ld	s0,0(sp)
    80002964:	01010113          	addi	sp,sp,16
    80002968:	00008067          	ret

000000008000296c <_ZN9Semaphore4waitEv>:
{
    8000296c:	ff010113          	addi	sp,sp,-16
    80002970:	00113423          	sd	ra,8(sp)
    80002974:	00813023          	sd	s0,0(sp)
    80002978:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000297c:	00853503          	ld	a0,8(a0)
    80002980:	00000097          	auipc	ra,0x0
    80002984:	b30080e7          	jalr	-1232(ra) # 800024b0 <_Z8sem_waitP4_sem>
}
    80002988:	00813083          	ld	ra,8(sp)
    8000298c:	00013403          	ld	s0,0(sp)
    80002990:	01010113          	addi	sp,sp,16
    80002994:	00008067          	ret

0000000080002998 <_ZN9Semaphore6signalEv>:
{
    80002998:	ff010113          	addi	sp,sp,-16
    8000299c:	00113423          	sd	ra,8(sp)
    800029a0:	00813023          	sd	s0,0(sp)
    800029a4:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800029a8:	00853503          	ld	a0,8(a0)
    800029ac:	00000097          	auipc	ra,0x0
    800029b0:	b3c080e7          	jalr	-1220(ra) # 800024e8 <_Z10sem_signalP4_sem>
}
    800029b4:	00813083          	ld	ra,8(sp)
    800029b8:	00013403          	ld	s0,0(sp)
    800029bc:	01010113          	addi	sp,sp,16
    800029c0:	00008067          	ret

00000000800029c4 <_ZN14PeriodicThread9terminateEv>:
{
    800029c4:	ff010113          	addi	sp,sp,-16
    800029c8:	00813423          	sd	s0,8(sp)
    800029cc:	01010413          	addi	s0,sp,16
    this->period = (time_t) -1;
    800029d0:	fff00793          	li	a5,-1
    800029d4:	02f53023          	sd	a5,32(a0)
}
    800029d8:	00813403          	ld	s0,8(sp)
    800029dc:	01010113          	addi	sp,sp,16
    800029e0:	00008067          	ret

00000000800029e4 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread()
    800029e4:	fe010113          	addi	sp,sp,-32
    800029e8:	00113c23          	sd	ra,24(sp)
    800029ec:	00813823          	sd	s0,16(sp)
    800029f0:	00913423          	sd	s1,8(sp)
    800029f4:	01213023          	sd	s2,0(sp)
    800029f8:	02010413          	addi	s0,sp,32
    800029fc:	00050493          	mv	s1,a0
    80002a00:	00058913          	mv	s2,a1
    80002a04:	00000097          	auipc	ra,0x0
    80002a08:	ef8080e7          	jalr	-264(ra) # 800028fc <_ZN6ThreadC1Ev>
    80002a0c:	00006797          	auipc	a5,0x6
    80002a10:	7ec78793          	addi	a5,a5,2028 # 800091f8 <_ZTV14PeriodicThread+0x10>
    80002a14:	00f4b023          	sd	a5,0(s1)
    this->period = period;
    80002a18:	0324b023          	sd	s2,32(s1)
}
    80002a1c:	01813083          	ld	ra,24(sp)
    80002a20:	01013403          	ld	s0,16(sp)
    80002a24:	00813483          	ld	s1,8(sp)
    80002a28:	00013903          	ld	s2,0(sp)
    80002a2c:	02010113          	addi	sp,sp,32
    80002a30:	00008067          	ret

0000000080002a34 <_ZN7Console4getcEv>:

char Console::getc()
{
    80002a34:	ff010113          	addi	sp,sp,-16
    80002a38:	00113423          	sd	ra,8(sp)
    80002a3c:	00813023          	sd	s0,0(sp)
    80002a40:	01010413          	addi	s0,sp,16
    return ::getc();
    80002a44:	00000097          	auipc	ra,0x0
    80002a48:	b9c080e7          	jalr	-1124(ra) # 800025e0 <_Z4getcv>
}
    80002a4c:	00813083          	ld	ra,8(sp)
    80002a50:	00013403          	ld	s0,0(sp)
    80002a54:	01010113          	addi	sp,sp,16
    80002a58:	00008067          	ret

0000000080002a5c <_ZN7Console4putcEc>:

void Console::putc(char c)
{
    80002a5c:	ff010113          	addi	sp,sp,-16
    80002a60:	00113423          	sd	ra,8(sp)
    80002a64:	00813023          	sd	s0,0(sp)
    80002a68:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002a6c:	00000097          	auipc	ra,0x0
    80002a70:	bc8080e7          	jalr	-1080(ra) # 80002634 <_Z4putcc>
}
    80002a74:	00813083          	ld	ra,8(sp)
    80002a78:	00013403          	ld	s0,0(sp)
    80002a7c:	01010113          	addi	sp,sp,16
    80002a80:	00008067          	ret

0000000080002a84 <_ZN6Thread3runEv>:
    static void dispatch();
    static int sleep(time_t);

protected:
    Thread();
    virtual void run() {}
    80002a84:	ff010113          	addi	sp,sp,-16
    80002a88:	00813423          	sd	s0,8(sp)
    80002a8c:	01010413          	addi	s0,sp,16
    80002a90:	00813403          	ld	s0,8(sp)
    80002a94:	01010113          	addi	sp,sp,16
    80002a98:	00008067          	ret

0000000080002a9c <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void terminate();

protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    80002a9c:	ff010113          	addi	sp,sp,-16
    80002aa0:	00813423          	sd	s0,8(sp)
    80002aa4:	01010413          	addi	s0,sp,16
    80002aa8:	00813403          	ld	s0,8(sp)
    80002aac:	01010113          	addi	sp,sp,16
    80002ab0:	00008067          	ret

0000000080002ab4 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    80002ab4:	ff010113          	addi	sp,sp,-16
    80002ab8:	00113423          	sd	ra,8(sp)
    80002abc:	00813023          	sd	s0,0(sp)
    80002ac0:	01010413          	addi	s0,sp,16
    80002ac4:	00006797          	auipc	a5,0x6
    80002ac8:	73478793          	addi	a5,a5,1844 # 800091f8 <_ZTV14PeriodicThread+0x10>
    80002acc:	00f53023          	sd	a5,0(a0)
    80002ad0:	00000097          	auipc	ra,0x0
    80002ad4:	bb8080e7          	jalr	-1096(ra) # 80002688 <_ZN6ThreadD1Ev>
    80002ad8:	00813083          	ld	ra,8(sp)
    80002adc:	00013403          	ld	s0,0(sp)
    80002ae0:	01010113          	addi	sp,sp,16
    80002ae4:	00008067          	ret

0000000080002ae8 <_ZN14PeriodicThreadD0Ev>:
    80002ae8:	fe010113          	addi	sp,sp,-32
    80002aec:	00113c23          	sd	ra,24(sp)
    80002af0:	00813823          	sd	s0,16(sp)
    80002af4:	00913423          	sd	s1,8(sp)
    80002af8:	02010413          	addi	s0,sp,32
    80002afc:	00050493          	mv	s1,a0
    80002b00:	00006797          	auipc	a5,0x6
    80002b04:	6f878793          	addi	a5,a5,1784 # 800091f8 <_ZTV14PeriodicThread+0x10>
    80002b08:	00f53023          	sd	a5,0(a0)
    80002b0c:	00000097          	auipc	ra,0x0
    80002b10:	b7c080e7          	jalr	-1156(ra) # 80002688 <_ZN6ThreadD1Ev>
    80002b14:	00048513          	mv	a0,s1
    80002b18:	00000097          	auipc	ra,0x0
    80002b1c:	c34080e7          	jalr	-972(ra) # 8000274c <_ZdlPv>
    80002b20:	01813083          	ld	ra,24(sp)
    80002b24:	01013403          	ld	s0,16(sp)
    80002b28:	00813483          	ld	s1,8(sp)
    80002b2c:	02010113          	addi	sp,sp,32
    80002b30:	00008067          	ret

0000000080002b34 <_ZN7_thread13threadWrapperEv>:
        context.sp = 0;
    }
}

void _thread::threadWrapper()
{
    80002b34:	ff010113          	addi	sp,sp,-16
    80002b38:	00113423          	sd	ra,8(sp)
    80002b3c:	00813023          	sd	s0,0(sp)
    80002b40:	01010413          	addi	s0,sp,16

    Riscv::popSppSpie();
    80002b44:	fffff097          	auipc	ra,0xfffff
    80002b48:	e3c080e7          	jalr	-452(ra) # 80001980 <_ZN5Riscv10popSppSpieEv>
    if (running->body)
    80002b4c:	00009717          	auipc	a4,0x9
    80002b50:	d0c73703          	ld	a4,-756(a4) # 8000b858 <_ZN7_thread7runningE>
    80002b54:	01073783          	ld	a5,16(a4)
    80002b58:	00078663          	beqz	a5,80002b64 <_ZN7_thread13threadWrapperEv+0x30>
        running->body(running->args);
    80002b5c:	01873503          	ld	a0,24(a4)
    80002b60:	000780e7          	jalr	a5
	void setFinished(bool finished) { _thread::finished = finished; };
    80002b64:	00009797          	auipc	a5,0x9
    80002b68:	cf47b783          	ld	a5,-780(a5) # 8000b858 <_ZN7_thread7runningE>
    80002b6c:	00100713          	li	a4,1
    80002b70:	04e780a3          	sb	a4,65(a5)

    running->setFinished(true);

    thread_dispatch();
    80002b74:	00000097          	auipc	ra,0x0
    80002b78:	868080e7          	jalr	-1944(ra) # 800023dc <_Z15thread_dispatchv>
}
    80002b7c:	00813083          	ld	ra,8(sp)
    80002b80:	00013403          	ld	s0,0(sp)
    80002b84:	01010113          	addi	sp,sp,16
    80002b88:	00008067          	ret

0000000080002b8c <_ZN7_thread8dispatchEv>:
{
    80002b8c:	fe010113          	addi	sp,sp,-32
    80002b90:	00113c23          	sd	ra,24(sp)
    80002b94:	00813823          	sd	s0,16(sp)
    80002b98:	00913423          	sd	s1,8(sp)
    80002b9c:	02010413          	addi	s0,sp,32
    _thread *old = running;
    80002ba0:	00009497          	auipc	s1,0x9
    80002ba4:	cb84b483          	ld	s1,-840(s1) # 8000b858 <_ZN7_thread7runningE>
    if (old && !old->finished && old->isReady)
    80002ba8:	04048863          	beqz	s1,80002bf8 <_ZN7_thread8dispatchEv+0x6c>
    80002bac:	0414c783          	lbu	a5,65(s1)
    80002bb0:	04079463          	bnez	a5,80002bf8 <_ZN7_thread8dispatchEv+0x6c>
    80002bb4:	0404c783          	lbu	a5,64(s1)
    80002bb8:	04078063          	beqz	a5,80002bf8 <_ZN7_thread8dispatchEv+0x6c>
    80002bbc:	00009797          	auipc	a5,0x9
    80002bc0:	c847c783          	lbu	a5,-892(a5) # 8000b840 <_ZGVZN9Scheduler8instanceEvE8instance>
    80002bc4:	02079063          	bnez	a5,80002be4 <_ZN7_thread8dispatchEv+0x58>
    Scheduler() : head(nullptr), tail(nullptr) {};
    80002bc8:	00009797          	auipc	a5,0x9
    80002bcc:	d0878793          	addi	a5,a5,-760 # 8000b8d0 <_ZZN9Scheduler8instanceEvE8instance>
    80002bd0:	0007b023          	sd	zero,0(a5)
    80002bd4:	0007b423          	sd	zero,8(a5)
        static Scheduler instance;
    80002bd8:	00100793          	li	a5,1
    80002bdc:	00009717          	auipc	a4,0x9
    80002be0:	c6f70223          	sb	a5,-924(a4) # 8000b840 <_ZGVZN9Scheduler8instanceEvE8instance>
        Scheduler::instance().put(old);
    80002be4:	00048593          	mv	a1,s1
    80002be8:	00009517          	auipc	a0,0x9
    80002bec:	ce850513          	addi	a0,a0,-792 # 8000b8d0 <_ZZN9Scheduler8instanceEvE8instance>
    80002bf0:	fffff097          	auipc	ra,0xfffff
    80002bf4:	35c080e7          	jalr	860(ra) # 80001f4c <_ZN9Scheduler3putEP7_thread>
    80002bf8:	00009797          	auipc	a5,0x9
    80002bfc:	c487c783          	lbu	a5,-952(a5) # 8000b840 <_ZGVZN9Scheduler8instanceEvE8instance>
    80002c00:	02079063          	bnez	a5,80002c20 <_ZN7_thread8dispatchEv+0x94>
    Scheduler() : head(nullptr), tail(nullptr) {};
    80002c04:	00009797          	auipc	a5,0x9
    80002c08:	ccc78793          	addi	a5,a5,-820 # 8000b8d0 <_ZZN9Scheduler8instanceEvE8instance>
    80002c0c:	0007b023          	sd	zero,0(a5)
    80002c10:	0007b423          	sd	zero,8(a5)
        static Scheduler instance;
    80002c14:	00100793          	li	a5,1
    80002c18:	00009717          	auipc	a4,0x9
    80002c1c:	c2f70423          	sb	a5,-984(a4) # 8000b840 <_ZGVZN9Scheduler8instanceEvE8instance>
    running = Scheduler::instance().get();
    80002c20:	00009517          	auipc	a0,0x9
    80002c24:	cb050513          	addi	a0,a0,-848 # 8000b8d0 <_ZZN9Scheduler8instanceEvE8instance>
    80002c28:	fffff097          	auipc	ra,0xfffff
    80002c2c:	360080e7          	jalr	864(ra) # 80001f88 <_ZN9Scheduler3getEv>
    80002c30:	00009797          	auipc	a5,0x9
    80002c34:	c2a7b423          	sd	a0,-984(a5) # 8000b858 <_ZN7_thread7runningE>
    _thread::timeSliceCounter = 0;
    80002c38:	00009797          	auipc	a5,0x9
    80002c3c:	c007bc23          	sd	zero,-1000(a5) # 8000b850 <_ZN7_thread16timeSliceCounterE>
    switchContext(&old->context, &running->context);
    80002c40:	02850593          	addi	a1,a0,40
    80002c44:	02848513          	addi	a0,s1,40
    80002c48:	ffffe097          	auipc	ra,0xffffe
    80002c4c:	4c8080e7          	jalr	1224(ra) # 80001110 <_ZN7_thread13switchContextEPNS_7ContextES1_>
}
    80002c50:	01813083          	ld	ra,24(sp)
    80002c54:	01013403          	ld	s0,16(sp)
    80002c58:	00813483          	ld	s1,8(sp)
    80002c5c:	02010113          	addi	sp,sp,32
    80002c60:	00008067          	ret

0000000080002c64 <_ZN7_thread10time_sleepEm>:
    if (n == 0)
    80002c64:	08058663          	beqz	a1,80002cf0 <_ZN7_thread10time_sleepEm+0x8c>
{
    80002c68:	ff010113          	addi	sp,sp,-16
    80002c6c:	00113423          	sd	ra,8(sp)
    80002c70:	00813023          	sd	s0,0(sp)
    80002c74:	01010413          	addi	s0,sp,16
    _thread *curr = sleepingHead;
    80002c78:	00009797          	auipc	a5,0x9
    80002c7c:	bd07b783          	ld	a5,-1072(a5) # 8000b848 <_ZN7_thread12sleepingHeadE>
    _thread *prev = nullptr;
    80002c80:	00000693          	li	a3,0
    while (curr && n >= curr->timeSleeping)
    80002c84:	00078e63          	beqz	a5,80002ca0 <_ZN7_thread10time_sleepEm+0x3c>
    80002c88:	0507b703          	ld	a4,80(a5)
    80002c8c:	00e5ea63          	bltu	a1,a4,80002ca0 <_ZN7_thread10time_sleepEm+0x3c>
        n -= curr->timeSleeping;
    80002c90:	40e585b3          	sub	a1,a1,a4
        prev = curr;
    80002c94:	00078693          	mv	a3,a5
        curr = curr->waitnext;
    80002c98:	0087b783          	ld	a5,8(a5)
    while (curr && n >= curr->timeSleeping)
    80002c9c:	fe9ff06f          	j	80002c84 <_ZN7_thread10time_sleepEm+0x20>
    _thread::running->timeSleeping = n;
    80002ca0:	00009717          	auipc	a4,0x9
    80002ca4:	bb873703          	ld	a4,-1096(a4) # 8000b858 <_ZN7_thread7runningE>
    80002ca8:	04b73823          	sd	a1,80(a4)
    _thread::running->waitnext = curr;
    80002cac:	00f73423          	sd	a5,8(a4)
    if (!prev)
    80002cb0:	02068a63          	beqz	a3,80002ce4 <_ZN7_thread10time_sleepEm+0x80>
        prev->waitnext = _thread::running;
    80002cb4:	00e6b423          	sd	a4,8(a3)
    if (curr)
    80002cb8:	00078863          	beqz	a5,80002cc8 <_ZN7_thread10time_sleepEm+0x64>
        curr->timeSleeping -= n;
    80002cbc:	0507b683          	ld	a3,80(a5)
    80002cc0:	40b685b3          	sub	a1,a3,a1
    80002cc4:	04b7b823          	sd	a1,80(a5)
    _thread::running->isReady = false;
    80002cc8:	04070023          	sb	zero,64(a4)
    _thread::dispatch();
    80002ccc:	00000097          	auipc	ra,0x0
    80002cd0:	ec0080e7          	jalr	-320(ra) # 80002b8c <_ZN7_thread8dispatchEv>
}
    80002cd4:	00813083          	ld	ra,8(sp)
    80002cd8:	00013403          	ld	s0,0(sp)
    80002cdc:	01010113          	addi	sp,sp,16
    80002ce0:	00008067          	ret
        sleepingHead = _thread::running;
    80002ce4:	00009697          	auipc	a3,0x9
    80002ce8:	b6e6b223          	sd	a4,-1180(a3) # 8000b848 <_ZN7_thread12sleepingHeadE>
    80002cec:	fcdff06f          	j	80002cb8 <_ZN7_thread10time_sleepEm+0x54>
    80002cf0:	00008067          	ret

0000000080002cf4 <_ZN7_threadC1EPFvPvES0_S0_m>:
_thread::_thread(Body body, void *args, void *stack_space, uint64 time) : next(nullptr), waitnext(nullptr), body(body), args(args), stack((uint64 *)stack_space),
    80002cf4:	ff010113          	addi	sp,sp,-16
    80002cf8:	00813423          	sd	s0,8(sp)
    80002cfc:	01010413          	addi	s0,sp,16
                                                                          timeSlice(time), isReady(true), finished(false), semStatus(0), timeSleeping(0)
    80002d00:	00053023          	sd	zero,0(a0)
    80002d04:	00053423          	sd	zero,8(a0)
    80002d08:	00b53823          	sd	a1,16(a0)
    80002d0c:	00c53c23          	sd	a2,24(a0)
    80002d10:	02d53023          	sd	a3,32(a0)
    80002d14:	02e53c23          	sd	a4,56(a0)
    80002d18:	00100793          	li	a5,1
    80002d1c:	04f50023          	sb	a5,64(a0)
    80002d20:	040500a3          	sb	zero,65(a0)
    80002d24:	04052223          	sw	zero,68(a0)
    80002d28:	04053823          	sd	zero,80(a0)
    if (body != nullptr)
    80002d2c:	02058663          	beqz	a1,80002d58 <_ZN7_threadC1EPFvPvES0_S0_m+0x64>
        context.ra = (uint64)&threadWrapper;
    80002d30:	00000797          	auipc	a5,0x0
    80002d34:	e0478793          	addi	a5,a5,-508 # 80002b34 <_ZN7_thread13threadWrapperEv>
    80002d38:	02f53423          	sd	a5,40(a0)
        context.sp = ((uint64)stack_space + DEFAULT_STACK_SIZE) & ~0xFUL;
    80002d3c:	000017b7          	lui	a5,0x1
    80002d40:	00f686b3          	add	a3,a3,a5
    80002d44:	ff06f693          	andi	a3,a3,-16
    80002d48:	02d53823          	sd	a3,48(a0)
}
    80002d4c:	00813403          	ld	s0,8(sp)
    80002d50:	01010113          	addi	sp,sp,16
    80002d54:	00008067          	ret
        context.ra = 0;
    80002d58:	02053423          	sd	zero,40(a0)
        context.sp = 0;
    80002d5c:	02053823          	sd	zero,48(a0)
}
    80002d60:	fedff06f          	j	80002d4c <_ZN7_threadC1EPFvPvES0_S0_m+0x58>

0000000080002d64 <_ZN7_thread12createThreadEPFvPvES0_S0_>:
{
    80002d64:	fd010113          	addi	sp,sp,-48
    80002d68:	02113423          	sd	ra,40(sp)
    80002d6c:	02813023          	sd	s0,32(sp)
    80002d70:	00913c23          	sd	s1,24(sp)
    80002d74:	01213823          	sd	s2,16(sp)
    80002d78:	01313423          	sd	s3,8(sp)
    80002d7c:	01413023          	sd	s4,0(sp)
    80002d80:	03010413          	addi	s0,sp,48
    80002d84:	00050913          	mv	s2,a0
    80002d88:	00058993          	mv	s3,a1
    80002d8c:	00060a13          	mv	s4,a2
		void *ptr = MemoryAllocator::kmalloc(size);
    80002d90:	05800513          	li	a0,88
    80002d94:	fffff097          	auipc	ra,0xfffff
    80002d98:	8ac080e7          	jalr	-1876(ra) # 80001640 <_ZN15MemoryAllocator7kmallocEm>
    80002d9c:	00050493          	mv	s1,a0
    return new _thread(body, args, stack, DEFAULT_TIME_SLICE);
    80002da0:	00200713          	li	a4,2
    80002da4:	000a0693          	mv	a3,s4
    80002da8:	00098613          	mv	a2,s3
    80002dac:	00090593          	mv	a1,s2
    80002db0:	00000097          	auipc	ra,0x0
    80002db4:	f44080e7          	jalr	-188(ra) # 80002cf4 <_ZN7_threadC1EPFvPvES0_S0_m>
}
    80002db8:	00048513          	mv	a0,s1
    80002dbc:	02813083          	ld	ra,40(sp)
    80002dc0:	02013403          	ld	s0,32(sp)
    80002dc4:	01813483          	ld	s1,24(sp)
    80002dc8:	01013903          	ld	s2,16(sp)
    80002dcc:	00813983          	ld	s3,8(sp)
    80002dd0:	00013a03          	ld	s4,0(sp)
    80002dd4:	03010113          	addi	sp,sp,48
    80002dd8:	00008067          	ret

0000000080002ddc <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002ddc:	fe010113          	addi	sp,sp,-32
    80002de0:	00113c23          	sd	ra,24(sp)
    80002de4:	00813823          	sd	s0,16(sp)
    80002de8:	00913423          	sd	s1,8(sp)
    80002dec:	01213023          	sd	s2,0(sp)
    80002df0:	02010413          	addi	s0,sp,32
    80002df4:	00050493          	mv	s1,a0
    80002df8:	00058913          	mv	s2,a1
    80002dfc:	0015879b          	addiw	a5,a1,1
    80002e00:	0007851b          	sext.w	a0,a5
    80002e04:	00f4a023          	sw	a5,0(s1)
    80002e08:	0004a823          	sw	zero,16(s1)
    80002e0c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002e10:	00251513          	slli	a0,a0,0x2
    80002e14:	fffff097          	auipc	ra,0xfffff
    80002e18:	4c8080e7          	jalr	1224(ra) # 800022dc <_Z9mem_allocm>
    80002e1c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80002e20:	00000593          	li	a1,0
    80002e24:	02048513          	addi	a0,s1,32
    80002e28:	fffff097          	auipc	ra,0xfffff
    80002e2c:	60c080e7          	jalr	1548(ra) # 80002434 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80002e30:	00090593          	mv	a1,s2
    80002e34:	01848513          	addi	a0,s1,24
    80002e38:	fffff097          	auipc	ra,0xfffff
    80002e3c:	5fc080e7          	jalr	1532(ra) # 80002434 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80002e40:	00100593          	li	a1,1
    80002e44:	02848513          	addi	a0,s1,40
    80002e48:	fffff097          	auipc	ra,0xfffff
    80002e4c:	5ec080e7          	jalr	1516(ra) # 80002434 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80002e50:	00100593          	li	a1,1
    80002e54:	03048513          	addi	a0,s1,48
    80002e58:	fffff097          	auipc	ra,0xfffff
    80002e5c:	5dc080e7          	jalr	1500(ra) # 80002434 <_Z8sem_openPP4_semj>
}
    80002e60:	01813083          	ld	ra,24(sp)
    80002e64:	01013403          	ld	s0,16(sp)
    80002e68:	00813483          	ld	s1,8(sp)
    80002e6c:	00013903          	ld	s2,0(sp)
    80002e70:	02010113          	addi	sp,sp,32
    80002e74:	00008067          	ret

0000000080002e78 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80002e78:	fe010113          	addi	sp,sp,-32
    80002e7c:	00113c23          	sd	ra,24(sp)
    80002e80:	00813823          	sd	s0,16(sp)
    80002e84:	00913423          	sd	s1,8(sp)
    80002e88:	01213023          	sd	s2,0(sp)
    80002e8c:	02010413          	addi	s0,sp,32
    80002e90:	00050493          	mv	s1,a0
    80002e94:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80002e98:	01853503          	ld	a0,24(a0)
    80002e9c:	fffff097          	auipc	ra,0xfffff
    80002ea0:	614080e7          	jalr	1556(ra) # 800024b0 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80002ea4:	0304b503          	ld	a0,48(s1)
    80002ea8:	fffff097          	auipc	ra,0xfffff
    80002eac:	608080e7          	jalr	1544(ra) # 800024b0 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80002eb0:	0084b783          	ld	a5,8(s1)
    80002eb4:	0144a703          	lw	a4,20(s1)
    80002eb8:	00271713          	slli	a4,a4,0x2
    80002ebc:	00e787b3          	add	a5,a5,a4
    80002ec0:	0127a023          	sw	s2,0(a5) # 1000 <_entry-0x7ffff000>
    tail = (tail + 1) % cap;
    80002ec4:	0144a783          	lw	a5,20(s1)
    80002ec8:	0017879b          	addiw	a5,a5,1
    80002ecc:	0004a703          	lw	a4,0(s1)
    80002ed0:	02e7e7bb          	remw	a5,a5,a4
    80002ed4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80002ed8:	0304b503          	ld	a0,48(s1)
    80002edc:	fffff097          	auipc	ra,0xfffff
    80002ee0:	60c080e7          	jalr	1548(ra) # 800024e8 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80002ee4:	0204b503          	ld	a0,32(s1)
    80002ee8:	fffff097          	auipc	ra,0xfffff
    80002eec:	600080e7          	jalr	1536(ra) # 800024e8 <_Z10sem_signalP4_sem>

}
    80002ef0:	01813083          	ld	ra,24(sp)
    80002ef4:	01013403          	ld	s0,16(sp)
    80002ef8:	00813483          	ld	s1,8(sp)
    80002efc:	00013903          	ld	s2,0(sp)
    80002f00:	02010113          	addi	sp,sp,32
    80002f04:	00008067          	ret

0000000080002f08 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80002f08:	fe010113          	addi	sp,sp,-32
    80002f0c:	00113c23          	sd	ra,24(sp)
    80002f10:	00813823          	sd	s0,16(sp)
    80002f14:	00913423          	sd	s1,8(sp)
    80002f18:	01213023          	sd	s2,0(sp)
    80002f1c:	02010413          	addi	s0,sp,32
    80002f20:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80002f24:	02053503          	ld	a0,32(a0)
    80002f28:	fffff097          	auipc	ra,0xfffff
    80002f2c:	588080e7          	jalr	1416(ra) # 800024b0 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80002f30:	0284b503          	ld	a0,40(s1)
    80002f34:	fffff097          	auipc	ra,0xfffff
    80002f38:	57c080e7          	jalr	1404(ra) # 800024b0 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80002f3c:	0084b703          	ld	a4,8(s1)
    80002f40:	0104a783          	lw	a5,16(s1)
    80002f44:	00279693          	slli	a3,a5,0x2
    80002f48:	00d70733          	add	a4,a4,a3
    80002f4c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002f50:	0017879b          	addiw	a5,a5,1
    80002f54:	0004a703          	lw	a4,0(s1)
    80002f58:	02e7e7bb          	remw	a5,a5,a4
    80002f5c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80002f60:	0284b503          	ld	a0,40(s1)
    80002f64:	fffff097          	auipc	ra,0xfffff
    80002f68:	584080e7          	jalr	1412(ra) # 800024e8 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80002f6c:	0184b503          	ld	a0,24(s1)
    80002f70:	fffff097          	auipc	ra,0xfffff
    80002f74:	578080e7          	jalr	1400(ra) # 800024e8 <_Z10sem_signalP4_sem>

    return ret;
}
    80002f78:	00090513          	mv	a0,s2
    80002f7c:	01813083          	ld	ra,24(sp)
    80002f80:	01013403          	ld	s0,16(sp)
    80002f84:	00813483          	ld	s1,8(sp)
    80002f88:	00013903          	ld	s2,0(sp)
    80002f8c:	02010113          	addi	sp,sp,32
    80002f90:	00008067          	ret

0000000080002f94 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80002f94:	fe010113          	addi	sp,sp,-32
    80002f98:	00113c23          	sd	ra,24(sp)
    80002f9c:	00813823          	sd	s0,16(sp)
    80002fa0:	00913423          	sd	s1,8(sp)
    80002fa4:	01213023          	sd	s2,0(sp)
    80002fa8:	02010413          	addi	s0,sp,32
    80002fac:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80002fb0:	02853503          	ld	a0,40(a0)
    80002fb4:	fffff097          	auipc	ra,0xfffff
    80002fb8:	4fc080e7          	jalr	1276(ra) # 800024b0 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80002fbc:	0304b503          	ld	a0,48(s1)
    80002fc0:	fffff097          	auipc	ra,0xfffff
    80002fc4:	4f0080e7          	jalr	1264(ra) # 800024b0 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80002fc8:	0144a783          	lw	a5,20(s1)
    80002fcc:	0104a903          	lw	s2,16(s1)
    80002fd0:	0327ce63          	blt	a5,s2,8000300c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80002fd4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80002fd8:	0304b503          	ld	a0,48(s1)
    80002fdc:	fffff097          	auipc	ra,0xfffff
    80002fe0:	50c080e7          	jalr	1292(ra) # 800024e8 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80002fe4:	0284b503          	ld	a0,40(s1)
    80002fe8:	fffff097          	auipc	ra,0xfffff
    80002fec:	500080e7          	jalr	1280(ra) # 800024e8 <_Z10sem_signalP4_sem>

    return ret;
}
    80002ff0:	00090513          	mv	a0,s2
    80002ff4:	01813083          	ld	ra,24(sp)
    80002ff8:	01013403          	ld	s0,16(sp)
    80002ffc:	00813483          	ld	s1,8(sp)
    80003000:	00013903          	ld	s2,0(sp)
    80003004:	02010113          	addi	sp,sp,32
    80003008:	00008067          	ret
        ret = cap - head + tail;
    8000300c:	0004a703          	lw	a4,0(s1)
    80003010:	4127093b          	subw	s2,a4,s2
    80003014:	00f9093b          	addw	s2,s2,a5
    80003018:	fc1ff06f          	j	80002fd8 <_ZN6Buffer6getCntEv+0x44>

000000008000301c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000301c:	fe010113          	addi	sp,sp,-32
    80003020:	00113c23          	sd	ra,24(sp)
    80003024:	00813823          	sd	s0,16(sp)
    80003028:	00913423          	sd	s1,8(sp)
    8000302c:	02010413          	addi	s0,sp,32
    80003030:	00050493          	mv	s1,a0
    putc('\n');
    80003034:	00a00513          	li	a0,10
    80003038:	fffff097          	auipc	ra,0xfffff
    8000303c:	5fc080e7          	jalr	1532(ra) # 80002634 <_Z4putcc>
    printString("Buffer deleted!\n");
    80003040:	00006517          	auipc	a0,0x6
    80003044:	1d850513          	addi	a0,a0,472 # 80009218 <_ZTV14PeriodicThread+0x30>
    80003048:	00002097          	auipc	ra,0x2
    8000304c:	988080e7          	jalr	-1656(ra) # 800049d0 <_Z11printStringPKc>
    80003050:	0340006f          	j	80003084 <_ZN6BufferD1Ev+0x68>
        char ch = buffer[head];
    80003054:	0084b783          	ld	a5,8(s1)
    80003058:	0104a703          	lw	a4,16(s1)
    8000305c:	00271713          	slli	a4,a4,0x2
    80003060:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80003064:	0007c503          	lbu	a0,0(a5)
    80003068:	fffff097          	auipc	ra,0xfffff
    8000306c:	5cc080e7          	jalr	1484(ra) # 80002634 <_Z4putcc>
        head = (head + 1) % cap;
    80003070:	0104a783          	lw	a5,16(s1)
    80003074:	0017879b          	addiw	a5,a5,1
    80003078:	0004a703          	lw	a4,0(s1)
    8000307c:	02e7e7bb          	remw	a5,a5,a4
    80003080:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003084:	00048513          	mv	a0,s1
    80003088:	00000097          	auipc	ra,0x0
    8000308c:	f0c080e7          	jalr	-244(ra) # 80002f94 <_ZN6Buffer6getCntEv>
    80003090:	fca042e3          	bgtz	a0,80003054 <_ZN6BufferD1Ev+0x38>
    putc('!');
    80003094:	02100513          	li	a0,33
    80003098:	fffff097          	auipc	ra,0xfffff
    8000309c:	59c080e7          	jalr	1436(ra) # 80002634 <_Z4putcc>
    putc('\n');
    800030a0:	00a00513          	li	a0,10
    800030a4:	fffff097          	auipc	ra,0xfffff
    800030a8:	590080e7          	jalr	1424(ra) # 80002634 <_Z4putcc>
    mem_free(buffer);
    800030ac:	0084b503          	ld	a0,8(s1)
    800030b0:	fffff097          	auipc	ra,0xfffff
    800030b4:	268080e7          	jalr	616(ra) # 80002318 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800030b8:	0204b503          	ld	a0,32(s1)
    800030bc:	fffff097          	auipc	ra,0xfffff
    800030c0:	3bc080e7          	jalr	956(ra) # 80002478 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    800030c4:	0184b503          	ld	a0,24(s1)
    800030c8:	fffff097          	auipc	ra,0xfffff
    800030cc:	3b0080e7          	jalr	944(ra) # 80002478 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    800030d0:	0304b503          	ld	a0,48(s1)
    800030d4:	fffff097          	auipc	ra,0xfffff
    800030d8:	3a4080e7          	jalr	932(ra) # 80002478 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    800030dc:	0284b503          	ld	a0,40(s1)
    800030e0:	fffff097          	auipc	ra,0xfffff
    800030e4:	398080e7          	jalr	920(ra) # 80002478 <_Z9sem_closeP4_sem>
}
    800030e8:	01813083          	ld	ra,24(sp)
    800030ec:	01013403          	ld	s0,16(sp)
    800030f0:	00813483          	ld	s1,8(sp)
    800030f4:	02010113          	addi	sp,sp,32
    800030f8:	00008067          	ret

00000000800030fc <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800030fc:	fd010113          	addi	sp,sp,-48
    80003100:	02113423          	sd	ra,40(sp)
    80003104:	02813023          	sd	s0,32(sp)
    80003108:	00913c23          	sd	s1,24(sp)
    8000310c:	01213823          	sd	s2,16(sp)
    80003110:	01313423          	sd	s3,8(sp)
    80003114:	03010413          	addi	s0,sp,48
    80003118:	00050493          	mv	s1,a0
    8000311c:	00058913          	mv	s2,a1
    80003120:	0015879b          	addiw	a5,a1,1
    80003124:	0007851b          	sext.w	a0,a5
    80003128:	00f4a023          	sw	a5,0(s1)
    8000312c:	0004a823          	sw	zero,16(s1)
    80003130:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003134:	00251513          	slli	a0,a0,0x2
    80003138:	fffff097          	auipc	ra,0xfffff
    8000313c:	1a4080e7          	jalr	420(ra) # 800022dc <_Z9mem_allocm>
    80003140:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80003144:	01000513          	li	a0,16
    80003148:	fffff097          	auipc	ra,0xfffff
    8000314c:	5dc080e7          	jalr	1500(ra) # 80002724 <_Znwm>
    80003150:	00050993          	mv	s3,a0
    80003154:	00000593          	li	a1,0
    80003158:	fffff097          	auipc	ra,0xfffff
    8000315c:	7dc080e7          	jalr	2012(ra) # 80002934 <_ZN9SemaphoreC1Ej>
    80003160:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80003164:	01000513          	li	a0,16
    80003168:	fffff097          	auipc	ra,0xfffff
    8000316c:	5bc080e7          	jalr	1468(ra) # 80002724 <_Znwm>
    80003170:	00050993          	mv	s3,a0
    80003174:	00090593          	mv	a1,s2
    80003178:	fffff097          	auipc	ra,0xfffff
    8000317c:	7bc080e7          	jalr	1980(ra) # 80002934 <_ZN9SemaphoreC1Ej>
    80003180:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80003184:	01000513          	li	a0,16
    80003188:	fffff097          	auipc	ra,0xfffff
    8000318c:	59c080e7          	jalr	1436(ra) # 80002724 <_Znwm>
    80003190:	00050913          	mv	s2,a0
    80003194:	00100593          	li	a1,1
    80003198:	fffff097          	auipc	ra,0xfffff
    8000319c:	79c080e7          	jalr	1948(ra) # 80002934 <_ZN9SemaphoreC1Ej>
    800031a0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800031a4:	01000513          	li	a0,16
    800031a8:	fffff097          	auipc	ra,0xfffff
    800031ac:	57c080e7          	jalr	1404(ra) # 80002724 <_Znwm>
    800031b0:	00050913          	mv	s2,a0
    800031b4:	00100593          	li	a1,1
    800031b8:	fffff097          	auipc	ra,0xfffff
    800031bc:	77c080e7          	jalr	1916(ra) # 80002934 <_ZN9SemaphoreC1Ej>
    800031c0:	0324b823          	sd	s2,48(s1)
}
    800031c4:	02813083          	ld	ra,40(sp)
    800031c8:	02013403          	ld	s0,32(sp)
    800031cc:	01813483          	ld	s1,24(sp)
    800031d0:	01013903          	ld	s2,16(sp)
    800031d4:	00813983          	ld	s3,8(sp)
    800031d8:	03010113          	addi	sp,sp,48
    800031dc:	00008067          	ret
    itemAvailable = new Semaphore(0);
    800031e0:	00050493          	mv	s1,a0
    800031e4:	00098513          	mv	a0,s3
    800031e8:	fffff097          	auipc	ra,0xfffff
    800031ec:	564080e7          	jalr	1380(ra) # 8000274c <_ZdlPv>
    800031f0:	00048513          	mv	a0,s1
    800031f4:	00009097          	auipc	ra,0x9
    800031f8:	7b4080e7          	jalr	1972(ra) # 8000c9a8 <_Unwind_Resume>
    spaceAvailable = new Semaphore(_cap);
    800031fc:	00050493          	mv	s1,a0
    80003200:	00098513          	mv	a0,s3
    80003204:	fffff097          	auipc	ra,0xfffff
    80003208:	548080e7          	jalr	1352(ra) # 8000274c <_ZdlPv>
    8000320c:	00048513          	mv	a0,s1
    80003210:	00009097          	auipc	ra,0x9
    80003214:	798080e7          	jalr	1944(ra) # 8000c9a8 <_Unwind_Resume>
    mutexHead = new Semaphore(1);
    80003218:	00050493          	mv	s1,a0
    8000321c:	00090513          	mv	a0,s2
    80003220:	fffff097          	auipc	ra,0xfffff
    80003224:	52c080e7          	jalr	1324(ra) # 8000274c <_ZdlPv>
    80003228:	00048513          	mv	a0,s1
    8000322c:	00009097          	auipc	ra,0x9
    80003230:	77c080e7          	jalr	1916(ra) # 8000c9a8 <_Unwind_Resume>
    mutexTail = new Semaphore(1);
    80003234:	00050493          	mv	s1,a0
    80003238:	00090513          	mv	a0,s2
    8000323c:	fffff097          	auipc	ra,0xfffff
    80003240:	510080e7          	jalr	1296(ra) # 8000274c <_ZdlPv>
    80003244:	00048513          	mv	a0,s1
    80003248:	00009097          	auipc	ra,0x9
    8000324c:	760080e7          	jalr	1888(ra) # 8000c9a8 <_Unwind_Resume>

0000000080003250 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80003250:	fe010113          	addi	sp,sp,-32
    80003254:	00113c23          	sd	ra,24(sp)
    80003258:	00813823          	sd	s0,16(sp)
    8000325c:	00913423          	sd	s1,8(sp)
    80003260:	01213023          	sd	s2,0(sp)
    80003264:	02010413          	addi	s0,sp,32
    80003268:	00050493          	mv	s1,a0
    8000326c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80003270:	01853503          	ld	a0,24(a0)
    80003274:	fffff097          	auipc	ra,0xfffff
    80003278:	6f8080e7          	jalr	1784(ra) # 8000296c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000327c:	0304b503          	ld	a0,48(s1)
    80003280:	fffff097          	auipc	ra,0xfffff
    80003284:	6ec080e7          	jalr	1772(ra) # 8000296c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80003288:	0084b783          	ld	a5,8(s1)
    8000328c:	0144a703          	lw	a4,20(s1)
    80003290:	00271713          	slli	a4,a4,0x2
    80003294:	00e787b3          	add	a5,a5,a4
    80003298:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000329c:	0144a783          	lw	a5,20(s1)
    800032a0:	0017879b          	addiw	a5,a5,1
    800032a4:	0004a703          	lw	a4,0(s1)
    800032a8:	02e7e7bb          	remw	a5,a5,a4
    800032ac:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800032b0:	0304b503          	ld	a0,48(s1)
    800032b4:	fffff097          	auipc	ra,0xfffff
    800032b8:	6e4080e7          	jalr	1764(ra) # 80002998 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800032bc:	0204b503          	ld	a0,32(s1)
    800032c0:	fffff097          	auipc	ra,0xfffff
    800032c4:	6d8080e7          	jalr	1752(ra) # 80002998 <_ZN9Semaphore6signalEv>

}
    800032c8:	01813083          	ld	ra,24(sp)
    800032cc:	01013403          	ld	s0,16(sp)
    800032d0:	00813483          	ld	s1,8(sp)
    800032d4:	00013903          	ld	s2,0(sp)
    800032d8:	02010113          	addi	sp,sp,32
    800032dc:	00008067          	ret

00000000800032e0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800032e0:	fe010113          	addi	sp,sp,-32
    800032e4:	00113c23          	sd	ra,24(sp)
    800032e8:	00813823          	sd	s0,16(sp)
    800032ec:	00913423          	sd	s1,8(sp)
    800032f0:	01213023          	sd	s2,0(sp)
    800032f4:	02010413          	addi	s0,sp,32
    800032f8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800032fc:	02053503          	ld	a0,32(a0)
    80003300:	fffff097          	auipc	ra,0xfffff
    80003304:	66c080e7          	jalr	1644(ra) # 8000296c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80003308:	0284b503          	ld	a0,40(s1)
    8000330c:	fffff097          	auipc	ra,0xfffff
    80003310:	660080e7          	jalr	1632(ra) # 8000296c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80003314:	0084b703          	ld	a4,8(s1)
    80003318:	0104a783          	lw	a5,16(s1)
    8000331c:	00279693          	slli	a3,a5,0x2
    80003320:	00d70733          	add	a4,a4,a3
    80003324:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003328:	0017879b          	addiw	a5,a5,1
    8000332c:	0004a703          	lw	a4,0(s1)
    80003330:	02e7e7bb          	remw	a5,a5,a4
    80003334:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80003338:	0284b503          	ld	a0,40(s1)
    8000333c:	fffff097          	auipc	ra,0xfffff
    80003340:	65c080e7          	jalr	1628(ra) # 80002998 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80003344:	0184b503          	ld	a0,24(s1)
    80003348:	fffff097          	auipc	ra,0xfffff
    8000334c:	650080e7          	jalr	1616(ra) # 80002998 <_ZN9Semaphore6signalEv>

    return ret;
}
    80003350:	00090513          	mv	a0,s2
    80003354:	01813083          	ld	ra,24(sp)
    80003358:	01013403          	ld	s0,16(sp)
    8000335c:	00813483          	ld	s1,8(sp)
    80003360:	00013903          	ld	s2,0(sp)
    80003364:	02010113          	addi	sp,sp,32
    80003368:	00008067          	ret

000000008000336c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    8000336c:	fe010113          	addi	sp,sp,-32
    80003370:	00113c23          	sd	ra,24(sp)
    80003374:	00813823          	sd	s0,16(sp)
    80003378:	00913423          	sd	s1,8(sp)
    8000337c:	01213023          	sd	s2,0(sp)
    80003380:	02010413          	addi	s0,sp,32
    80003384:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80003388:	02853503          	ld	a0,40(a0)
    8000338c:	fffff097          	auipc	ra,0xfffff
    80003390:	5e0080e7          	jalr	1504(ra) # 8000296c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80003394:	0304b503          	ld	a0,48(s1)
    80003398:	fffff097          	auipc	ra,0xfffff
    8000339c:	5d4080e7          	jalr	1492(ra) # 8000296c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800033a0:	0144a783          	lw	a5,20(s1)
    800033a4:	0104a903          	lw	s2,16(s1)
    800033a8:	0327ce63          	blt	a5,s2,800033e4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800033ac:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800033b0:	0304b503          	ld	a0,48(s1)
    800033b4:	fffff097          	auipc	ra,0xfffff
    800033b8:	5e4080e7          	jalr	1508(ra) # 80002998 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800033bc:	0284b503          	ld	a0,40(s1)
    800033c0:	fffff097          	auipc	ra,0xfffff
    800033c4:	5d8080e7          	jalr	1496(ra) # 80002998 <_ZN9Semaphore6signalEv>

    return ret;
}
    800033c8:	00090513          	mv	a0,s2
    800033cc:	01813083          	ld	ra,24(sp)
    800033d0:	01013403          	ld	s0,16(sp)
    800033d4:	00813483          	ld	s1,8(sp)
    800033d8:	00013903          	ld	s2,0(sp)
    800033dc:	02010113          	addi	sp,sp,32
    800033e0:	00008067          	ret
        ret = cap - head + tail;
    800033e4:	0004a703          	lw	a4,0(s1)
    800033e8:	4127093b          	subw	s2,a4,s2
    800033ec:	00f9093b          	addw	s2,s2,a5
    800033f0:	fc1ff06f          	j	800033b0 <_ZN9BufferCPP6getCntEv+0x44>

00000000800033f4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800033f4:	fe010113          	addi	sp,sp,-32
    800033f8:	00113c23          	sd	ra,24(sp)
    800033fc:	00813823          	sd	s0,16(sp)
    80003400:	00913423          	sd	s1,8(sp)
    80003404:	02010413          	addi	s0,sp,32
    80003408:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000340c:	00a00513          	li	a0,10
    80003410:	fffff097          	auipc	ra,0xfffff
    80003414:	64c080e7          	jalr	1612(ra) # 80002a5c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80003418:	00006517          	auipc	a0,0x6
    8000341c:	e0050513          	addi	a0,a0,-512 # 80009218 <_ZTV14PeriodicThread+0x30>
    80003420:	00001097          	auipc	ra,0x1
    80003424:	5b0080e7          	jalr	1456(ra) # 800049d0 <_Z11printStringPKc>
    80003428:	0340006f          	j	8000345c <_ZN9BufferCPPD1Ev+0x68>
        char ch = buffer[head];
    8000342c:	0084b783          	ld	a5,8(s1)
    80003430:	0104a703          	lw	a4,16(s1)
    80003434:	00271713          	slli	a4,a4,0x2
    80003438:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000343c:	0007c503          	lbu	a0,0(a5)
    80003440:	fffff097          	auipc	ra,0xfffff
    80003444:	61c080e7          	jalr	1564(ra) # 80002a5c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80003448:	0104a783          	lw	a5,16(s1)
    8000344c:	0017879b          	addiw	a5,a5,1
    80003450:	0004a703          	lw	a4,0(s1)
    80003454:	02e7e7bb          	remw	a5,a5,a4
    80003458:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000345c:	00048513          	mv	a0,s1
    80003460:	00000097          	auipc	ra,0x0
    80003464:	f0c080e7          	jalr	-244(ra) # 8000336c <_ZN9BufferCPP6getCntEv>
    80003468:	fc0512e3          	bnez	a0,8000342c <_ZN9BufferCPPD1Ev+0x38>
    Console::putc('!');
    8000346c:	02100513          	li	a0,33
    80003470:	fffff097          	auipc	ra,0xfffff
    80003474:	5ec080e7          	jalr	1516(ra) # 80002a5c <_ZN7Console4putcEc>
    Console::putc('\n');
    80003478:	00a00513          	li	a0,10
    8000347c:	fffff097          	auipc	ra,0xfffff
    80003480:	5e0080e7          	jalr	1504(ra) # 80002a5c <_ZN7Console4putcEc>
    mem_free(buffer);
    80003484:	0084b503          	ld	a0,8(s1)
    80003488:	fffff097          	auipc	ra,0xfffff
    8000348c:	e90080e7          	jalr	-368(ra) # 80002318 <_Z8mem_freePv>
    delete itemAvailable;
    80003490:	0204b503          	ld	a0,32(s1)
    80003494:	00050863          	beqz	a0,800034a4 <_ZN9BufferCPPD1Ev+0xb0>
    80003498:	00053783          	ld	a5,0(a0)
    8000349c:	0087b783          	ld	a5,8(a5)
    800034a0:	000780e7          	jalr	a5
    delete spaceAvailable;
    800034a4:	0184b503          	ld	a0,24(s1)
    800034a8:	00050863          	beqz	a0,800034b8 <_ZN9BufferCPPD1Ev+0xc4>
    800034ac:	00053783          	ld	a5,0(a0)
    800034b0:	0087b783          	ld	a5,8(a5)
    800034b4:	000780e7          	jalr	a5
    delete mutexTail;
    800034b8:	0304b503          	ld	a0,48(s1)
    800034bc:	00050863          	beqz	a0,800034cc <_ZN9BufferCPPD1Ev+0xd8>
    800034c0:	00053783          	ld	a5,0(a0)
    800034c4:	0087b783          	ld	a5,8(a5)
    800034c8:	000780e7          	jalr	a5
    delete mutexHead;
    800034cc:	0284b503          	ld	a0,40(s1)
    800034d0:	00050863          	beqz	a0,800034e0 <_ZN9BufferCPPD1Ev+0xec>
    800034d4:	00053783          	ld	a5,0(a0)
    800034d8:	0087b783          	ld	a5,8(a5)
    800034dc:	000780e7          	jalr	a5
}
    800034e0:	01813083          	ld	ra,24(sp)
    800034e4:	01013403          	ld	s0,16(sp)
    800034e8:	00813483          	ld	s1,8(sp)
    800034ec:	02010113          	addi	sp,sp,32
    800034f0:	00008067          	ret

00000000800034f4 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800034f4:	f8010113          	addi	sp,sp,-128
    800034f8:	06113c23          	sd	ra,120(sp)
    800034fc:	06813823          	sd	s0,112(sp)
    80003500:	06913423          	sd	s1,104(sp)
    80003504:	07213023          	sd	s2,96(sp)
    80003508:	05313c23          	sd	s3,88(sp)
    8000350c:	05413823          	sd	s4,80(sp)
    80003510:	05513423          	sd	s5,72(sp)
    80003514:	05613023          	sd	s6,64(sp)
    80003518:	03713c23          	sd	s7,56(sp)
    8000351c:	03813823          	sd	s8,48(sp)
    80003520:	03913423          	sd	s9,40(sp)
    80003524:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003528:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    8000352c:	00006517          	auipc	a0,0x6
    80003530:	d0450513          	addi	a0,a0,-764 # 80009230 <_ZTV14PeriodicThread+0x48>
    80003534:	00001097          	auipc	ra,0x1
    80003538:	49c080e7          	jalr	1180(ra) # 800049d0 <_Z11printStringPKc>
    getString(input, 30);
    8000353c:	01e00593          	li	a1,30
    80003540:	f8040513          	addi	a0,s0,-128
    80003544:	00001097          	auipc	ra,0x1
    80003548:	514080e7          	jalr	1300(ra) # 80004a58 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000354c:	f8040513          	addi	a0,s0,-128
    80003550:	00001097          	auipc	ra,0x1
    80003554:	5e0080e7          	jalr	1504(ra) # 80004b30 <_Z11stringToIntPKc>
    80003558:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    8000355c:	00006517          	auipc	a0,0x6
    80003560:	cf450513          	addi	a0,a0,-780 # 80009250 <_ZTV14PeriodicThread+0x68>
    80003564:	00001097          	auipc	ra,0x1
    80003568:	46c080e7          	jalr	1132(ra) # 800049d0 <_Z11printStringPKc>
    getString(input, 30);
    8000356c:	01e00593          	li	a1,30
    80003570:	f8040513          	addi	a0,s0,-128
    80003574:	00001097          	auipc	ra,0x1
    80003578:	4e4080e7          	jalr	1252(ra) # 80004a58 <_Z9getStringPci>
    n = stringToInt(input);
    8000357c:	f8040513          	addi	a0,s0,-128
    80003580:	00001097          	auipc	ra,0x1
    80003584:	5b0080e7          	jalr	1456(ra) # 80004b30 <_Z11stringToIntPKc>
    80003588:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    8000358c:	00006517          	auipc	a0,0x6
    80003590:	ce450513          	addi	a0,a0,-796 # 80009270 <_ZTV14PeriodicThread+0x88>
    80003594:	00001097          	auipc	ra,0x1
    80003598:	43c080e7          	jalr	1084(ra) # 800049d0 <_Z11printStringPKc>
    printInt(threadNum);
    8000359c:	00000613          	li	a2,0
    800035a0:	00a00593          	li	a1,10
    800035a4:	00098513          	mv	a0,s3
    800035a8:	00001097          	auipc	ra,0x1
    800035ac:	5d8080e7          	jalr	1496(ra) # 80004b80 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800035b0:	00006517          	auipc	a0,0x6
    800035b4:	cd850513          	addi	a0,a0,-808 # 80009288 <_ZTV14PeriodicThread+0xa0>
    800035b8:	00001097          	auipc	ra,0x1
    800035bc:	418080e7          	jalr	1048(ra) # 800049d0 <_Z11printStringPKc>
    printInt(n);
    800035c0:	00000613          	li	a2,0
    800035c4:	00a00593          	li	a1,10
    800035c8:	00048513          	mv	a0,s1
    800035cc:	00001097          	auipc	ra,0x1
    800035d0:	5b4080e7          	jalr	1460(ra) # 80004b80 <_Z8printIntiii>
    printString(".\n");
    800035d4:	00006517          	auipc	a0,0x6
    800035d8:	ccc50513          	addi	a0,a0,-820 # 800092a0 <_ZTV14PeriodicThread+0xb8>
    800035dc:	00001097          	auipc	ra,0x1
    800035e0:	3f4080e7          	jalr	1012(ra) # 800049d0 <_Z11printStringPKc>
    if (threadNum > n) {
    800035e4:	0334c463          	blt	s1,s3,8000360c <_Z20testConsumerProducerv+0x118>
    } else if (threadNum < 1) {
    800035e8:	03305c63          	blez	s3,80003620 <_Z20testConsumerProducerv+0x12c>
    BufferCPP *buffer = new BufferCPP(n);
    800035ec:	03800513          	li	a0,56
    800035f0:	fffff097          	auipc	ra,0xfffff
    800035f4:	134080e7          	jalr	308(ra) # 80002724 <_Znwm>
    800035f8:	00050a93          	mv	s5,a0
    800035fc:	00048593          	mv	a1,s1
    80003600:	00000097          	auipc	ra,0x0
    80003604:	afc080e7          	jalr	-1284(ra) # 800030fc <_ZN9BufferCPPC1Ei>
    80003608:	0300006f          	j	80003638 <_Z20testConsumerProducerv+0x144>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000360c:	00006517          	auipc	a0,0x6
    80003610:	c9c50513          	addi	a0,a0,-868 # 800092a8 <_ZTV14PeriodicThread+0xc0>
    80003614:	00001097          	auipc	ra,0x1
    80003618:	3bc080e7          	jalr	956(ra) # 800049d0 <_Z11printStringPKc>
        return;
    8000361c:	0140006f          	j	80003630 <_Z20testConsumerProducerv+0x13c>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003620:	00006517          	auipc	a0,0x6
    80003624:	cc850513          	addi	a0,a0,-824 # 800092e8 <_ZTV14PeriodicThread+0x100>
    80003628:	00001097          	auipc	ra,0x1
    8000362c:	3a8080e7          	jalr	936(ra) # 800049d0 <_Z11printStringPKc>
        return;
    80003630:	000c0113          	mv	sp,s8
    80003634:	2140006f          	j	80003848 <_Z20testConsumerProducerv+0x354>
    waitForAll = new Semaphore(0);
    80003638:	01000513          	li	a0,16
    8000363c:	fffff097          	auipc	ra,0xfffff
    80003640:	0e8080e7          	jalr	232(ra) # 80002724 <_Znwm>
    80003644:	00050913          	mv	s2,a0
    80003648:	00000593          	li	a1,0
    8000364c:	fffff097          	auipc	ra,0xfffff
    80003650:	2e8080e7          	jalr	744(ra) # 80002934 <_ZN9SemaphoreC1Ej>
    80003654:	00008797          	auipc	a5,0x8
    80003658:	2127ba23          	sd	s2,532(a5) # 8000b868 <_ZL10waitForAll>
    Thread *producers[threadNum];
    8000365c:	00399793          	slli	a5,s3,0x3
    80003660:	00f78793          	addi	a5,a5,15
    80003664:	ff07f793          	andi	a5,a5,-16
    80003668:	40f10133          	sub	sp,sp,a5
    8000366c:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003670:	0019871b          	addiw	a4,s3,1
    80003674:	00171793          	slli	a5,a4,0x1
    80003678:	00e787b3          	add	a5,a5,a4
    8000367c:	00379793          	slli	a5,a5,0x3
    80003680:	00f78793          	addi	a5,a5,15
    80003684:	ff07f793          	andi	a5,a5,-16
    80003688:	40f10133          	sub	sp,sp,a5
    8000368c:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003690:	00199493          	slli	s1,s3,0x1
    80003694:	013484b3          	add	s1,s1,s3
    80003698:	00349493          	slli	s1,s1,0x3
    8000369c:	009b04b3          	add	s1,s6,s1
    800036a0:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800036a4:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800036a8:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800036ac:	02800513          	li	a0,40
    800036b0:	fffff097          	auipc	ra,0xfffff
    800036b4:	074080e7          	jalr	116(ra) # 80002724 <_Znwm>
    800036b8:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800036bc:	fffff097          	auipc	ra,0xfffff
    800036c0:	240080e7          	jalr	576(ra) # 800028fc <_ZN6ThreadC1Ev>
    800036c4:	00006797          	auipc	a5,0x6
    800036c8:	cb478793          	addi	a5,a5,-844 # 80009378 <_ZTV8Consumer+0x10>
    800036cc:	00fbb023          	sd	a5,0(s7)
    800036d0:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800036d4:	000b8513          	mv	a0,s7
    800036d8:	fffff097          	auipc	ra,0xfffff
    800036dc:	14c080e7          	jalr	332(ra) # 80002824 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800036e0:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800036e4:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800036e8:	00008797          	auipc	a5,0x8
    800036ec:	1807b783          	ld	a5,384(a5) # 8000b868 <_ZL10waitForAll>
    800036f0:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800036f4:	02800513          	li	a0,40
    800036f8:	fffff097          	auipc	ra,0xfffff
    800036fc:	02c080e7          	jalr	44(ra) # 80002724 <_Znwm>
    80003700:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003704:	fffff097          	auipc	ra,0xfffff
    80003708:	1f8080e7          	jalr	504(ra) # 800028fc <_ZN6ThreadC1Ev>
    8000370c:	00006797          	auipc	a5,0x6
    80003710:	c1c78793          	addi	a5,a5,-996 # 80009328 <_ZTV16ProducerKeyborad+0x10>
    80003714:	00f4b023          	sd	a5,0(s1)
    80003718:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000371c:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003720:	00048513          	mv	a0,s1
    80003724:	fffff097          	auipc	ra,0xfffff
    80003728:	100080e7          	jalr	256(ra) # 80002824 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000372c:	00100913          	li	s2,1
    80003730:	0300006f          	j	80003760 <_Z20testConsumerProducerv+0x26c>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003734:	00006797          	auipc	a5,0x6
    80003738:	c1c78793          	addi	a5,a5,-996 # 80009350 <_ZTV8Producer+0x10>
    8000373c:	00fcb023          	sd	a5,0(s9)
    80003740:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003744:	00391793          	slli	a5,s2,0x3
    80003748:	00fa07b3          	add	a5,s4,a5
    8000374c:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003750:	000c8513          	mv	a0,s9
    80003754:	fffff097          	auipc	ra,0xfffff
    80003758:	0d0080e7          	jalr	208(ra) # 80002824 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000375c:	0019091b          	addiw	s2,s2,1
    80003760:	05395263          	bge	s2,s3,800037a4 <_Z20testConsumerProducerv+0x2b0>
        threadData[i].id = i;
    80003764:	00191493          	slli	s1,s2,0x1
    80003768:	012484b3          	add	s1,s1,s2
    8000376c:	00349493          	slli	s1,s1,0x3
    80003770:	009b04b3          	add	s1,s6,s1
    80003774:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003778:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    8000377c:	00008797          	auipc	a5,0x8
    80003780:	0ec7b783          	ld	a5,236(a5) # 8000b868 <_ZL10waitForAll>
    80003784:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003788:	02800513          	li	a0,40
    8000378c:	fffff097          	auipc	ra,0xfffff
    80003790:	f98080e7          	jalr	-104(ra) # 80002724 <_Znwm>
    80003794:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003798:	fffff097          	auipc	ra,0xfffff
    8000379c:	164080e7          	jalr	356(ra) # 800028fc <_ZN6ThreadC1Ev>
    800037a0:	f95ff06f          	j	80003734 <_Z20testConsumerProducerv+0x240>
    Thread::dispatch();
    800037a4:	fffff097          	auipc	ra,0xfffff
    800037a8:	0b4080e7          	jalr	180(ra) # 80002858 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800037ac:	00000493          	li	s1,0
    800037b0:	0180006f          	j	800037c8 <_Z20testConsumerProducerv+0x2d4>
        waitForAll->wait();
    800037b4:	00008517          	auipc	a0,0x8
    800037b8:	0b453503          	ld	a0,180(a0) # 8000b868 <_ZL10waitForAll>
    800037bc:	fffff097          	auipc	ra,0xfffff
    800037c0:	1b0080e7          	jalr	432(ra) # 8000296c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800037c4:	0014849b          	addiw	s1,s1,1
    800037c8:	fe99d6e3          	bge	s3,s1,800037b4 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800037cc:	00008517          	auipc	a0,0x8
    800037d0:	09c53503          	ld	a0,156(a0) # 8000b868 <_ZL10waitForAll>
    800037d4:	00050863          	beqz	a0,800037e4 <_Z20testConsumerProducerv+0x2f0>
    800037d8:	00053783          	ld	a5,0(a0)
    800037dc:	0087b783          	ld	a5,8(a5)
    800037e0:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800037e4:	00000493          	li	s1,0
    800037e8:	0080006f          	j	800037f0 <_Z20testConsumerProducerv+0x2fc>
    for (int i = 0; i < threadNum; i++) {
    800037ec:	0014849b          	addiw	s1,s1,1
    800037f0:	0334d263          	bge	s1,s3,80003814 <_Z20testConsumerProducerv+0x320>
        delete producers[i];
    800037f4:	00349793          	slli	a5,s1,0x3
    800037f8:	00fa07b3          	add	a5,s4,a5
    800037fc:	0007b503          	ld	a0,0(a5)
    80003800:	fe0506e3          	beqz	a0,800037ec <_Z20testConsumerProducerv+0x2f8>
    80003804:	00053783          	ld	a5,0(a0)
    80003808:	0087b783          	ld	a5,8(a5)
    8000380c:	000780e7          	jalr	a5
    80003810:	fddff06f          	j	800037ec <_Z20testConsumerProducerv+0x2f8>
    delete consumer;
    80003814:	000b8a63          	beqz	s7,80003828 <_Z20testConsumerProducerv+0x334>
    80003818:	000bb783          	ld	a5,0(s7)
    8000381c:	0087b783          	ld	a5,8(a5)
    80003820:	000b8513          	mv	a0,s7
    80003824:	000780e7          	jalr	a5
    delete buffer;
    80003828:	000a8e63          	beqz	s5,80003844 <_Z20testConsumerProducerv+0x350>
    8000382c:	000a8513          	mv	a0,s5
    80003830:	00000097          	auipc	ra,0x0
    80003834:	bc4080e7          	jalr	-1084(ra) # 800033f4 <_ZN9BufferCPPD1Ev>
    80003838:	000a8513          	mv	a0,s5
    8000383c:	fffff097          	auipc	ra,0xfffff
    80003840:	f10080e7          	jalr	-240(ra) # 8000274c <_ZdlPv>
    80003844:	000c0113          	mv	sp,s8
}
    80003848:	f8040113          	addi	sp,s0,-128
    8000384c:	07813083          	ld	ra,120(sp)
    80003850:	07013403          	ld	s0,112(sp)
    80003854:	06813483          	ld	s1,104(sp)
    80003858:	06013903          	ld	s2,96(sp)
    8000385c:	05813983          	ld	s3,88(sp)
    80003860:	05013a03          	ld	s4,80(sp)
    80003864:	04813a83          	ld	s5,72(sp)
    80003868:	04013b03          	ld	s6,64(sp)
    8000386c:	03813b83          	ld	s7,56(sp)
    80003870:	03013c03          	ld	s8,48(sp)
    80003874:	02813c83          	ld	s9,40(sp)
    80003878:	08010113          	addi	sp,sp,128
    8000387c:	00008067          	ret
    BufferCPP *buffer = new BufferCPP(n);
    80003880:	00050493          	mv	s1,a0
    80003884:	000a8513          	mv	a0,s5
    80003888:	fffff097          	auipc	ra,0xfffff
    8000388c:	ec4080e7          	jalr	-316(ra) # 8000274c <_ZdlPv>
    80003890:	00048513          	mv	a0,s1
    80003894:	00009097          	auipc	ra,0x9
    80003898:	114080e7          	jalr	276(ra) # 8000c9a8 <_Unwind_Resume>
    waitForAll = new Semaphore(0);
    8000389c:	00050493          	mv	s1,a0
    800038a0:	00090513          	mv	a0,s2
    800038a4:	fffff097          	auipc	ra,0xfffff
    800038a8:	ea8080e7          	jalr	-344(ra) # 8000274c <_ZdlPv>
    800038ac:	00048513          	mv	a0,s1
    800038b0:	00009097          	auipc	ra,0x9
    800038b4:	0f8080e7          	jalr	248(ra) # 8000c9a8 <_Unwind_Resume>
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800038b8:	00050493          	mv	s1,a0
    800038bc:	000b8513          	mv	a0,s7
    800038c0:	fffff097          	auipc	ra,0xfffff
    800038c4:	e8c080e7          	jalr	-372(ra) # 8000274c <_ZdlPv>
    800038c8:	00048513          	mv	a0,s1
    800038cc:	00009097          	auipc	ra,0x9
    800038d0:	0dc080e7          	jalr	220(ra) # 8000c9a8 <_Unwind_Resume>
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800038d4:	00050913          	mv	s2,a0
    800038d8:	00048513          	mv	a0,s1
    800038dc:	fffff097          	auipc	ra,0xfffff
    800038e0:	e70080e7          	jalr	-400(ra) # 8000274c <_ZdlPv>
    800038e4:	00090513          	mv	a0,s2
    800038e8:	00009097          	auipc	ra,0x9
    800038ec:	0c0080e7          	jalr	192(ra) # 8000c9a8 <_Unwind_Resume>
        producers[i] = new Producer(&threadData[i]);
    800038f0:	00050493          	mv	s1,a0
    800038f4:	000c8513          	mv	a0,s9
    800038f8:	fffff097          	auipc	ra,0xfffff
    800038fc:	e54080e7          	jalr	-428(ra) # 8000274c <_ZdlPv>
    80003900:	00048513          	mv	a0,s1
    80003904:	00009097          	auipc	ra,0x9
    80003908:	0a4080e7          	jalr	164(ra) # 8000c9a8 <_Unwind_Resume>

000000008000390c <_ZN8Consumer3runEv>:
    void run() override {
    8000390c:	fd010113          	addi	sp,sp,-48
    80003910:	02113423          	sd	ra,40(sp)
    80003914:	02813023          	sd	s0,32(sp)
    80003918:	00913c23          	sd	s1,24(sp)
    8000391c:	01213823          	sd	s2,16(sp)
    80003920:	01313423          	sd	s3,8(sp)
    80003924:	03010413          	addi	s0,sp,48
    80003928:	00050913          	mv	s2,a0
        int i = 0;
    8000392c:	00000993          	li	s3,0
        while (!threadEnd) {
    80003930:	00008797          	auipc	a5,0x8
    80003934:	f307a783          	lw	a5,-208(a5) # 8000b860 <_ZL9threadEnd>
    80003938:	06079063          	bnez	a5,80003998 <_ZN8Consumer3runEv+0x8c>
            int key = td->buffer->get();
    8000393c:	02093783          	ld	a5,32(s2)
    80003940:	0087b503          	ld	a0,8(a5)
    80003944:	00000097          	auipc	ra,0x0
    80003948:	99c080e7          	jalr	-1636(ra) # 800032e0 <_ZN9BufferCPP3getEv>
            i++;
    8000394c:	0019849b          	addiw	s1,s3,1
    80003950:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80003954:	0ff57513          	andi	a0,a0,255
    80003958:	fffff097          	auipc	ra,0xfffff
    8000395c:	104080e7          	jalr	260(ra) # 80002a5c <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003960:	05000793          	li	a5,80
    80003964:	02f4e4bb          	remw	s1,s1,a5
    80003968:	fc0494e3          	bnez	s1,80003930 <_ZN8Consumer3runEv+0x24>
                Console::putc('\n');
    8000396c:	00a00513          	li	a0,10
    80003970:	fffff097          	auipc	ra,0xfffff
    80003974:	0ec080e7          	jalr	236(ra) # 80002a5c <_ZN7Console4putcEc>
    80003978:	fb9ff06f          	j	80003930 <_ZN8Consumer3runEv+0x24>
            int key = td->buffer->get();
    8000397c:	02093783          	ld	a5,32(s2)
    80003980:	0087b503          	ld	a0,8(a5)
    80003984:	00000097          	auipc	ra,0x0
    80003988:	95c080e7          	jalr	-1700(ra) # 800032e0 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    8000398c:	0ff57513          	andi	a0,a0,255
    80003990:	fffff097          	auipc	ra,0xfffff
    80003994:	0cc080e7          	jalr	204(ra) # 80002a5c <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80003998:	02093783          	ld	a5,32(s2)
    8000399c:	0087b503          	ld	a0,8(a5)
    800039a0:	00000097          	auipc	ra,0x0
    800039a4:	9cc080e7          	jalr	-1588(ra) # 8000336c <_ZN9BufferCPP6getCntEv>
    800039a8:	fca04ae3          	bgtz	a0,8000397c <_ZN8Consumer3runEv+0x70>
        td->sem->signal();
    800039ac:	02093783          	ld	a5,32(s2)
    800039b0:	0107b503          	ld	a0,16(a5)
    800039b4:	fffff097          	auipc	ra,0xfffff
    800039b8:	fe4080e7          	jalr	-28(ra) # 80002998 <_ZN9Semaphore6signalEv>
    }
    800039bc:	02813083          	ld	ra,40(sp)
    800039c0:	02013403          	ld	s0,32(sp)
    800039c4:	01813483          	ld	s1,24(sp)
    800039c8:	01013903          	ld	s2,16(sp)
    800039cc:	00813983          	ld	s3,8(sp)
    800039d0:	03010113          	addi	sp,sp,48
    800039d4:	00008067          	ret

00000000800039d8 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800039d8:	ff010113          	addi	sp,sp,-16
    800039dc:	00113423          	sd	ra,8(sp)
    800039e0:	00813023          	sd	s0,0(sp)
    800039e4:	01010413          	addi	s0,sp,16
    800039e8:	00006797          	auipc	a5,0x6
    800039ec:	99078793          	addi	a5,a5,-1648 # 80009378 <_ZTV8Consumer+0x10>
    800039f0:	00f53023          	sd	a5,0(a0)
    800039f4:	fffff097          	auipc	ra,0xfffff
    800039f8:	c94080e7          	jalr	-876(ra) # 80002688 <_ZN6ThreadD1Ev>
    800039fc:	00813083          	ld	ra,8(sp)
    80003a00:	00013403          	ld	s0,0(sp)
    80003a04:	01010113          	addi	sp,sp,16
    80003a08:	00008067          	ret

0000000080003a0c <_ZN8ConsumerD0Ev>:
    80003a0c:	fe010113          	addi	sp,sp,-32
    80003a10:	00113c23          	sd	ra,24(sp)
    80003a14:	00813823          	sd	s0,16(sp)
    80003a18:	00913423          	sd	s1,8(sp)
    80003a1c:	02010413          	addi	s0,sp,32
    80003a20:	00050493          	mv	s1,a0
    80003a24:	00006797          	auipc	a5,0x6
    80003a28:	95478793          	addi	a5,a5,-1708 # 80009378 <_ZTV8Consumer+0x10>
    80003a2c:	00f53023          	sd	a5,0(a0)
    80003a30:	fffff097          	auipc	ra,0xfffff
    80003a34:	c58080e7          	jalr	-936(ra) # 80002688 <_ZN6ThreadD1Ev>
    80003a38:	00048513          	mv	a0,s1
    80003a3c:	fffff097          	auipc	ra,0xfffff
    80003a40:	d10080e7          	jalr	-752(ra) # 8000274c <_ZdlPv>
    80003a44:	01813083          	ld	ra,24(sp)
    80003a48:	01013403          	ld	s0,16(sp)
    80003a4c:	00813483          	ld	s1,8(sp)
    80003a50:	02010113          	addi	sp,sp,32
    80003a54:	00008067          	ret

0000000080003a58 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80003a58:	ff010113          	addi	sp,sp,-16
    80003a5c:	00113423          	sd	ra,8(sp)
    80003a60:	00813023          	sd	s0,0(sp)
    80003a64:	01010413          	addi	s0,sp,16
    80003a68:	00006797          	auipc	a5,0x6
    80003a6c:	8c078793          	addi	a5,a5,-1856 # 80009328 <_ZTV16ProducerKeyborad+0x10>
    80003a70:	00f53023          	sd	a5,0(a0)
    80003a74:	fffff097          	auipc	ra,0xfffff
    80003a78:	c14080e7          	jalr	-1004(ra) # 80002688 <_ZN6ThreadD1Ev>
    80003a7c:	00813083          	ld	ra,8(sp)
    80003a80:	00013403          	ld	s0,0(sp)
    80003a84:	01010113          	addi	sp,sp,16
    80003a88:	00008067          	ret

0000000080003a8c <_ZN16ProducerKeyboradD0Ev>:
    80003a8c:	fe010113          	addi	sp,sp,-32
    80003a90:	00113c23          	sd	ra,24(sp)
    80003a94:	00813823          	sd	s0,16(sp)
    80003a98:	00913423          	sd	s1,8(sp)
    80003a9c:	02010413          	addi	s0,sp,32
    80003aa0:	00050493          	mv	s1,a0
    80003aa4:	00006797          	auipc	a5,0x6
    80003aa8:	88478793          	addi	a5,a5,-1916 # 80009328 <_ZTV16ProducerKeyborad+0x10>
    80003aac:	00f53023          	sd	a5,0(a0)
    80003ab0:	fffff097          	auipc	ra,0xfffff
    80003ab4:	bd8080e7          	jalr	-1064(ra) # 80002688 <_ZN6ThreadD1Ev>
    80003ab8:	00048513          	mv	a0,s1
    80003abc:	fffff097          	auipc	ra,0xfffff
    80003ac0:	c90080e7          	jalr	-880(ra) # 8000274c <_ZdlPv>
    80003ac4:	01813083          	ld	ra,24(sp)
    80003ac8:	01013403          	ld	s0,16(sp)
    80003acc:	00813483          	ld	s1,8(sp)
    80003ad0:	02010113          	addi	sp,sp,32
    80003ad4:	00008067          	ret

0000000080003ad8 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003ad8:	ff010113          	addi	sp,sp,-16
    80003adc:	00113423          	sd	ra,8(sp)
    80003ae0:	00813023          	sd	s0,0(sp)
    80003ae4:	01010413          	addi	s0,sp,16
    80003ae8:	00006797          	auipc	a5,0x6
    80003aec:	86878793          	addi	a5,a5,-1944 # 80009350 <_ZTV8Producer+0x10>
    80003af0:	00f53023          	sd	a5,0(a0)
    80003af4:	fffff097          	auipc	ra,0xfffff
    80003af8:	b94080e7          	jalr	-1132(ra) # 80002688 <_ZN6ThreadD1Ev>
    80003afc:	00813083          	ld	ra,8(sp)
    80003b00:	00013403          	ld	s0,0(sp)
    80003b04:	01010113          	addi	sp,sp,16
    80003b08:	00008067          	ret

0000000080003b0c <_ZN8ProducerD0Ev>:
    80003b0c:	fe010113          	addi	sp,sp,-32
    80003b10:	00113c23          	sd	ra,24(sp)
    80003b14:	00813823          	sd	s0,16(sp)
    80003b18:	00913423          	sd	s1,8(sp)
    80003b1c:	02010413          	addi	s0,sp,32
    80003b20:	00050493          	mv	s1,a0
    80003b24:	00006797          	auipc	a5,0x6
    80003b28:	82c78793          	addi	a5,a5,-2004 # 80009350 <_ZTV8Producer+0x10>
    80003b2c:	00f53023          	sd	a5,0(a0)
    80003b30:	fffff097          	auipc	ra,0xfffff
    80003b34:	b58080e7          	jalr	-1192(ra) # 80002688 <_ZN6ThreadD1Ev>
    80003b38:	00048513          	mv	a0,s1
    80003b3c:	fffff097          	auipc	ra,0xfffff
    80003b40:	c10080e7          	jalr	-1008(ra) # 8000274c <_ZdlPv>
    80003b44:	01813083          	ld	ra,24(sp)
    80003b48:	01013403          	ld	s0,16(sp)
    80003b4c:	00813483          	ld	s1,8(sp)
    80003b50:	02010113          	addi	sp,sp,32
    80003b54:	00008067          	ret

0000000080003b58 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003b58:	fe010113          	addi	sp,sp,-32
    80003b5c:	00113c23          	sd	ra,24(sp)
    80003b60:	00813823          	sd	s0,16(sp)
    80003b64:	00913423          	sd	s1,8(sp)
    80003b68:	02010413          	addi	s0,sp,32
    80003b6c:	00050493          	mv	s1,a0
        int i = 0;
    80003b70:	0140006f          	j	80003b84 <_ZN16ProducerKeyborad3runEv+0x2c>
            td->buffer->put(key);
    80003b74:	0204b783          	ld	a5,32(s1)
    80003b78:	0087b503          	ld	a0,8(a5)
    80003b7c:	fffff097          	auipc	ra,0xfffff
    80003b80:	6d4080e7          	jalr	1748(ra) # 80003250 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80003b84:	fffff097          	auipc	ra,0xfffff
    80003b88:	a5c080e7          	jalr	-1444(ra) # 800025e0 <_Z4getcv>
    80003b8c:	0005059b          	sext.w	a1,a0
    80003b90:	01b00793          	li	a5,27
    80003b94:	fef590e3          	bne	a1,a5,80003b74 <_ZN16ProducerKeyborad3runEv+0x1c>
        threadEnd = 1;
    80003b98:	00100793          	li	a5,1
    80003b9c:	00008717          	auipc	a4,0x8
    80003ba0:	ccf72223          	sw	a5,-828(a4) # 8000b860 <_ZL9threadEnd>
        td->buffer->put('!');
    80003ba4:	0204b783          	ld	a5,32(s1)
    80003ba8:	02100593          	li	a1,33
    80003bac:	0087b503          	ld	a0,8(a5)
    80003bb0:	fffff097          	auipc	ra,0xfffff
    80003bb4:	6a0080e7          	jalr	1696(ra) # 80003250 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80003bb8:	0204b783          	ld	a5,32(s1)
    80003bbc:	0107b503          	ld	a0,16(a5)
    80003bc0:	fffff097          	auipc	ra,0xfffff
    80003bc4:	dd8080e7          	jalr	-552(ra) # 80002998 <_ZN9Semaphore6signalEv>
    }
    80003bc8:	01813083          	ld	ra,24(sp)
    80003bcc:	01013403          	ld	s0,16(sp)
    80003bd0:	00813483          	ld	s1,8(sp)
    80003bd4:	02010113          	addi	sp,sp,32
    80003bd8:	00008067          	ret

0000000080003bdc <_ZN8Producer3runEv>:
    void run() override {
    80003bdc:	fe010113          	addi	sp,sp,-32
    80003be0:	00113c23          	sd	ra,24(sp)
    80003be4:	00813823          	sd	s0,16(sp)
    80003be8:	00913423          	sd	s1,8(sp)
    80003bec:	01213023          	sd	s2,0(sp)
    80003bf0:	02010413          	addi	s0,sp,32
    80003bf4:	00050493          	mv	s1,a0
        int i = 0;
    80003bf8:	00000913          	li	s2,0
    80003bfc:	0400006f          	j	80003c3c <_ZN8Producer3runEv+0x60>
            td->buffer->put(td->id + '0');
    80003c00:	0204b783          	ld	a5,32(s1)
    80003c04:	0007a583          	lw	a1,0(a5)
    80003c08:	0305859b          	addiw	a1,a1,48
    80003c0c:	0087b503          	ld	a0,8(a5)
    80003c10:	fffff097          	auipc	ra,0xfffff
    80003c14:	640080e7          	jalr	1600(ra) # 80003250 <_ZN9BufferCPP3putEi>
            i++;
    80003c18:	0019071b          	addiw	a4,s2,1
    80003c1c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80003c20:	0204b783          	ld	a5,32(s1)
    80003c24:	0007a783          	lw	a5,0(a5)
    80003c28:	00e787bb          	addw	a5,a5,a4
    80003c2c:	00500513          	li	a0,5
    80003c30:	02a7e53b          	remw	a0,a5,a0
    80003c34:	fffff097          	auipc	ra,0xfffff
    80003c38:	c4c080e7          	jalr	-948(ra) # 80002880 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80003c3c:	00008797          	auipc	a5,0x8
    80003c40:	c247a783          	lw	a5,-988(a5) # 8000b860 <_ZL9threadEnd>
    80003c44:	fa078ee3          	beqz	a5,80003c00 <_ZN8Producer3runEv+0x24>
        td->sem->signal();
    80003c48:	0204b783          	ld	a5,32(s1)
    80003c4c:	0107b503          	ld	a0,16(a5)
    80003c50:	fffff097          	auipc	ra,0xfffff
    80003c54:	d48080e7          	jalr	-696(ra) # 80002998 <_ZN9Semaphore6signalEv>
    }
    80003c58:	01813083          	ld	ra,24(sp)
    80003c5c:	01013403          	ld	s0,16(sp)
    80003c60:	00813483          	ld	s1,8(sp)
    80003c64:	00013903          	ld	s2,0(sp)
    80003c68:	02010113          	addi	sp,sp,32
    80003c6c:	00008067          	ret

0000000080003c70 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80003c70:	fd010113          	addi	sp,sp,-48
    80003c74:	02113423          	sd	ra,40(sp)
    80003c78:	02813023          	sd	s0,32(sp)
    80003c7c:	00913c23          	sd	s1,24(sp)
    80003c80:	01213823          	sd	s2,16(sp)
    80003c84:	01313423          	sd	s3,8(sp)
    80003c88:	03010413          	addi	s0,sp,48
    80003c8c:	00050993          	mv	s3,a0
    80003c90:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003c94:	00000913          	li	s2,0
    while ((key = getc()) != 0x1b) {
    80003c98:	fffff097          	auipc	ra,0xfffff
    80003c9c:	948080e7          	jalr	-1720(ra) # 800025e0 <_Z4getcv>
    80003ca0:	0005059b          	sext.w	a1,a0
    80003ca4:	01b00793          	li	a5,27
    80003ca8:	02f58e63          	beq	a1,a5,80003ce4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x74>
        data->buffer->put(key);
    80003cac:	0084b503          	ld	a0,8(s1)
    80003cb0:	fffff097          	auipc	ra,0xfffff
    80003cb4:	5a0080e7          	jalr	1440(ra) # 80003250 <_ZN9BufferCPP3putEi>
        i++;
    80003cb8:	0019071b          	addiw	a4,s2,1
    80003cbc:	0007091b          	sext.w	s2,a4

        if (i % (10 * data->id) == 0) {
    80003cc0:	0004a683          	lw	a3,0(s1)
    80003cc4:	0026979b          	slliw	a5,a3,0x2
    80003cc8:	00d787bb          	addw	a5,a5,a3
    80003ccc:	0017979b          	slliw	a5,a5,0x1
    80003cd0:	02f767bb          	remw	a5,a4,a5
    80003cd4:	fc0792e3          	bnez	a5,80003c98 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x28>
            Thread::dispatch();
    80003cd8:	fffff097          	auipc	ra,0xfffff
    80003cdc:	b80080e7          	jalr	-1152(ra) # 80002858 <_ZN6Thread8dispatchEv>
    80003ce0:	fb9ff06f          	j	80003c98 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x28>
        }
    }

    threadEnd = 1;
    80003ce4:	00100793          	li	a5,1
    80003ce8:	00008717          	auipc	a4,0x8
    80003cec:	b8f72423          	sw	a5,-1144(a4) # 8000b870 <_ZL9threadEnd>
    td->buffer->put('!');
    80003cf0:	0209b783          	ld	a5,32(s3)
    80003cf4:	02100593          	li	a1,33
    80003cf8:	0087b503          	ld	a0,8(a5)
    80003cfc:	fffff097          	auipc	ra,0xfffff
    80003d00:	554080e7          	jalr	1364(ra) # 80003250 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80003d04:	0104b503          	ld	a0,16(s1)
    80003d08:	fffff097          	auipc	ra,0xfffff
    80003d0c:	c90080e7          	jalr	-880(ra) # 80002998 <_ZN9Semaphore6signalEv>
}
    80003d10:	02813083          	ld	ra,40(sp)
    80003d14:	02013403          	ld	s0,32(sp)
    80003d18:	01813483          	ld	s1,24(sp)
    80003d1c:	01013903          	ld	s2,16(sp)
    80003d20:	00813983          	ld	s3,8(sp)
    80003d24:	03010113          	addi	sp,sp,48
    80003d28:	00008067          	ret

0000000080003d2c <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80003d2c:	fe010113          	addi	sp,sp,-32
    80003d30:	00113c23          	sd	ra,24(sp)
    80003d34:	00813823          	sd	s0,16(sp)
    80003d38:	00913423          	sd	s1,8(sp)
    80003d3c:	01213023          	sd	s2,0(sp)
    80003d40:	02010413          	addi	s0,sp,32
    80003d44:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003d48:	00000913          	li	s2,0
    while (!threadEnd) {
    80003d4c:	00008797          	auipc	a5,0x8
    80003d50:	b247a783          	lw	a5,-1244(a5) # 8000b870 <_ZL9threadEnd>
    80003d54:	04079263          	bnez	a5,80003d98 <_ZN12ProducerSync8producerEPv+0x6c>
        data->buffer->put(data->id + '0');
    80003d58:	0004a583          	lw	a1,0(s1)
    80003d5c:	0305859b          	addiw	a1,a1,48
    80003d60:	0084b503          	ld	a0,8(s1)
    80003d64:	fffff097          	auipc	ra,0xfffff
    80003d68:	4ec080e7          	jalr	1260(ra) # 80003250 <_ZN9BufferCPP3putEi>
        i++;
    80003d6c:	0019071b          	addiw	a4,s2,1
    80003d70:	0007091b          	sext.w	s2,a4

        if (i % (10 * data->id) == 0) {
    80003d74:	0004a683          	lw	a3,0(s1)
    80003d78:	0026979b          	slliw	a5,a3,0x2
    80003d7c:	00d787bb          	addw	a5,a5,a3
    80003d80:	0017979b          	slliw	a5,a5,0x1
    80003d84:	02f767bb          	remw	a5,a4,a5
    80003d88:	fc0792e3          	bnez	a5,80003d4c <_ZN12ProducerSync8producerEPv+0x20>
            Thread::dispatch();
    80003d8c:	fffff097          	auipc	ra,0xfffff
    80003d90:	acc080e7          	jalr	-1332(ra) # 80002858 <_ZN6Thread8dispatchEv>
    80003d94:	fb9ff06f          	j	80003d4c <_ZN12ProducerSync8producerEPv+0x20>
        }
    }

    data->wait->signal();
    80003d98:	0104b503          	ld	a0,16(s1)
    80003d9c:	fffff097          	auipc	ra,0xfffff
    80003da0:	bfc080e7          	jalr	-1028(ra) # 80002998 <_ZN9Semaphore6signalEv>
}
    80003da4:	01813083          	ld	ra,24(sp)
    80003da8:	01013403          	ld	s0,16(sp)
    80003dac:	00813483          	ld	s1,8(sp)
    80003db0:	00013903          	ld	s2,0(sp)
    80003db4:	02010113          	addi	sp,sp,32
    80003db8:	00008067          	ret

0000000080003dbc <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80003dbc:	fd010113          	addi	sp,sp,-48
    80003dc0:	02113423          	sd	ra,40(sp)
    80003dc4:	02813023          	sd	s0,32(sp)
    80003dc8:	00913c23          	sd	s1,24(sp)
    80003dcc:	01213823          	sd	s2,16(sp)
    80003dd0:	01313423          	sd	s3,8(sp)
    80003dd4:	01413023          	sd	s4,0(sp)
    80003dd8:	03010413          	addi	s0,sp,48
    80003ddc:	00050993          	mv	s3,a0
    80003de0:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003de4:	00000a13          	li	s4,0
    while (!threadEnd) {
    80003de8:	00008797          	auipc	a5,0x8
    80003dec:	a887a783          	lw	a5,-1400(a5) # 8000b870 <_ZL9threadEnd>
    80003df0:	06079e63          	bnez	a5,80003e6c <_ZN12ConsumerSync8consumerEPv+0xb0>
        int key = data->buffer->get();
    80003df4:	00893503          	ld	a0,8(s2)
    80003df8:	fffff097          	auipc	ra,0xfffff
    80003dfc:	4e8080e7          	jalr	1256(ra) # 800032e0 <_ZN9BufferCPP3getEv>
        i++;
    80003e00:	001a049b          	addiw	s1,s4,1
    80003e04:	00048a1b          	sext.w	s4,s1

        putc(key);
    80003e08:	0ff57513          	andi	a0,a0,255
    80003e0c:	fffff097          	auipc	ra,0xfffff
    80003e10:	828080e7          	jalr	-2008(ra) # 80002634 <_Z4putcc>

        if (i % (5 * data->id) == 0) {
    80003e14:	00092703          	lw	a4,0(s2)
    80003e18:	0027179b          	slliw	a5,a4,0x2
    80003e1c:	00e787bb          	addw	a5,a5,a4
    80003e20:	02f4e7bb          	remw	a5,s1,a5
    80003e24:	02078063          	beqz	a5,80003e44 <_ZN12ConsumerSync8consumerEPv+0x88>
            Thread::dispatch();
        }

        if (i % 80 == 0) {
    80003e28:	05000793          	li	a5,80
    80003e2c:	02f4e4bb          	remw	s1,s1,a5
    80003e30:	fa049ce3          	bnez	s1,80003de8 <_ZN12ConsumerSync8consumerEPv+0x2c>
            putc('\n');
    80003e34:	00a00513          	li	a0,10
    80003e38:	ffffe097          	auipc	ra,0xffffe
    80003e3c:	7fc080e7          	jalr	2044(ra) # 80002634 <_Z4putcc>
    80003e40:	fa9ff06f          	j	80003de8 <_ZN12ConsumerSync8consumerEPv+0x2c>
            Thread::dispatch();
    80003e44:	fffff097          	auipc	ra,0xfffff
    80003e48:	a14080e7          	jalr	-1516(ra) # 80002858 <_ZN6Thread8dispatchEv>
    80003e4c:	fddff06f          	j	80003e28 <_ZN12ConsumerSync8consumerEPv+0x6c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80003e50:	0209b783          	ld	a5,32(s3)
    80003e54:	0087b503          	ld	a0,8(a5)
    80003e58:	fffff097          	auipc	ra,0xfffff
    80003e5c:	488080e7          	jalr	1160(ra) # 800032e0 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80003e60:	0ff57513          	andi	a0,a0,255
    80003e64:	fffff097          	auipc	ra,0xfffff
    80003e68:	bf8080e7          	jalr	-1032(ra) # 80002a5c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80003e6c:	0209b783          	ld	a5,32(s3)
    80003e70:	0087b503          	ld	a0,8(a5)
    80003e74:	fffff097          	auipc	ra,0xfffff
    80003e78:	4f8080e7          	jalr	1272(ra) # 8000336c <_ZN9BufferCPP6getCntEv>
    80003e7c:	fca04ae3          	bgtz	a0,80003e50 <_ZN12ConsumerSync8consumerEPv+0x94>
    }

    data->wait->signal();
    80003e80:	01093503          	ld	a0,16(s2)
    80003e84:	fffff097          	auipc	ra,0xfffff
    80003e88:	b14080e7          	jalr	-1260(ra) # 80002998 <_ZN9Semaphore6signalEv>
}
    80003e8c:	02813083          	ld	ra,40(sp)
    80003e90:	02013403          	ld	s0,32(sp)
    80003e94:	01813483          	ld	s1,24(sp)
    80003e98:	01013903          	ld	s2,16(sp)
    80003e9c:	00813983          	ld	s3,8(sp)
    80003ea0:	00013a03          	ld	s4,0(sp)
    80003ea4:	03010113          	addi	sp,sp,48
    80003ea8:	00008067          	ret

0000000080003eac <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80003eac:	f8010113          	addi	sp,sp,-128
    80003eb0:	06113c23          	sd	ra,120(sp)
    80003eb4:	06813823          	sd	s0,112(sp)
    80003eb8:	06913423          	sd	s1,104(sp)
    80003ebc:	07213023          	sd	s2,96(sp)
    80003ec0:	05313c23          	sd	s3,88(sp)
    80003ec4:	05413823          	sd	s4,80(sp)
    80003ec8:	05513423          	sd	s5,72(sp)
    80003ecc:	05613023          	sd	s6,64(sp)
    80003ed0:	03713c23          	sd	s7,56(sp)
    80003ed4:	03813823          	sd	s8,48(sp)
    80003ed8:	03913423          	sd	s9,40(sp)
    80003edc:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80003ee0:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80003ee4:	00005517          	auipc	a0,0x5
    80003ee8:	34c50513          	addi	a0,a0,844 # 80009230 <_ZTV14PeriodicThread+0x48>
    80003eec:	00001097          	auipc	ra,0x1
    80003ef0:	ae4080e7          	jalr	-1308(ra) # 800049d0 <_Z11printStringPKc>
    getString(input, 30);
    80003ef4:	01e00593          	li	a1,30
    80003ef8:	f8040513          	addi	a0,s0,-128
    80003efc:	00001097          	auipc	ra,0x1
    80003f00:	b5c080e7          	jalr	-1188(ra) # 80004a58 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003f04:	f8040513          	addi	a0,s0,-128
    80003f08:	00001097          	auipc	ra,0x1
    80003f0c:	c28080e7          	jalr	-984(ra) # 80004b30 <_Z11stringToIntPKc>
    80003f10:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003f14:	00005517          	auipc	a0,0x5
    80003f18:	33c50513          	addi	a0,a0,828 # 80009250 <_ZTV14PeriodicThread+0x68>
    80003f1c:	00001097          	auipc	ra,0x1
    80003f20:	ab4080e7          	jalr	-1356(ra) # 800049d0 <_Z11printStringPKc>
    getString(input, 30);
    80003f24:	01e00593          	li	a1,30
    80003f28:	f8040513          	addi	a0,s0,-128
    80003f2c:	00001097          	auipc	ra,0x1
    80003f30:	b2c080e7          	jalr	-1236(ra) # 80004a58 <_Z9getStringPci>
    n = stringToInt(input);
    80003f34:	f8040513          	addi	a0,s0,-128
    80003f38:	00001097          	auipc	ra,0x1
    80003f3c:	bf8080e7          	jalr	-1032(ra) # 80004b30 <_Z11stringToIntPKc>
    80003f40:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003f44:	00005517          	auipc	a0,0x5
    80003f48:	32c50513          	addi	a0,a0,812 # 80009270 <_ZTV14PeriodicThread+0x88>
    80003f4c:	00001097          	auipc	ra,0x1
    80003f50:	a84080e7          	jalr	-1404(ra) # 800049d0 <_Z11printStringPKc>
    80003f54:	00000613          	li	a2,0
    80003f58:	00a00593          	li	a1,10
    80003f5c:	00090513          	mv	a0,s2
    80003f60:	00001097          	auipc	ra,0x1
    80003f64:	c20080e7          	jalr	-992(ra) # 80004b80 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003f68:	00005517          	auipc	a0,0x5
    80003f6c:	32050513          	addi	a0,a0,800 # 80009288 <_ZTV14PeriodicThread+0xa0>
    80003f70:	00001097          	auipc	ra,0x1
    80003f74:	a60080e7          	jalr	-1440(ra) # 800049d0 <_Z11printStringPKc>
    80003f78:	00000613          	li	a2,0
    80003f7c:	00a00593          	li	a1,10
    80003f80:	00048513          	mv	a0,s1
    80003f84:	00001097          	auipc	ra,0x1
    80003f88:	bfc080e7          	jalr	-1028(ra) # 80004b80 <_Z8printIntiii>
    printString(".\n");
    80003f8c:	00005517          	auipc	a0,0x5
    80003f90:	31450513          	addi	a0,a0,788 # 800092a0 <_ZTV14PeriodicThread+0xb8>
    80003f94:	00001097          	auipc	ra,0x1
    80003f98:	a3c080e7          	jalr	-1476(ra) # 800049d0 <_Z11printStringPKc>
    if(threadNum > n) {
    80003f9c:	0324c463          	blt	s1,s2,80003fc4 <_Z29producerConsumer_CPP_Sync_APIv+0x118>
    } else if (threadNum < 1) {
    80003fa0:	03205c63          	blez	s2,80003fd8 <_Z29producerConsumer_CPP_Sync_APIv+0x12c>
    BufferCPP *buffer = new BufferCPP(n);
    80003fa4:	03800513          	li	a0,56
    80003fa8:	ffffe097          	auipc	ra,0xffffe
    80003fac:	77c080e7          	jalr	1916(ra) # 80002724 <_Znwm>
    80003fb0:	00050a93          	mv	s5,a0
    80003fb4:	00048593          	mv	a1,s1
    80003fb8:	fffff097          	auipc	ra,0xfffff
    80003fbc:	144080e7          	jalr	324(ra) # 800030fc <_ZN9BufferCPPC1Ei>
    80003fc0:	0300006f          	j	80003ff0 <_Z29producerConsumer_CPP_Sync_APIv+0x144>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003fc4:	00005517          	auipc	a0,0x5
    80003fc8:	2e450513          	addi	a0,a0,740 # 800092a8 <_ZTV14PeriodicThread+0xc0>
    80003fcc:	00001097          	auipc	ra,0x1
    80003fd0:	a04080e7          	jalr	-1532(ra) # 800049d0 <_Z11printStringPKc>
        return;
    80003fd4:	0140006f          	j	80003fe8 <_Z29producerConsumer_CPP_Sync_APIv+0x13c>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003fd8:	00005517          	auipc	a0,0x5
    80003fdc:	31050513          	addi	a0,a0,784 # 800092e8 <_ZTV14PeriodicThread+0x100>
    80003fe0:	00001097          	auipc	ra,0x1
    80003fe4:	9f0080e7          	jalr	-1552(ra) # 800049d0 <_Z11printStringPKc>
        return;
    80003fe8:	000b8113          	mv	sp,s7
    80003fec:	2380006f          	j	80004224 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    waitForAll = new Semaphore(0);
    80003ff0:	01000513          	li	a0,16
    80003ff4:	ffffe097          	auipc	ra,0xffffe
    80003ff8:	730080e7          	jalr	1840(ra) # 80002724 <_Znwm>
    80003ffc:	00050493          	mv	s1,a0
    80004000:	00000593          	li	a1,0
    80004004:	fffff097          	auipc	ra,0xfffff
    80004008:	930080e7          	jalr	-1744(ra) # 80002934 <_ZN9SemaphoreC1Ej>
    8000400c:	00008797          	auipc	a5,0x8
    80004010:	8697b623          	sd	s1,-1940(a5) # 8000b878 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004014:	00391793          	slli	a5,s2,0x3
    80004018:	00f78793          	addi	a5,a5,15
    8000401c:	ff07f793          	andi	a5,a5,-16
    80004020:	40f10133          	sub	sp,sp,a5
    80004024:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004028:	0019071b          	addiw	a4,s2,1
    8000402c:	00171793          	slli	a5,a4,0x1
    80004030:	00e787b3          	add	a5,a5,a4
    80004034:	00379793          	slli	a5,a5,0x3
    80004038:	00f78793          	addi	a5,a5,15
    8000403c:	ff07f793          	andi	a5,a5,-16
    80004040:	40f10133          	sub	sp,sp,a5
    80004044:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004048:	00191c13          	slli	s8,s2,0x1
    8000404c:	012c07b3          	add	a5,s8,s2
    80004050:	00379793          	slli	a5,a5,0x3
    80004054:	00fa07b3          	add	a5,s4,a5
    80004058:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000405c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004060:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004064:	02800513          	li	a0,40
    80004068:	ffffe097          	auipc	ra,0xffffe
    8000406c:	6bc080e7          	jalr	1724(ra) # 80002724 <_Znwm>
    80004070:	00050b13          	mv	s6,a0
    80004074:	012c0c33          	add	s8,s8,s2
    80004078:	003c1c13          	slli	s8,s8,0x3
    8000407c:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004080:	fffff097          	auipc	ra,0xfffff
    80004084:	87c080e7          	jalr	-1924(ra) # 800028fc <_ZN6ThreadC1Ev>
    80004088:	00005797          	auipc	a5,0x5
    8000408c:	36878793          	addi	a5,a5,872 # 800093f0 <_ZTV12ConsumerSync+0x10>
    80004090:	00fb3023          	sd	a5,0(s6)
    80004094:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004098:	000b0513          	mv	a0,s6
    8000409c:	ffffe097          	auipc	ra,0xffffe
    800040a0:	788080e7          	jalr	1928(ra) # 80002824 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800040a4:	00000493          	li	s1,0
    800040a8:	0380006f          	j	800040e0 <_Z29producerConsumer_CPP_Sync_APIv+0x234>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800040ac:	00005797          	auipc	a5,0x5
    800040b0:	31c78793          	addi	a5,a5,796 # 800093c8 <_ZTV12ProducerSync+0x10>
    800040b4:	00fcb023          	sd	a5,0(s9)
    800040b8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800040bc:	00349793          	slli	a5,s1,0x3
    800040c0:	00f987b3          	add	a5,s3,a5
    800040c4:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800040c8:	00349793          	slli	a5,s1,0x3
    800040cc:	00f987b3          	add	a5,s3,a5
    800040d0:	0007b503          	ld	a0,0(a5)
    800040d4:	ffffe097          	auipc	ra,0xffffe
    800040d8:	750080e7          	jalr	1872(ra) # 80002824 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800040dc:	0014849b          	addiw	s1,s1,1
    800040e0:	0b24d063          	bge	s1,s2,80004180 <_Z29producerConsumer_CPP_Sync_APIv+0x2d4>
        data[i].id = i;
    800040e4:	00149793          	slli	a5,s1,0x1
    800040e8:	009787b3          	add	a5,a5,s1
    800040ec:	00379793          	slli	a5,a5,0x3
    800040f0:	00fa07b3          	add	a5,s4,a5
    800040f4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800040f8:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800040fc:	00007717          	auipc	a4,0x7
    80004100:	77c73703          	ld	a4,1916(a4) # 8000b878 <_ZL10waitForAll>
    80004104:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004108:	02905863          	blez	s1,80004138 <_Z29producerConsumer_CPP_Sync_APIv+0x28c>
            threads[i] = new ProducerSync(data+i);
    8000410c:	02800513          	li	a0,40
    80004110:	ffffe097          	auipc	ra,0xffffe
    80004114:	614080e7          	jalr	1556(ra) # 80002724 <_Znwm>
    80004118:	00050c93          	mv	s9,a0
    8000411c:	00149c13          	slli	s8,s1,0x1
    80004120:	009c0c33          	add	s8,s8,s1
    80004124:	003c1c13          	slli	s8,s8,0x3
    80004128:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000412c:	ffffe097          	auipc	ra,0xffffe
    80004130:	7d0080e7          	jalr	2000(ra) # 800028fc <_ZN6ThreadC1Ev>
    80004134:	f79ff06f          	j	800040ac <_Z29producerConsumer_CPP_Sync_APIv+0x200>
            threads[i] = new ProducerKeyboard(data+i);
    80004138:	02800513          	li	a0,40
    8000413c:	ffffe097          	auipc	ra,0xffffe
    80004140:	5e8080e7          	jalr	1512(ra) # 80002724 <_Znwm>
    80004144:	00050c93          	mv	s9,a0
    80004148:	00149c13          	slli	s8,s1,0x1
    8000414c:	009c0c33          	add	s8,s8,s1
    80004150:	003c1c13          	slli	s8,s8,0x3
    80004154:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004158:	ffffe097          	auipc	ra,0xffffe
    8000415c:	7a4080e7          	jalr	1956(ra) # 800028fc <_ZN6ThreadC1Ev>
    80004160:	00005797          	auipc	a5,0x5
    80004164:	24078793          	addi	a5,a5,576 # 800093a0 <_ZTV16ProducerKeyboard+0x10>
    80004168:	00fcb023          	sd	a5,0(s9)
    8000416c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004170:	00349793          	slli	a5,s1,0x3
    80004174:	00f987b3          	add	a5,s3,a5
    80004178:	0197b023          	sd	s9,0(a5)
    8000417c:	f4dff06f          	j	800040c8 <_Z29producerConsumer_CPP_Sync_APIv+0x21c>
    Thread::dispatch();
    80004180:	ffffe097          	auipc	ra,0xffffe
    80004184:	6d8080e7          	jalr	1752(ra) # 80002858 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004188:	00000493          	li	s1,0
    8000418c:	0180006f          	j	800041a4 <_Z29producerConsumer_CPP_Sync_APIv+0x2f8>
        waitForAll->wait();
    80004190:	00007517          	auipc	a0,0x7
    80004194:	6e853503          	ld	a0,1768(a0) # 8000b878 <_ZL10waitForAll>
    80004198:	ffffe097          	auipc	ra,0xffffe
    8000419c:	7d4080e7          	jalr	2004(ra) # 8000296c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800041a0:	0014849b          	addiw	s1,s1,1
    800041a4:	fe9956e3          	bge	s2,s1,80004190 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800041a8:	00000493          	li	s1,0
    800041ac:	0140006f          	j	800041c0 <_Z29producerConsumer_CPP_Sync_APIv+0x314>
        delete threads[i];
    800041b0:	00053783          	ld	a5,0(a0)
    800041b4:	0087b783          	ld	a5,8(a5)
    800041b8:	000780e7          	jalr	a5
    for (int i = 0; i < threadNum; i++) {
    800041bc:	0014849b          	addiw	s1,s1,1
    800041c0:	0124dc63          	bge	s1,s2,800041d8 <_Z29producerConsumer_CPP_Sync_APIv+0x32c>
        delete threads[i];
    800041c4:	00349793          	slli	a5,s1,0x3
    800041c8:	00f987b3          	add	a5,s3,a5
    800041cc:	0007b503          	ld	a0,0(a5)
    800041d0:	fe0510e3          	bnez	a0,800041b0 <_Z29producerConsumer_CPP_Sync_APIv+0x304>
    800041d4:	fe9ff06f          	j	800041bc <_Z29producerConsumer_CPP_Sync_APIv+0x310>
    delete consumerThread;
    800041d8:	000b0a63          	beqz	s6,800041ec <_Z29producerConsumer_CPP_Sync_APIv+0x340>
    800041dc:	000b3783          	ld	a5,0(s6)
    800041e0:	0087b783          	ld	a5,8(a5)
    800041e4:	000b0513          	mv	a0,s6
    800041e8:	000780e7          	jalr	a5
    delete waitForAll;
    800041ec:	00007517          	auipc	a0,0x7
    800041f0:	68c53503          	ld	a0,1676(a0) # 8000b878 <_ZL10waitForAll>
    800041f4:	00050863          	beqz	a0,80004204 <_Z29producerConsumer_CPP_Sync_APIv+0x358>
    800041f8:	00053783          	ld	a5,0(a0)
    800041fc:	0087b783          	ld	a5,8(a5)
    80004200:	000780e7          	jalr	a5
    delete buffer;
    80004204:	000a8e63          	beqz	s5,80004220 <_Z29producerConsumer_CPP_Sync_APIv+0x374>
    80004208:	000a8513          	mv	a0,s5
    8000420c:	fffff097          	auipc	ra,0xfffff
    80004210:	1e8080e7          	jalr	488(ra) # 800033f4 <_ZN9BufferCPPD1Ev>
    80004214:	000a8513          	mv	a0,s5
    80004218:	ffffe097          	auipc	ra,0xffffe
    8000421c:	534080e7          	jalr	1332(ra) # 8000274c <_ZdlPv>
    80004220:	000b8113          	mv	sp,s7

}
    80004224:	f8040113          	addi	sp,s0,-128
    80004228:	07813083          	ld	ra,120(sp)
    8000422c:	07013403          	ld	s0,112(sp)
    80004230:	06813483          	ld	s1,104(sp)
    80004234:	06013903          	ld	s2,96(sp)
    80004238:	05813983          	ld	s3,88(sp)
    8000423c:	05013a03          	ld	s4,80(sp)
    80004240:	04813a83          	ld	s5,72(sp)
    80004244:	04013b03          	ld	s6,64(sp)
    80004248:	03813b83          	ld	s7,56(sp)
    8000424c:	03013c03          	ld	s8,48(sp)
    80004250:	02813c83          	ld	s9,40(sp)
    80004254:	08010113          	addi	sp,sp,128
    80004258:	00008067          	ret
    BufferCPP *buffer = new BufferCPP(n);
    8000425c:	00050493          	mv	s1,a0
    80004260:	000a8513          	mv	a0,s5
    80004264:	ffffe097          	auipc	ra,0xffffe
    80004268:	4e8080e7          	jalr	1256(ra) # 8000274c <_ZdlPv>
    8000426c:	00048513          	mv	a0,s1
    80004270:	00008097          	auipc	ra,0x8
    80004274:	738080e7          	jalr	1848(ra) # 8000c9a8 <_Unwind_Resume>
    waitForAll = new Semaphore(0);
    80004278:	00050913          	mv	s2,a0
    8000427c:	00048513          	mv	a0,s1
    80004280:	ffffe097          	auipc	ra,0xffffe
    80004284:	4cc080e7          	jalr	1228(ra) # 8000274c <_ZdlPv>
    80004288:	00090513          	mv	a0,s2
    8000428c:	00008097          	auipc	ra,0x8
    80004290:	71c080e7          	jalr	1820(ra) # 8000c9a8 <_Unwind_Resume>
    consumerThread = new ConsumerSync(data+threadNum);
    80004294:	00050493          	mv	s1,a0
    80004298:	000b0513          	mv	a0,s6
    8000429c:	ffffe097          	auipc	ra,0xffffe
    800042a0:	4b0080e7          	jalr	1200(ra) # 8000274c <_ZdlPv>
    800042a4:	00048513          	mv	a0,s1
    800042a8:	00008097          	auipc	ra,0x8
    800042ac:	700080e7          	jalr	1792(ra) # 8000c9a8 <_Unwind_Resume>
            threads[i] = new ProducerSync(data+i);
    800042b0:	00050493          	mv	s1,a0
    800042b4:	000c8513          	mv	a0,s9
    800042b8:	ffffe097          	auipc	ra,0xffffe
    800042bc:	494080e7          	jalr	1172(ra) # 8000274c <_ZdlPv>
    800042c0:	00048513          	mv	a0,s1
    800042c4:	00008097          	auipc	ra,0x8
    800042c8:	6e4080e7          	jalr	1764(ra) # 8000c9a8 <_Unwind_Resume>
            threads[i] = new ProducerKeyboard(data+i);
    800042cc:	00050493          	mv	s1,a0
    800042d0:	000c8513          	mv	a0,s9
    800042d4:	ffffe097          	auipc	ra,0xffffe
    800042d8:	478080e7          	jalr	1144(ra) # 8000274c <_ZdlPv>
    800042dc:	00048513          	mv	a0,s1
    800042e0:	00008097          	auipc	ra,0x8
    800042e4:	6c8080e7          	jalr	1736(ra) # 8000c9a8 <_Unwind_Resume>

00000000800042e8 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800042e8:	ff010113          	addi	sp,sp,-16
    800042ec:	00113423          	sd	ra,8(sp)
    800042f0:	00813023          	sd	s0,0(sp)
    800042f4:	01010413          	addi	s0,sp,16
    800042f8:	00005797          	auipc	a5,0x5
    800042fc:	0f878793          	addi	a5,a5,248 # 800093f0 <_ZTV12ConsumerSync+0x10>
    80004300:	00f53023          	sd	a5,0(a0)
    80004304:	ffffe097          	auipc	ra,0xffffe
    80004308:	384080e7          	jalr	900(ra) # 80002688 <_ZN6ThreadD1Ev>
    8000430c:	00813083          	ld	ra,8(sp)
    80004310:	00013403          	ld	s0,0(sp)
    80004314:	01010113          	addi	sp,sp,16
    80004318:	00008067          	ret

000000008000431c <_ZN12ConsumerSyncD0Ev>:
    8000431c:	fe010113          	addi	sp,sp,-32
    80004320:	00113c23          	sd	ra,24(sp)
    80004324:	00813823          	sd	s0,16(sp)
    80004328:	00913423          	sd	s1,8(sp)
    8000432c:	02010413          	addi	s0,sp,32
    80004330:	00050493          	mv	s1,a0
    80004334:	00005797          	auipc	a5,0x5
    80004338:	0bc78793          	addi	a5,a5,188 # 800093f0 <_ZTV12ConsumerSync+0x10>
    8000433c:	00f53023          	sd	a5,0(a0)
    80004340:	ffffe097          	auipc	ra,0xffffe
    80004344:	348080e7          	jalr	840(ra) # 80002688 <_ZN6ThreadD1Ev>
    80004348:	00048513          	mv	a0,s1
    8000434c:	ffffe097          	auipc	ra,0xffffe
    80004350:	400080e7          	jalr	1024(ra) # 8000274c <_ZdlPv>
    80004354:	01813083          	ld	ra,24(sp)
    80004358:	01013403          	ld	s0,16(sp)
    8000435c:	00813483          	ld	s1,8(sp)
    80004360:	02010113          	addi	sp,sp,32
    80004364:	00008067          	ret

0000000080004368 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004368:	ff010113          	addi	sp,sp,-16
    8000436c:	00113423          	sd	ra,8(sp)
    80004370:	00813023          	sd	s0,0(sp)
    80004374:	01010413          	addi	s0,sp,16
    80004378:	00005797          	auipc	a5,0x5
    8000437c:	05078793          	addi	a5,a5,80 # 800093c8 <_ZTV12ProducerSync+0x10>
    80004380:	00f53023          	sd	a5,0(a0)
    80004384:	ffffe097          	auipc	ra,0xffffe
    80004388:	304080e7          	jalr	772(ra) # 80002688 <_ZN6ThreadD1Ev>
    8000438c:	00813083          	ld	ra,8(sp)
    80004390:	00013403          	ld	s0,0(sp)
    80004394:	01010113          	addi	sp,sp,16
    80004398:	00008067          	ret

000000008000439c <_ZN12ProducerSyncD0Ev>:
    8000439c:	fe010113          	addi	sp,sp,-32
    800043a0:	00113c23          	sd	ra,24(sp)
    800043a4:	00813823          	sd	s0,16(sp)
    800043a8:	00913423          	sd	s1,8(sp)
    800043ac:	02010413          	addi	s0,sp,32
    800043b0:	00050493          	mv	s1,a0
    800043b4:	00005797          	auipc	a5,0x5
    800043b8:	01478793          	addi	a5,a5,20 # 800093c8 <_ZTV12ProducerSync+0x10>
    800043bc:	00f53023          	sd	a5,0(a0)
    800043c0:	ffffe097          	auipc	ra,0xffffe
    800043c4:	2c8080e7          	jalr	712(ra) # 80002688 <_ZN6ThreadD1Ev>
    800043c8:	00048513          	mv	a0,s1
    800043cc:	ffffe097          	auipc	ra,0xffffe
    800043d0:	380080e7          	jalr	896(ra) # 8000274c <_ZdlPv>
    800043d4:	01813083          	ld	ra,24(sp)
    800043d8:	01013403          	ld	s0,16(sp)
    800043dc:	00813483          	ld	s1,8(sp)
    800043e0:	02010113          	addi	sp,sp,32
    800043e4:	00008067          	ret

00000000800043e8 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800043e8:	ff010113          	addi	sp,sp,-16
    800043ec:	00113423          	sd	ra,8(sp)
    800043f0:	00813023          	sd	s0,0(sp)
    800043f4:	01010413          	addi	s0,sp,16
    800043f8:	00005797          	auipc	a5,0x5
    800043fc:	fa878793          	addi	a5,a5,-88 # 800093a0 <_ZTV16ProducerKeyboard+0x10>
    80004400:	00f53023          	sd	a5,0(a0)
    80004404:	ffffe097          	auipc	ra,0xffffe
    80004408:	284080e7          	jalr	644(ra) # 80002688 <_ZN6ThreadD1Ev>
    8000440c:	00813083          	ld	ra,8(sp)
    80004410:	00013403          	ld	s0,0(sp)
    80004414:	01010113          	addi	sp,sp,16
    80004418:	00008067          	ret

000000008000441c <_ZN16ProducerKeyboardD0Ev>:
    8000441c:	fe010113          	addi	sp,sp,-32
    80004420:	00113c23          	sd	ra,24(sp)
    80004424:	00813823          	sd	s0,16(sp)
    80004428:	00913423          	sd	s1,8(sp)
    8000442c:	02010413          	addi	s0,sp,32
    80004430:	00050493          	mv	s1,a0
    80004434:	00005797          	auipc	a5,0x5
    80004438:	f6c78793          	addi	a5,a5,-148 # 800093a0 <_ZTV16ProducerKeyboard+0x10>
    8000443c:	00f53023          	sd	a5,0(a0)
    80004440:	ffffe097          	auipc	ra,0xffffe
    80004444:	248080e7          	jalr	584(ra) # 80002688 <_ZN6ThreadD1Ev>
    80004448:	00048513          	mv	a0,s1
    8000444c:	ffffe097          	auipc	ra,0xffffe
    80004450:	300080e7          	jalr	768(ra) # 8000274c <_ZdlPv>
    80004454:	01813083          	ld	ra,24(sp)
    80004458:	01013403          	ld	s0,16(sp)
    8000445c:	00813483          	ld	s1,8(sp)
    80004460:	02010113          	addi	sp,sp,32
    80004464:	00008067          	ret

0000000080004468 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004468:	ff010113          	addi	sp,sp,-16
    8000446c:	00113423          	sd	ra,8(sp)
    80004470:	00813023          	sd	s0,0(sp)
    80004474:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004478:	02053583          	ld	a1,32(a0)
    8000447c:	fffff097          	auipc	ra,0xfffff
    80004480:	7f4080e7          	jalr	2036(ra) # 80003c70 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004484:	00813083          	ld	ra,8(sp)
    80004488:	00013403          	ld	s0,0(sp)
    8000448c:	01010113          	addi	sp,sp,16
    80004490:	00008067          	ret

0000000080004494 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004494:	ff010113          	addi	sp,sp,-16
    80004498:	00113423          	sd	ra,8(sp)
    8000449c:	00813023          	sd	s0,0(sp)
    800044a0:	01010413          	addi	s0,sp,16
        producer(td);
    800044a4:	02053583          	ld	a1,32(a0)
    800044a8:	00000097          	auipc	ra,0x0
    800044ac:	884080e7          	jalr	-1916(ra) # 80003d2c <_ZN12ProducerSync8producerEPv>
    }
    800044b0:	00813083          	ld	ra,8(sp)
    800044b4:	00013403          	ld	s0,0(sp)
    800044b8:	01010113          	addi	sp,sp,16
    800044bc:	00008067          	ret

00000000800044c0 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800044c0:	ff010113          	addi	sp,sp,-16
    800044c4:	00113423          	sd	ra,8(sp)
    800044c8:	00813023          	sd	s0,0(sp)
    800044cc:	01010413          	addi	s0,sp,16
        consumer(td);
    800044d0:	02053583          	ld	a1,32(a0)
    800044d4:	00000097          	auipc	ra,0x0
    800044d8:	8e8080e7          	jalr	-1816(ra) # 80003dbc <_ZN12ConsumerSync8consumerEPv>
    }
    800044dc:	00813083          	ld	ra,8(sp)
    800044e0:	00013403          	ld	s0,0(sp)
    800044e4:	01010113          	addi	sp,sp,16
    800044e8:	00008067          	ret

00000000800044ec <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800044ec:	fe010113          	addi	sp,sp,-32
    800044f0:	00113c23          	sd	ra,24(sp)
    800044f4:	00813823          	sd	s0,16(sp)
    800044f8:	00913423          	sd	s1,8(sp)
    800044fc:	01213023          	sd	s2,0(sp)
    80004500:	02010413          	addi	s0,sp,32
    80004504:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004508:	00000913          	li	s2,0
    while ((key = getc()) != 0x1b) {
    8000450c:	ffffe097          	auipc	ra,0xffffe
    80004510:	0d4080e7          	jalr	212(ra) # 800025e0 <_Z4getcv>
    80004514:	0005059b          	sext.w	a1,a0
    80004518:	01b00793          	li	a5,27
    8000451c:	02f58e63          	beq	a1,a5,80004558 <_ZL16producerKeyboardPv+0x6c>
        data->buffer->put(key);
    80004520:	0084b503          	ld	a0,8(s1)
    80004524:	fffff097          	auipc	ra,0xfffff
    80004528:	954080e7          	jalr	-1708(ra) # 80002e78 <_ZN6Buffer3putEi>
        i++;
    8000452c:	0019071b          	addiw	a4,s2,1
    80004530:	0007091b          	sext.w	s2,a4

        if (i % (10 * data->id) == 0) {
    80004534:	0004a683          	lw	a3,0(s1)
    80004538:	0026979b          	slliw	a5,a3,0x2
    8000453c:	00d787bb          	addw	a5,a5,a3
    80004540:	0017979b          	slliw	a5,a5,0x1
    80004544:	02f767bb          	remw	a5,a4,a5
    80004548:	fc0792e3          	bnez	a5,8000450c <_ZL16producerKeyboardPv+0x20>
            thread_dispatch();
    8000454c:	ffffe097          	auipc	ra,0xffffe
    80004550:	e90080e7          	jalr	-368(ra) # 800023dc <_Z15thread_dispatchv>
    80004554:	fb9ff06f          	j	8000450c <_ZL16producerKeyboardPv+0x20>
        }
    }

    threadEnd = 1;
    80004558:	00100793          	li	a5,1
    8000455c:	00007717          	auipc	a4,0x7
    80004560:	32f72223          	sw	a5,804(a4) # 8000b880 <_ZL9threadEnd>
    data->buffer->put('!');
    80004564:	02100593          	li	a1,33
    80004568:	0084b503          	ld	a0,8(s1)
    8000456c:	fffff097          	auipc	ra,0xfffff
    80004570:	90c080e7          	jalr	-1780(ra) # 80002e78 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80004574:	0104b503          	ld	a0,16(s1)
    80004578:	ffffe097          	auipc	ra,0xffffe
    8000457c:	f70080e7          	jalr	-144(ra) # 800024e8 <_Z10sem_signalP4_sem>
}
    80004580:	01813083          	ld	ra,24(sp)
    80004584:	01013403          	ld	s0,16(sp)
    80004588:	00813483          	ld	s1,8(sp)
    8000458c:	00013903          	ld	s2,0(sp)
    80004590:	02010113          	addi	sp,sp,32
    80004594:	00008067          	ret

0000000080004598 <_ZL8producerPv>:

static void producer(void *arg) {
    80004598:	fe010113          	addi	sp,sp,-32
    8000459c:	00113c23          	sd	ra,24(sp)
    800045a0:	00813823          	sd	s0,16(sp)
    800045a4:	00913423          	sd	s1,8(sp)
    800045a8:	01213023          	sd	s2,0(sp)
    800045ac:	02010413          	addi	s0,sp,32
    800045b0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800045b4:	00000913          	li	s2,0
    while (!threadEnd) {
    800045b8:	00007797          	auipc	a5,0x7
    800045bc:	2c87a783          	lw	a5,712(a5) # 8000b880 <_ZL9threadEnd>
    800045c0:	04079263          	bnez	a5,80004604 <_ZL8producerPv+0x6c>
        data->buffer->put(data->id + '0');
    800045c4:	0004a583          	lw	a1,0(s1)
    800045c8:	0305859b          	addiw	a1,a1,48
    800045cc:	0084b503          	ld	a0,8(s1)
    800045d0:	fffff097          	auipc	ra,0xfffff
    800045d4:	8a8080e7          	jalr	-1880(ra) # 80002e78 <_ZN6Buffer3putEi>
        i++;
    800045d8:	0019071b          	addiw	a4,s2,1
    800045dc:	0007091b          	sext.w	s2,a4

        if (i % (10 * data->id) == 0) {
    800045e0:	0004a683          	lw	a3,0(s1)
    800045e4:	0026979b          	slliw	a5,a3,0x2
    800045e8:	00d787bb          	addw	a5,a5,a3
    800045ec:	0017979b          	slliw	a5,a5,0x1
    800045f0:	02f767bb          	remw	a5,a4,a5
    800045f4:	fc0792e3          	bnez	a5,800045b8 <_ZL8producerPv+0x20>
            thread_dispatch();
    800045f8:	ffffe097          	auipc	ra,0xffffe
    800045fc:	de4080e7          	jalr	-540(ra) # 800023dc <_Z15thread_dispatchv>
    80004600:	fb9ff06f          	j	800045b8 <_ZL8producerPv+0x20>
        }
    }

    sem_signal(data->wait);
    80004604:	0104b503          	ld	a0,16(s1)
    80004608:	ffffe097          	auipc	ra,0xffffe
    8000460c:	ee0080e7          	jalr	-288(ra) # 800024e8 <_Z10sem_signalP4_sem>
}
    80004610:	01813083          	ld	ra,24(sp)
    80004614:	01013403          	ld	s0,16(sp)
    80004618:	00813483          	ld	s1,8(sp)
    8000461c:	00013903          	ld	s2,0(sp)
    80004620:	02010113          	addi	sp,sp,32
    80004624:	00008067          	ret

0000000080004628 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80004628:	fd010113          	addi	sp,sp,-48
    8000462c:	02113423          	sd	ra,40(sp)
    80004630:	02813023          	sd	s0,32(sp)
    80004634:	00913c23          	sd	s1,24(sp)
    80004638:	01213823          	sd	s2,16(sp)
    8000463c:	01313423          	sd	s3,8(sp)
    80004640:	03010413          	addi	s0,sp,48
    80004644:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004648:	00000993          	li	s3,0
    while (!threadEnd) {
    8000464c:	00007797          	auipc	a5,0x7
    80004650:	2347a783          	lw	a5,564(a5) # 8000b880 <_ZL9threadEnd>
    80004654:	06079c63          	bnez	a5,800046cc <_ZL8consumerPv+0xa4>
        int key = data->buffer->get();
    80004658:	00893503          	ld	a0,8(s2)
    8000465c:	fffff097          	auipc	ra,0xfffff
    80004660:	8ac080e7          	jalr	-1876(ra) # 80002f08 <_ZN6Buffer3getEv>
        i++;
    80004664:	0019849b          	addiw	s1,s3,1
    80004668:	0004899b          	sext.w	s3,s1

        putc(key);
    8000466c:	0ff57513          	andi	a0,a0,255
    80004670:	ffffe097          	auipc	ra,0xffffe
    80004674:	fc4080e7          	jalr	-60(ra) # 80002634 <_Z4putcc>

        if (i % (5 * data->id) == 0) {
    80004678:	00092703          	lw	a4,0(s2)
    8000467c:	0027179b          	slliw	a5,a4,0x2
    80004680:	00e787bb          	addw	a5,a5,a4
    80004684:	02f4e7bb          	remw	a5,s1,a5
    80004688:	02078063          	beqz	a5,800046a8 <_ZL8consumerPv+0x80>
            thread_dispatch();
        }

        if (i % 80 == 0) {
    8000468c:	05000793          	li	a5,80
    80004690:	02f4e4bb          	remw	s1,s1,a5
    80004694:	fa049ce3          	bnez	s1,8000464c <_ZL8consumerPv+0x24>
            putc('\n');
    80004698:	00a00513          	li	a0,10
    8000469c:	ffffe097          	auipc	ra,0xffffe
    800046a0:	f98080e7          	jalr	-104(ra) # 80002634 <_Z4putcc>
    800046a4:	fa9ff06f          	j	8000464c <_ZL8consumerPv+0x24>
            thread_dispatch();
    800046a8:	ffffe097          	auipc	ra,0xffffe
    800046ac:	d34080e7          	jalr	-716(ra) # 800023dc <_Z15thread_dispatchv>
    800046b0:	fddff06f          	j	8000468c <_ZL8consumerPv+0x64>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800046b4:	00893503          	ld	a0,8(s2)
    800046b8:	fffff097          	auipc	ra,0xfffff
    800046bc:	850080e7          	jalr	-1968(ra) # 80002f08 <_ZN6Buffer3getEv>
        putc(key);
    800046c0:	0ff57513          	andi	a0,a0,255
    800046c4:	ffffe097          	auipc	ra,0xffffe
    800046c8:	f70080e7          	jalr	-144(ra) # 80002634 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800046cc:	00893503          	ld	a0,8(s2)
    800046d0:	fffff097          	auipc	ra,0xfffff
    800046d4:	8c4080e7          	jalr	-1852(ra) # 80002f94 <_ZN6Buffer6getCntEv>
    800046d8:	fca04ee3          	bgtz	a0,800046b4 <_ZL8consumerPv+0x8c>
    }

    sem_signal(data->wait);
    800046dc:	01093503          	ld	a0,16(s2)
    800046e0:	ffffe097          	auipc	ra,0xffffe
    800046e4:	e08080e7          	jalr	-504(ra) # 800024e8 <_Z10sem_signalP4_sem>
}
    800046e8:	02813083          	ld	ra,40(sp)
    800046ec:	02013403          	ld	s0,32(sp)
    800046f0:	01813483          	ld	s1,24(sp)
    800046f4:	01013903          	ld	s2,16(sp)
    800046f8:	00813983          	ld	s3,8(sp)
    800046fc:	03010113          	addi	sp,sp,48
    80004700:	00008067          	ret

0000000080004704 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80004704:	f9010113          	addi	sp,sp,-112
    80004708:	06113423          	sd	ra,104(sp)
    8000470c:	06813023          	sd	s0,96(sp)
    80004710:	04913c23          	sd	s1,88(sp)
    80004714:	05213823          	sd	s2,80(sp)
    80004718:	05313423          	sd	s3,72(sp)
    8000471c:	05413023          	sd	s4,64(sp)
    80004720:	03513c23          	sd	s5,56(sp)
    80004724:	03613823          	sd	s6,48(sp)
    80004728:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    8000472c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80004730:	00005517          	auipc	a0,0x5
    80004734:	b0050513          	addi	a0,a0,-1280 # 80009230 <_ZTV14PeriodicThread+0x48>
    80004738:	00000097          	auipc	ra,0x0
    8000473c:	298080e7          	jalr	664(ra) # 800049d0 <_Z11printStringPKc>
    getString(input, 30);
    80004740:	01e00593          	li	a1,30
    80004744:	fa040513          	addi	a0,s0,-96
    80004748:	00000097          	auipc	ra,0x0
    8000474c:	310080e7          	jalr	784(ra) # 80004a58 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004750:	fa040513          	addi	a0,s0,-96
    80004754:	00000097          	auipc	ra,0x0
    80004758:	3dc080e7          	jalr	988(ra) # 80004b30 <_Z11stringToIntPKc>
    8000475c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004760:	00005517          	auipc	a0,0x5
    80004764:	af050513          	addi	a0,a0,-1296 # 80009250 <_ZTV14PeriodicThread+0x68>
    80004768:	00000097          	auipc	ra,0x0
    8000476c:	268080e7          	jalr	616(ra) # 800049d0 <_Z11printStringPKc>
    getString(input, 30);
    80004770:	01e00593          	li	a1,30
    80004774:	fa040513          	addi	a0,s0,-96
    80004778:	00000097          	auipc	ra,0x0
    8000477c:	2e0080e7          	jalr	736(ra) # 80004a58 <_Z9getStringPci>
    n = stringToInt(input);
    80004780:	fa040513          	addi	a0,s0,-96
    80004784:	00000097          	auipc	ra,0x0
    80004788:	3ac080e7          	jalr	940(ra) # 80004b30 <_Z11stringToIntPKc>
    8000478c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004790:	00005517          	auipc	a0,0x5
    80004794:	ae050513          	addi	a0,a0,-1312 # 80009270 <_ZTV14PeriodicThread+0x88>
    80004798:	00000097          	auipc	ra,0x0
    8000479c:	238080e7          	jalr	568(ra) # 800049d0 <_Z11printStringPKc>
    800047a0:	00000613          	li	a2,0
    800047a4:	00a00593          	li	a1,10
    800047a8:	00090513          	mv	a0,s2
    800047ac:	00000097          	auipc	ra,0x0
    800047b0:	3d4080e7          	jalr	980(ra) # 80004b80 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800047b4:	00005517          	auipc	a0,0x5
    800047b8:	ad450513          	addi	a0,a0,-1324 # 80009288 <_ZTV14PeriodicThread+0xa0>
    800047bc:	00000097          	auipc	ra,0x0
    800047c0:	214080e7          	jalr	532(ra) # 800049d0 <_Z11printStringPKc>
    800047c4:	00000613          	li	a2,0
    800047c8:	00a00593          	li	a1,10
    800047cc:	00048513          	mv	a0,s1
    800047d0:	00000097          	auipc	ra,0x0
    800047d4:	3b0080e7          	jalr	944(ra) # 80004b80 <_Z8printIntiii>
    printString(".\n");
    800047d8:	00005517          	auipc	a0,0x5
    800047dc:	ac850513          	addi	a0,a0,-1336 # 800092a0 <_ZTV14PeriodicThread+0xb8>
    800047e0:	00000097          	auipc	ra,0x0
    800047e4:	1f0080e7          	jalr	496(ra) # 800049d0 <_Z11printStringPKc>
    if(threadNum > n) {
    800047e8:	0324c463          	blt	s1,s2,80004810 <_Z22producerConsumer_C_APIv+0x10c>
    } else if (threadNum < 1) {
    800047ec:	03205c63          	blez	s2,80004824 <_Z22producerConsumer_C_APIv+0x120>
    Buffer *buffer = new Buffer(n);
    800047f0:	03800513          	li	a0,56
    800047f4:	ffffe097          	auipc	ra,0xffffe
    800047f8:	f30080e7          	jalr	-208(ra) # 80002724 <_Znwm>
    800047fc:	00050a13          	mv	s4,a0
    80004800:	00048593          	mv	a1,s1
    80004804:	ffffe097          	auipc	ra,0xffffe
    80004808:	5d8080e7          	jalr	1496(ra) # 80002ddc <_ZN6BufferC1Ei>
    8000480c:	0300006f          	j	8000483c <_Z22producerConsumer_C_APIv+0x138>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004810:	00005517          	auipc	a0,0x5
    80004814:	a9850513          	addi	a0,a0,-1384 # 800092a8 <_ZTV14PeriodicThread+0xc0>
    80004818:	00000097          	auipc	ra,0x0
    8000481c:	1b8080e7          	jalr	440(ra) # 800049d0 <_Z11printStringPKc>
        return;
    80004820:	0140006f          	j	80004834 <_Z22producerConsumer_C_APIv+0x130>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004824:	00005517          	auipc	a0,0x5
    80004828:	ac450513          	addi	a0,a0,-1340 # 800092e8 <_ZTV14PeriodicThread+0x100>
    8000482c:	00000097          	auipc	ra,0x0
    80004830:	1a4080e7          	jalr	420(ra) # 800049d0 <_Z11printStringPKc>
        return;
    80004834:	000b0113          	mv	sp,s6
    80004838:	1500006f          	j	80004988 <_Z22producerConsumer_C_APIv+0x284>
    sem_open(&waitForAll, 0);
    8000483c:	00000593          	li	a1,0
    80004840:	00007517          	auipc	a0,0x7
    80004844:	04850513          	addi	a0,a0,72 # 8000b888 <_ZL10waitForAll>
    80004848:	ffffe097          	auipc	ra,0xffffe
    8000484c:	bec080e7          	jalr	-1044(ra) # 80002434 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80004850:	00391793          	slli	a5,s2,0x3
    80004854:	00f78793          	addi	a5,a5,15
    80004858:	ff07f793          	andi	a5,a5,-16
    8000485c:	40f10133          	sub	sp,sp,a5
    80004860:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80004864:	0019071b          	addiw	a4,s2,1
    80004868:	00171793          	slli	a5,a4,0x1
    8000486c:	00e787b3          	add	a5,a5,a4
    80004870:	00379793          	slli	a5,a5,0x3
    80004874:	00f78793          	addi	a5,a5,15
    80004878:	ff07f793          	andi	a5,a5,-16
    8000487c:	40f10133          	sub	sp,sp,a5
    80004880:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80004884:	00191613          	slli	a2,s2,0x1
    80004888:	012607b3          	add	a5,a2,s2
    8000488c:	00379793          	slli	a5,a5,0x3
    80004890:	00f987b3          	add	a5,s3,a5
    80004894:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004898:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    8000489c:	00007717          	auipc	a4,0x7
    800048a0:	fec73703          	ld	a4,-20(a4) # 8000b888 <_ZL10waitForAll>
    800048a4:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800048a8:	00078613          	mv	a2,a5
    800048ac:	00000597          	auipc	a1,0x0
    800048b0:	d7c58593          	addi	a1,a1,-644 # 80004628 <_ZL8consumerPv>
    800048b4:	f9840513          	addi	a0,s0,-104
    800048b8:	ffffe097          	auipc	ra,0xffffe
    800048bc:	a98080e7          	jalr	-1384(ra) # 80002350 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800048c0:	00000493          	li	s1,0
    800048c4:	0280006f          	j	800048ec <_Z22producerConsumer_C_APIv+0x1e8>
        thread_create(threads + i,
    800048c8:	00000597          	auipc	a1,0x0
    800048cc:	c2458593          	addi	a1,a1,-988 # 800044ec <_ZL16producerKeyboardPv>
                      data + i);
    800048d0:	00179613          	slli	a2,a5,0x1
    800048d4:	00f60633          	add	a2,a2,a5
    800048d8:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800048dc:	00c98633          	add	a2,s3,a2
    800048e0:	ffffe097          	auipc	ra,0xffffe
    800048e4:	a70080e7          	jalr	-1424(ra) # 80002350 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800048e8:	0014849b          	addiw	s1,s1,1
    800048ec:	0524d263          	bge	s1,s2,80004930 <_Z22producerConsumer_C_APIv+0x22c>
        data[i].id = i;
    800048f0:	00149793          	slli	a5,s1,0x1
    800048f4:	009787b3          	add	a5,a5,s1
    800048f8:	00379793          	slli	a5,a5,0x3
    800048fc:	00f987b3          	add	a5,s3,a5
    80004900:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004904:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80004908:	00007717          	auipc	a4,0x7
    8000490c:	f8073703          	ld	a4,-128(a4) # 8000b888 <_ZL10waitForAll>
    80004910:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80004914:	00048793          	mv	a5,s1
    80004918:	00349513          	slli	a0,s1,0x3
    8000491c:	00aa8533          	add	a0,s5,a0
    80004920:	fa9054e3          	blez	s1,800048c8 <_Z22producerConsumer_C_APIv+0x1c4>
    80004924:	00000597          	auipc	a1,0x0
    80004928:	c7458593          	addi	a1,a1,-908 # 80004598 <_ZL8producerPv>
    8000492c:	fa5ff06f          	j	800048d0 <_Z22producerConsumer_C_APIv+0x1cc>
    thread_dispatch();
    80004930:	ffffe097          	auipc	ra,0xffffe
    80004934:	aac080e7          	jalr	-1364(ra) # 800023dc <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80004938:	00000493          	li	s1,0
    8000493c:	0180006f          	j	80004954 <_Z22producerConsumer_C_APIv+0x250>
        sem_wait(waitForAll);
    80004940:	00007517          	auipc	a0,0x7
    80004944:	f4853503          	ld	a0,-184(a0) # 8000b888 <_ZL10waitForAll>
    80004948:	ffffe097          	auipc	ra,0xffffe
    8000494c:	b68080e7          	jalr	-1176(ra) # 800024b0 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80004950:	0014849b          	addiw	s1,s1,1
    80004954:	fe9956e3          	bge	s2,s1,80004940 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80004958:	00007517          	auipc	a0,0x7
    8000495c:	f3053503          	ld	a0,-208(a0) # 8000b888 <_ZL10waitForAll>
    80004960:	ffffe097          	auipc	ra,0xffffe
    80004964:	b18080e7          	jalr	-1256(ra) # 80002478 <_Z9sem_closeP4_sem>
    delete buffer;
    80004968:	000a0e63          	beqz	s4,80004984 <_Z22producerConsumer_C_APIv+0x280>
    8000496c:	000a0513          	mv	a0,s4
    80004970:	ffffe097          	auipc	ra,0xffffe
    80004974:	6ac080e7          	jalr	1708(ra) # 8000301c <_ZN6BufferD1Ev>
    80004978:	000a0513          	mv	a0,s4
    8000497c:	ffffe097          	auipc	ra,0xffffe
    80004980:	dd0080e7          	jalr	-560(ra) # 8000274c <_ZdlPv>
    80004984:	000b0113          	mv	sp,s6

}
    80004988:	f9040113          	addi	sp,s0,-112
    8000498c:	06813083          	ld	ra,104(sp)
    80004990:	06013403          	ld	s0,96(sp)
    80004994:	05813483          	ld	s1,88(sp)
    80004998:	05013903          	ld	s2,80(sp)
    8000499c:	04813983          	ld	s3,72(sp)
    800049a0:	04013a03          	ld	s4,64(sp)
    800049a4:	03813a83          	ld	s5,56(sp)
    800049a8:	03013b03          	ld	s6,48(sp)
    800049ac:	07010113          	addi	sp,sp,112
    800049b0:	00008067          	ret
    Buffer *buffer = new Buffer(n);
    800049b4:	00050493          	mv	s1,a0
    800049b8:	000a0513          	mv	a0,s4
    800049bc:	ffffe097          	auipc	ra,0xffffe
    800049c0:	d90080e7          	jalr	-624(ra) # 8000274c <_ZdlPv>
    800049c4:	00048513          	mv	a0,s1
    800049c8:	00008097          	auipc	ra,0x8
    800049cc:	fe0080e7          	jalr	-32(ra) # 8000c9a8 <_Unwind_Resume>

00000000800049d0 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800049d0:	fe010113          	addi	sp,sp,-32
    800049d4:	00113c23          	sd	ra,24(sp)
    800049d8:	00813823          	sd	s0,16(sp)
    800049dc:	00913423          	sd	s1,8(sp)
    800049e0:	02010413          	addi	s0,sp,32
    800049e4:	00050493          	mv	s1,a0
    800049e8:	00c0006f          	j	800049f4 <_Z11printStringPKc+0x24>
    LOCK();
    800049ec:	ffffe097          	auipc	ra,0xffffe
    800049f0:	9f0080e7          	jalr	-1552(ra) # 800023dc <_Z15thread_dispatchv>
    800049f4:	00100613          	li	a2,1
    800049f8:	00000593          	li	a1,0
    800049fc:	00007517          	auipc	a0,0x7
    80004a00:	e9450513          	addi	a0,a0,-364 # 8000b890 <lockPrint>
    80004a04:	ffffc097          	auipc	ra,0xffffc
    80004a08:	720080e7          	jalr	1824(ra) # 80001124 <copy_and_swap>
    80004a0c:	fe0510e3          	bnez	a0,800049ec <_Z11printStringPKc+0x1c>
    80004a10:	0100006f          	j	80004a20 <_Z11printStringPKc+0x50>
    while (*string != '\0')
    {
        putc(*string);
    80004a14:	ffffe097          	auipc	ra,0xffffe
    80004a18:	c20080e7          	jalr	-992(ra) # 80002634 <_Z4putcc>
        string++;
    80004a1c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004a20:	0004c503          	lbu	a0,0(s1)
    80004a24:	fe0518e3          	bnez	a0,80004a14 <_Z11printStringPKc+0x44>
    }
    UNLOCK();
    80004a28:	00000613          	li	a2,0
    80004a2c:	00100593          	li	a1,1
    80004a30:	00007517          	auipc	a0,0x7
    80004a34:	e6050513          	addi	a0,a0,-416 # 8000b890 <lockPrint>
    80004a38:	ffffc097          	auipc	ra,0xffffc
    80004a3c:	6ec080e7          	jalr	1772(ra) # 80001124 <copy_and_swap>
    80004a40:	fe0514e3          	bnez	a0,80004a28 <_Z11printStringPKc+0x58>
}
    80004a44:	01813083          	ld	ra,24(sp)
    80004a48:	01013403          	ld	s0,16(sp)
    80004a4c:	00813483          	ld	s1,8(sp)
    80004a50:	02010113          	addi	sp,sp,32
    80004a54:	00008067          	ret

0000000080004a58 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004a58:	fd010113          	addi	sp,sp,-48
    80004a5c:	02113423          	sd	ra,40(sp)
    80004a60:	02813023          	sd	s0,32(sp)
    80004a64:	00913c23          	sd	s1,24(sp)
    80004a68:	01213823          	sd	s2,16(sp)
    80004a6c:	01313423          	sd	s3,8(sp)
    80004a70:	01413023          	sd	s4,0(sp)
    80004a74:	03010413          	addi	s0,sp,48
    80004a78:	00050993          	mv	s3,a0
    80004a7c:	00058a13          	mv	s4,a1
    LOCK();
    80004a80:	00100613          	li	a2,1
    80004a84:	00000593          	li	a1,0
    80004a88:	00007517          	auipc	a0,0x7
    80004a8c:	e0850513          	addi	a0,a0,-504 # 8000b890 <lockPrint>
    80004a90:	ffffc097          	auipc	ra,0xffffc
    80004a94:	694080e7          	jalr	1684(ra) # 80001124 <copy_and_swap>
    80004a98:	00050863          	beqz	a0,80004aa8 <_Z9getStringPci+0x50>
    80004a9c:	ffffe097          	auipc	ra,0xffffe
    80004aa0:	940080e7          	jalr	-1728(ra) # 800023dc <_Z15thread_dispatchv>
    80004aa4:	fddff06f          	j	80004a80 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004aa8:	00000913          	li	s2,0
    80004aac:	00090493          	mv	s1,s2
    80004ab0:	0019091b          	addiw	s2,s2,1
    80004ab4:	03495a63          	bge	s2,s4,80004ae8 <_Z9getStringPci+0x90>
        cc = getc();
    80004ab8:	ffffe097          	auipc	ra,0xffffe
    80004abc:	b28080e7          	jalr	-1240(ra) # 800025e0 <_Z4getcv>
        if(cc < 1)
    80004ac0:	02050463          	beqz	a0,80004ae8 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004ac4:	009984b3          	add	s1,s3,s1
    80004ac8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004acc:	00a00793          	li	a5,10
    80004ad0:	00f50a63          	beq	a0,a5,80004ae4 <_Z9getStringPci+0x8c>
    80004ad4:	00d00793          	li	a5,13
    80004ad8:	fcf51ae3          	bne	a0,a5,80004aac <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004adc:	00090493          	mv	s1,s2
    80004ae0:	0080006f          	j	80004ae8 <_Z9getStringPci+0x90>
    80004ae4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004ae8:	009984b3          	add	s1,s3,s1
    80004aec:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004af0:	00000613          	li	a2,0
    80004af4:	00100593          	li	a1,1
    80004af8:	00007517          	auipc	a0,0x7
    80004afc:	d9850513          	addi	a0,a0,-616 # 8000b890 <lockPrint>
    80004b00:	ffffc097          	auipc	ra,0xffffc
    80004b04:	624080e7          	jalr	1572(ra) # 80001124 <copy_and_swap>
    80004b08:	fe0514e3          	bnez	a0,80004af0 <_Z9getStringPci+0x98>
    return buf;
}
    80004b0c:	00098513          	mv	a0,s3
    80004b10:	02813083          	ld	ra,40(sp)
    80004b14:	02013403          	ld	s0,32(sp)
    80004b18:	01813483          	ld	s1,24(sp)
    80004b1c:	01013903          	ld	s2,16(sp)
    80004b20:	00813983          	ld	s3,8(sp)
    80004b24:	00013a03          	ld	s4,0(sp)
    80004b28:	03010113          	addi	sp,sp,48
    80004b2c:	00008067          	ret

0000000080004b30 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004b30:	ff010113          	addi	sp,sp,-16
    80004b34:	00813423          	sd	s0,8(sp)
    80004b38:	01010413          	addi	s0,sp,16
    80004b3c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004b40:	00000513          	li	a0,0
    80004b44:	01c0006f          	j	80004b60 <_Z11stringToIntPKc+0x30>
    while ('0' <= *s && *s <= '9')
        n = n * 10 + *s++ - '0';
    80004b48:	0025179b          	slliw	a5,a0,0x2
    80004b4c:	00a787bb          	addw	a5,a5,a0
    80004b50:	0017979b          	slliw	a5,a5,0x1
    80004b54:	00168693          	addi	a3,a3,1
    80004b58:	00c787bb          	addw	a5,a5,a2
    80004b5c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004b60:	0006c603          	lbu	a2,0(a3)
    80004b64:	fd06071b          	addiw	a4,a2,-48
    80004b68:	0ff77713          	andi	a4,a4,255
    80004b6c:	00900793          	li	a5,9
    80004b70:	fce7fce3          	bgeu	a5,a4,80004b48 <_Z11stringToIntPKc+0x18>
    return n;
}
    80004b74:	00813403          	ld	s0,8(sp)
    80004b78:	01010113          	addi	sp,sp,16
    80004b7c:	00008067          	ret

0000000080004b80 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004b80:	fc010113          	addi	sp,sp,-64
    80004b84:	02113c23          	sd	ra,56(sp)
    80004b88:	02813823          	sd	s0,48(sp)
    80004b8c:	02913423          	sd	s1,40(sp)
    80004b90:	03213023          	sd	s2,32(sp)
    80004b94:	01313c23          	sd	s3,24(sp)
    80004b98:	04010413          	addi	s0,sp,64
    80004b9c:	00050493          	mv	s1,a0
    80004ba0:	00058913          	mv	s2,a1
    80004ba4:	00060993          	mv	s3,a2
    80004ba8:	00c0006f          	j	80004bb4 <_Z8printIntiii+0x34>
    LOCK();
    80004bac:	ffffe097          	auipc	ra,0xffffe
    80004bb0:	830080e7          	jalr	-2000(ra) # 800023dc <_Z15thread_dispatchv>
    80004bb4:	00100613          	li	a2,1
    80004bb8:	00000593          	li	a1,0
    80004bbc:	00007517          	auipc	a0,0x7
    80004bc0:	cd450513          	addi	a0,a0,-812 # 8000b890 <lockPrint>
    80004bc4:	ffffc097          	auipc	ra,0xffffc
    80004bc8:	560080e7          	jalr	1376(ra) # 80001124 <copy_and_swap>
    80004bcc:	fe0510e3          	bnez	a0,80004bac <_Z8printIntiii+0x2c>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004bd0:	00098463          	beqz	s3,80004bd8 <_Z8printIntiii+0x58>
    80004bd4:	0604c663          	bltz	s1,80004c40 <_Z8printIntiii+0xc0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004bd8:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004bdc:	00000593          	li	a1,0
    }

    i = 0;
    80004be0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004be4:	0009079b          	sext.w	a5,s2
    80004be8:	0325773b          	remuw	a4,a0,s2
    80004bec:	00048613          	mv	a2,s1
    80004bf0:	0014849b          	addiw	s1,s1,1
    80004bf4:	02071693          	slli	a3,a4,0x20
    80004bf8:	0206d693          	srli	a3,a3,0x20
    80004bfc:	00006717          	auipc	a4,0x6
    80004c00:	7f470713          	addi	a4,a4,2036 # 8000b3f0 <digits>
    80004c04:	00d70733          	add	a4,a4,a3
    80004c08:	00074683          	lbu	a3,0(a4)
    80004c0c:	fd040713          	addi	a4,s0,-48
    80004c10:	00c70733          	add	a4,a4,a2
    80004c14:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004c18:	0005071b          	sext.w	a4,a0
    80004c1c:	0325553b          	divuw	a0,a0,s2
    80004c20:	fcf772e3          	bgeu	a4,a5,80004be4 <_Z8printIntiii+0x64>
    if(neg)
    80004c24:	02058e63          	beqz	a1,80004c60 <_Z8printIntiii+0xe0>
        buf[i++] = '-';
    80004c28:	fd040793          	addi	a5,s0,-48
    80004c2c:	009784b3          	add	s1,a5,s1
    80004c30:	02d00793          	li	a5,45
    80004c34:	fef48823          	sb	a5,-16(s1)
    80004c38:	0026049b          	addiw	s1,a2,2
    80004c3c:	0240006f          	j	80004c60 <_Z8printIntiii+0xe0>
        x = -xx;
    80004c40:	4090053b          	negw	a0,s1
        neg = 1;
    80004c44:	00100593          	li	a1,1
        x = -xx;
    80004c48:	f99ff06f          	j	80004be0 <_Z8printIntiii+0x60>

    while(--i >= 0)
        putc(buf[i]);
    80004c4c:	fd040793          	addi	a5,s0,-48
    80004c50:	009787b3          	add	a5,a5,s1
    80004c54:	ff07c503          	lbu	a0,-16(a5)
    80004c58:	ffffe097          	auipc	ra,0xffffe
    80004c5c:	9dc080e7          	jalr	-1572(ra) # 80002634 <_Z4putcc>
    while(--i >= 0)
    80004c60:	fff4849b          	addiw	s1,s1,-1
    80004c64:	fe04d4e3          	bgez	s1,80004c4c <_Z8printIntiii+0xcc>

    UNLOCK();
    80004c68:	00000613          	li	a2,0
    80004c6c:	00100593          	li	a1,1
    80004c70:	00007517          	auipc	a0,0x7
    80004c74:	c2050513          	addi	a0,a0,-992 # 8000b890 <lockPrint>
    80004c78:	ffffc097          	auipc	ra,0xffffc
    80004c7c:	4ac080e7          	jalr	1196(ra) # 80001124 <copy_and_swap>
    80004c80:	fe0514e3          	bnez	a0,80004c68 <_Z8printIntiii+0xe8>
    80004c84:	03813083          	ld	ra,56(sp)
    80004c88:	03013403          	ld	s0,48(sp)
    80004c8c:	02813483          	ld	s1,40(sp)
    80004c90:	02013903          	ld	s2,32(sp)
    80004c94:	01813983          	ld	s3,24(sp)
    80004c98:	04010113          	addi	sp,sp,64
    80004c9c:	00008067          	ret

0000000080004ca0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004ca0:	fe010113          	addi	sp,sp,-32
    80004ca4:	00113c23          	sd	ra,24(sp)
    80004ca8:	00813823          	sd	s0,16(sp)
    80004cac:	00913423          	sd	s1,8(sp)
    80004cb0:	01213023          	sd	s2,0(sp)
    80004cb4:	02010413          	addi	s0,sp,32
    80004cb8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004cbc:	00100793          	li	a5,1
    80004cc0:	02a7f863          	bgeu	a5,a0,80004cf0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004cc4:	00a00793          	li	a5,10
    80004cc8:	02f577b3          	remu	a5,a0,a5
    80004ccc:	02078e63          	beqz	a5,80004d08 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004cd0:	fff48513          	addi	a0,s1,-1
    80004cd4:	00000097          	auipc	ra,0x0
    80004cd8:	fcc080e7          	jalr	-52(ra) # 80004ca0 <_ZL9fibonaccim>
    80004cdc:	00050913          	mv	s2,a0
    80004ce0:	ffe48513          	addi	a0,s1,-2
    80004ce4:	00000097          	auipc	ra,0x0
    80004ce8:	fbc080e7          	jalr	-68(ra) # 80004ca0 <_ZL9fibonaccim>
    80004cec:	00a90533          	add	a0,s2,a0
}
    80004cf0:	01813083          	ld	ra,24(sp)
    80004cf4:	01013403          	ld	s0,16(sp)
    80004cf8:	00813483          	ld	s1,8(sp)
    80004cfc:	00013903          	ld	s2,0(sp)
    80004d00:	02010113          	addi	sp,sp,32
    80004d04:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004d08:	ffffd097          	auipc	ra,0xffffd
    80004d0c:	6d4080e7          	jalr	1748(ra) # 800023dc <_Z15thread_dispatchv>
    80004d10:	fc1ff06f          	j	80004cd0 <_ZL9fibonaccim+0x30>

0000000080004d14 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004d14:	fe010113          	addi	sp,sp,-32
    80004d18:	00113c23          	sd	ra,24(sp)
    80004d1c:	00813823          	sd	s0,16(sp)
    80004d20:	00913423          	sd	s1,8(sp)
    80004d24:	01213023          	sd	s2,0(sp)
    80004d28:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004d2c:	00a00493          	li	s1,10
    80004d30:	0400006f          	j	80004d70 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004d34:	00004517          	auipc	a0,0x4
    80004d38:	6d450513          	addi	a0,a0,1748 # 80009408 <_ZTV12ConsumerSync+0x28>
    80004d3c:	00000097          	auipc	ra,0x0
    80004d40:	c94080e7          	jalr	-876(ra) # 800049d0 <_Z11printStringPKc>
    80004d44:	00000613          	li	a2,0
    80004d48:	00a00593          	li	a1,10
    80004d4c:	00048513          	mv	a0,s1
    80004d50:	00000097          	auipc	ra,0x0
    80004d54:	e30080e7          	jalr	-464(ra) # 80004b80 <_Z8printIntiii>
    80004d58:	00005517          	auipc	a0,0x5
    80004d5c:	99850513          	addi	a0,a0,-1640 # 800096f0 <_ZTV7WorkerD+0x168>
    80004d60:	00000097          	auipc	ra,0x0
    80004d64:	c70080e7          	jalr	-912(ra) # 800049d0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004d68:	0014849b          	addiw	s1,s1,1
    80004d6c:	0ff4f493          	andi	s1,s1,255
    80004d70:	00c00793          	li	a5,12
    80004d74:	fc97f0e3          	bgeu	a5,s1,80004d34 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004d78:	00004517          	auipc	a0,0x4
    80004d7c:	69850513          	addi	a0,a0,1688 # 80009410 <_ZTV12ConsumerSync+0x30>
    80004d80:	00000097          	auipc	ra,0x0
    80004d84:	c50080e7          	jalr	-944(ra) # 800049d0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004d88:	00500313          	li	t1,5
    thread_dispatch();
    80004d8c:	ffffd097          	auipc	ra,0xffffd
    80004d90:	650080e7          	jalr	1616(ra) # 800023dc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004d94:	01000513          	li	a0,16
    80004d98:	00000097          	auipc	ra,0x0
    80004d9c:	f08080e7          	jalr	-248(ra) # 80004ca0 <_ZL9fibonaccim>
    80004da0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004da4:	00004517          	auipc	a0,0x4
    80004da8:	67c50513          	addi	a0,a0,1660 # 80009420 <_ZTV12ConsumerSync+0x40>
    80004dac:	00000097          	auipc	ra,0x0
    80004db0:	c24080e7          	jalr	-988(ra) # 800049d0 <_Z11printStringPKc>
    80004db4:	00000613          	li	a2,0
    80004db8:	00a00593          	li	a1,10
    80004dbc:	0009051b          	sext.w	a0,s2
    80004dc0:	00000097          	auipc	ra,0x0
    80004dc4:	dc0080e7          	jalr	-576(ra) # 80004b80 <_Z8printIntiii>
    80004dc8:	00005517          	auipc	a0,0x5
    80004dcc:	92850513          	addi	a0,a0,-1752 # 800096f0 <_ZTV7WorkerD+0x168>
    80004dd0:	00000097          	auipc	ra,0x0
    80004dd4:	c00080e7          	jalr	-1024(ra) # 800049d0 <_Z11printStringPKc>
    80004dd8:	0400006f          	j	80004e18 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004ddc:	00004517          	auipc	a0,0x4
    80004de0:	62c50513          	addi	a0,a0,1580 # 80009408 <_ZTV12ConsumerSync+0x28>
    80004de4:	00000097          	auipc	ra,0x0
    80004de8:	bec080e7          	jalr	-1044(ra) # 800049d0 <_Z11printStringPKc>
    80004dec:	00000613          	li	a2,0
    80004df0:	00a00593          	li	a1,10
    80004df4:	00048513          	mv	a0,s1
    80004df8:	00000097          	auipc	ra,0x0
    80004dfc:	d88080e7          	jalr	-632(ra) # 80004b80 <_Z8printIntiii>
    80004e00:	00005517          	auipc	a0,0x5
    80004e04:	8f050513          	addi	a0,a0,-1808 # 800096f0 <_ZTV7WorkerD+0x168>
    80004e08:	00000097          	auipc	ra,0x0
    80004e0c:	bc8080e7          	jalr	-1080(ra) # 800049d0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004e10:	0014849b          	addiw	s1,s1,1
    80004e14:	0ff4f493          	andi	s1,s1,255
    80004e18:	00f00793          	li	a5,15
    80004e1c:	fc97f0e3          	bgeu	a5,s1,80004ddc <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004e20:	00004517          	auipc	a0,0x4
    80004e24:	61050513          	addi	a0,a0,1552 # 80009430 <_ZTV12ConsumerSync+0x50>
    80004e28:	00000097          	auipc	ra,0x0
    80004e2c:	ba8080e7          	jalr	-1112(ra) # 800049d0 <_Z11printStringPKc>
    finishedD = true;
    80004e30:	00100793          	li	a5,1
    80004e34:	00007717          	auipc	a4,0x7
    80004e38:	a6f70223          	sb	a5,-1436(a4) # 8000b898 <_ZL9finishedD>
    thread_dispatch();
    80004e3c:	ffffd097          	auipc	ra,0xffffd
    80004e40:	5a0080e7          	jalr	1440(ra) # 800023dc <_Z15thread_dispatchv>
}
    80004e44:	01813083          	ld	ra,24(sp)
    80004e48:	01013403          	ld	s0,16(sp)
    80004e4c:	00813483          	ld	s1,8(sp)
    80004e50:	00013903          	ld	s2,0(sp)
    80004e54:	02010113          	addi	sp,sp,32
    80004e58:	00008067          	ret

0000000080004e5c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004e5c:	fe010113          	addi	sp,sp,-32
    80004e60:	00113c23          	sd	ra,24(sp)
    80004e64:	00813823          	sd	s0,16(sp)
    80004e68:	00913423          	sd	s1,8(sp)
    80004e6c:	01213023          	sd	s2,0(sp)
    80004e70:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004e74:	00000493          	li	s1,0
    80004e78:	0400006f          	j	80004eb8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004e7c:	00004517          	auipc	a0,0x4
    80004e80:	5c450513          	addi	a0,a0,1476 # 80009440 <_ZTV12ConsumerSync+0x60>
    80004e84:	00000097          	auipc	ra,0x0
    80004e88:	b4c080e7          	jalr	-1204(ra) # 800049d0 <_Z11printStringPKc>
    80004e8c:	00000613          	li	a2,0
    80004e90:	00a00593          	li	a1,10
    80004e94:	00048513          	mv	a0,s1
    80004e98:	00000097          	auipc	ra,0x0
    80004e9c:	ce8080e7          	jalr	-792(ra) # 80004b80 <_Z8printIntiii>
    80004ea0:	00005517          	auipc	a0,0x5
    80004ea4:	85050513          	addi	a0,a0,-1968 # 800096f0 <_ZTV7WorkerD+0x168>
    80004ea8:	00000097          	auipc	ra,0x0
    80004eac:	b28080e7          	jalr	-1240(ra) # 800049d0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004eb0:	0014849b          	addiw	s1,s1,1
    80004eb4:	0ff4f493          	andi	s1,s1,255
    80004eb8:	00200793          	li	a5,2
    80004ebc:	fc97f0e3          	bgeu	a5,s1,80004e7c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004ec0:	00004517          	auipc	a0,0x4
    80004ec4:	58850513          	addi	a0,a0,1416 # 80009448 <_ZTV12ConsumerSync+0x68>
    80004ec8:	00000097          	auipc	ra,0x0
    80004ecc:	b08080e7          	jalr	-1272(ra) # 800049d0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004ed0:	00700313          	li	t1,7
    thread_dispatch();
    80004ed4:	ffffd097          	auipc	ra,0xffffd
    80004ed8:	508080e7          	jalr	1288(ra) # 800023dc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004edc:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004ee0:	00004517          	auipc	a0,0x4
    80004ee4:	57850513          	addi	a0,a0,1400 # 80009458 <_ZTV12ConsumerSync+0x78>
    80004ee8:	00000097          	auipc	ra,0x0
    80004eec:	ae8080e7          	jalr	-1304(ra) # 800049d0 <_Z11printStringPKc>
    80004ef0:	00000613          	li	a2,0
    80004ef4:	00a00593          	li	a1,10
    80004ef8:	0009051b          	sext.w	a0,s2
    80004efc:	00000097          	auipc	ra,0x0
    80004f00:	c84080e7          	jalr	-892(ra) # 80004b80 <_Z8printIntiii>
    80004f04:	00004517          	auipc	a0,0x4
    80004f08:	7ec50513          	addi	a0,a0,2028 # 800096f0 <_ZTV7WorkerD+0x168>
    80004f0c:	00000097          	auipc	ra,0x0
    80004f10:	ac4080e7          	jalr	-1340(ra) # 800049d0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004f14:	00c00513          	li	a0,12
    80004f18:	00000097          	auipc	ra,0x0
    80004f1c:	d88080e7          	jalr	-632(ra) # 80004ca0 <_ZL9fibonaccim>
    80004f20:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004f24:	00004517          	auipc	a0,0x4
    80004f28:	53c50513          	addi	a0,a0,1340 # 80009460 <_ZTV12ConsumerSync+0x80>
    80004f2c:	00000097          	auipc	ra,0x0
    80004f30:	aa4080e7          	jalr	-1372(ra) # 800049d0 <_Z11printStringPKc>
    80004f34:	00000613          	li	a2,0
    80004f38:	00a00593          	li	a1,10
    80004f3c:	0009051b          	sext.w	a0,s2
    80004f40:	00000097          	auipc	ra,0x0
    80004f44:	c40080e7          	jalr	-960(ra) # 80004b80 <_Z8printIntiii>
    80004f48:	00004517          	auipc	a0,0x4
    80004f4c:	7a850513          	addi	a0,a0,1960 # 800096f0 <_ZTV7WorkerD+0x168>
    80004f50:	00000097          	auipc	ra,0x0
    80004f54:	a80080e7          	jalr	-1408(ra) # 800049d0 <_Z11printStringPKc>
    80004f58:	0400006f          	j	80004f98 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004f5c:	00004517          	auipc	a0,0x4
    80004f60:	4e450513          	addi	a0,a0,1252 # 80009440 <_ZTV12ConsumerSync+0x60>
    80004f64:	00000097          	auipc	ra,0x0
    80004f68:	a6c080e7          	jalr	-1428(ra) # 800049d0 <_Z11printStringPKc>
    80004f6c:	00000613          	li	a2,0
    80004f70:	00a00593          	li	a1,10
    80004f74:	00048513          	mv	a0,s1
    80004f78:	00000097          	auipc	ra,0x0
    80004f7c:	c08080e7          	jalr	-1016(ra) # 80004b80 <_Z8printIntiii>
    80004f80:	00004517          	auipc	a0,0x4
    80004f84:	77050513          	addi	a0,a0,1904 # 800096f0 <_ZTV7WorkerD+0x168>
    80004f88:	00000097          	auipc	ra,0x0
    80004f8c:	a48080e7          	jalr	-1464(ra) # 800049d0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004f90:	0014849b          	addiw	s1,s1,1
    80004f94:	0ff4f493          	andi	s1,s1,255
    80004f98:	00500793          	li	a5,5
    80004f9c:	fc97f0e3          	bgeu	a5,s1,80004f5c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004fa0:	00004517          	auipc	a0,0x4
    80004fa4:	4d050513          	addi	a0,a0,1232 # 80009470 <_ZTV12ConsumerSync+0x90>
    80004fa8:	00000097          	auipc	ra,0x0
    80004fac:	a28080e7          	jalr	-1496(ra) # 800049d0 <_Z11printStringPKc>
    finishedC = true;
    80004fb0:	00100793          	li	a5,1
    80004fb4:	00007717          	auipc	a4,0x7
    80004fb8:	8ef702a3          	sb	a5,-1819(a4) # 8000b899 <_ZL9finishedC>
    thread_dispatch();
    80004fbc:	ffffd097          	auipc	ra,0xffffd
    80004fc0:	420080e7          	jalr	1056(ra) # 800023dc <_Z15thread_dispatchv>
}
    80004fc4:	01813083          	ld	ra,24(sp)
    80004fc8:	01013403          	ld	s0,16(sp)
    80004fcc:	00813483          	ld	s1,8(sp)
    80004fd0:	00013903          	ld	s2,0(sp)
    80004fd4:	02010113          	addi	sp,sp,32
    80004fd8:	00008067          	ret

0000000080004fdc <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004fdc:	fe010113          	addi	sp,sp,-32
    80004fe0:	00113c23          	sd	ra,24(sp)
    80004fe4:	00813823          	sd	s0,16(sp)
    80004fe8:	00913423          	sd	s1,8(sp)
    80004fec:	01213023          	sd	s2,0(sp)
    80004ff0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004ff4:	00000913          	li	s2,0
    80004ff8:	0400006f          	j	80005038 <_ZL11workerBodyBPv+0x5c>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004ffc:	00170713          	addi	a4,a4,1
    80005000:	000077b7          	lui	a5,0x7
    80005004:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005008:	fee7fae3          	bgeu	a5,a4,80004ffc <_ZL11workerBodyBPv+0x20>
            thread_dispatch();
    8000500c:	ffffd097          	auipc	ra,0xffffd
    80005010:	3d0080e7          	jalr	976(ra) # 800023dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005014:	00148493          	addi	s1,s1,1
    80005018:	000027b7          	lui	a5,0x2
    8000501c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005020:	0097e663          	bltu	a5,s1,8000502c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005024:	00000713          	li	a4,0
    80005028:	fd9ff06f          	j	80005000 <_ZL11workerBodyBPv+0x24>
        if (i == 10) {
    8000502c:	00a00793          	li	a5,10
    80005030:	04f90663          	beq	s2,a5,8000507c <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005034:	00190913          	addi	s2,s2,1
    80005038:	00f00793          	li	a5,15
    8000503c:	0527e463          	bltu	a5,s2,80005084 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005040:	00004517          	auipc	a0,0x4
    80005044:	44050513          	addi	a0,a0,1088 # 80009480 <_ZTV12ConsumerSync+0xa0>
    80005048:	00000097          	auipc	ra,0x0
    8000504c:	988080e7          	jalr	-1656(ra) # 800049d0 <_Z11printStringPKc>
    80005050:	00000613          	li	a2,0
    80005054:	00a00593          	li	a1,10
    80005058:	0009051b          	sext.w	a0,s2
    8000505c:	00000097          	auipc	ra,0x0
    80005060:	b24080e7          	jalr	-1244(ra) # 80004b80 <_Z8printIntiii>
    80005064:	00004517          	auipc	a0,0x4
    80005068:	68c50513          	addi	a0,a0,1676 # 800096f0 <_ZTV7WorkerD+0x168>
    8000506c:	00000097          	auipc	ra,0x0
    80005070:	964080e7          	jalr	-1692(ra) # 800049d0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005074:	00000493          	li	s1,0
    80005078:	fa1ff06f          	j	80005018 <_ZL11workerBodyBPv+0x3c>
            asm volatile("csrr t6, sepc");
    8000507c:	14102ff3          	csrr	t6,sepc
    80005080:	fb5ff06f          	j	80005034 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005084:	00004517          	auipc	a0,0x4
    80005088:	40450513          	addi	a0,a0,1028 # 80009488 <_ZTV12ConsumerSync+0xa8>
    8000508c:	00000097          	auipc	ra,0x0
    80005090:	944080e7          	jalr	-1724(ra) # 800049d0 <_Z11printStringPKc>
    finishedB = true;
    80005094:	00100793          	li	a5,1
    80005098:	00007717          	auipc	a4,0x7
    8000509c:	80f70123          	sb	a5,-2046(a4) # 8000b89a <_ZL9finishedB>
    thread_dispatch();
    800050a0:	ffffd097          	auipc	ra,0xffffd
    800050a4:	33c080e7          	jalr	828(ra) # 800023dc <_Z15thread_dispatchv>
}
    800050a8:	01813083          	ld	ra,24(sp)
    800050ac:	01013403          	ld	s0,16(sp)
    800050b0:	00813483          	ld	s1,8(sp)
    800050b4:	00013903          	ld	s2,0(sp)
    800050b8:	02010113          	addi	sp,sp,32
    800050bc:	00008067          	ret

00000000800050c0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800050c0:	fe010113          	addi	sp,sp,-32
    800050c4:	00113c23          	sd	ra,24(sp)
    800050c8:	00813823          	sd	s0,16(sp)
    800050cc:	00913423          	sd	s1,8(sp)
    800050d0:	01213023          	sd	s2,0(sp)
    800050d4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800050d8:	00000913          	li	s2,0
    800050dc:	0380006f          	j	80005114 <_ZL11workerBodyAPv+0x54>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800050e0:	00170713          	addi	a4,a4,1
    800050e4:	000077b7          	lui	a5,0x7
    800050e8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800050ec:	fee7fae3          	bgeu	a5,a4,800050e0 <_ZL11workerBodyAPv+0x20>
            thread_dispatch();
    800050f0:	ffffd097          	auipc	ra,0xffffd
    800050f4:	2ec080e7          	jalr	748(ra) # 800023dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800050f8:	00148493          	addi	s1,s1,1
    800050fc:	000027b7          	lui	a5,0x2
    80005100:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005104:	0097e663          	bltu	a5,s1,80005110 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005108:	00000713          	li	a4,0
    8000510c:	fd9ff06f          	j	800050e4 <_ZL11workerBodyAPv+0x24>
    for (uint64 i = 0; i < 10; i++) {
    80005110:	00190913          	addi	s2,s2,1
    80005114:	00900793          	li	a5,9
    80005118:	0527e063          	bltu	a5,s2,80005158 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000511c:	00004517          	auipc	a0,0x4
    80005120:	37c50513          	addi	a0,a0,892 # 80009498 <_ZTV12ConsumerSync+0xb8>
    80005124:	00000097          	auipc	ra,0x0
    80005128:	8ac080e7          	jalr	-1876(ra) # 800049d0 <_Z11printStringPKc>
    8000512c:	00000613          	li	a2,0
    80005130:	00a00593          	li	a1,10
    80005134:	0009051b          	sext.w	a0,s2
    80005138:	00000097          	auipc	ra,0x0
    8000513c:	a48080e7          	jalr	-1464(ra) # 80004b80 <_Z8printIntiii>
    80005140:	00004517          	auipc	a0,0x4
    80005144:	5b050513          	addi	a0,a0,1456 # 800096f0 <_ZTV7WorkerD+0x168>
    80005148:	00000097          	auipc	ra,0x0
    8000514c:	888080e7          	jalr	-1912(ra) # 800049d0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005150:	00000493          	li	s1,0
    80005154:	fa9ff06f          	j	800050fc <_ZL11workerBodyAPv+0x3c>
    printString("A finished!\n");
    80005158:	00004517          	auipc	a0,0x4
    8000515c:	31850513          	addi	a0,a0,792 # 80009470 <_ZTV12ConsumerSync+0x90>
    80005160:	00000097          	auipc	ra,0x0
    80005164:	870080e7          	jalr	-1936(ra) # 800049d0 <_Z11printStringPKc>
    finishedA = true;
    80005168:	00100793          	li	a5,1
    8000516c:	00006717          	auipc	a4,0x6
    80005170:	72f707a3          	sb	a5,1839(a4) # 8000b89b <_ZL9finishedA>
}
    80005174:	01813083          	ld	ra,24(sp)
    80005178:	01013403          	ld	s0,16(sp)
    8000517c:	00813483          	ld	s1,8(sp)
    80005180:	00013903          	ld	s2,0(sp)
    80005184:	02010113          	addi	sp,sp,32
    80005188:	00008067          	ret

000000008000518c <_Z16System_Mode_testv>:


void System_Mode_test() {
    8000518c:	fd010113          	addi	sp,sp,-48
    80005190:	02113423          	sd	ra,40(sp)
    80005194:	02813023          	sd	s0,32(sp)
    80005198:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000519c:	00000613          	li	a2,0
    800051a0:	00000597          	auipc	a1,0x0
    800051a4:	f2058593          	addi	a1,a1,-224 # 800050c0 <_ZL11workerBodyAPv>
    800051a8:	fd040513          	addi	a0,s0,-48
    800051ac:	ffffd097          	auipc	ra,0xffffd
    800051b0:	1a4080e7          	jalr	420(ra) # 80002350 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800051b4:	00004517          	auipc	a0,0x4
    800051b8:	2ec50513          	addi	a0,a0,748 # 800094a0 <_ZTV12ConsumerSync+0xc0>
    800051bc:	00000097          	auipc	ra,0x0
    800051c0:	814080e7          	jalr	-2028(ra) # 800049d0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800051c4:	00000613          	li	a2,0
    800051c8:	00000597          	auipc	a1,0x0
    800051cc:	e1458593          	addi	a1,a1,-492 # 80004fdc <_ZL11workerBodyBPv>
    800051d0:	fd840513          	addi	a0,s0,-40
    800051d4:	ffffd097          	auipc	ra,0xffffd
    800051d8:	17c080e7          	jalr	380(ra) # 80002350 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    800051dc:	00004517          	auipc	a0,0x4
    800051e0:	2dc50513          	addi	a0,a0,732 # 800094b8 <_ZTV12ConsumerSync+0xd8>
    800051e4:	fffff097          	auipc	ra,0xfffff
    800051e8:	7ec080e7          	jalr	2028(ra) # 800049d0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800051ec:	00000613          	li	a2,0
    800051f0:	00000597          	auipc	a1,0x0
    800051f4:	c6c58593          	addi	a1,a1,-916 # 80004e5c <_ZL11workerBodyCPv>
    800051f8:	fe040513          	addi	a0,s0,-32
    800051fc:	ffffd097          	auipc	ra,0xffffd
    80005200:	154080e7          	jalr	340(ra) # 80002350 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80005204:	00004517          	auipc	a0,0x4
    80005208:	2cc50513          	addi	a0,a0,716 # 800094d0 <_ZTV12ConsumerSync+0xf0>
    8000520c:	fffff097          	auipc	ra,0xfffff
    80005210:	7c4080e7          	jalr	1988(ra) # 800049d0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005214:	00000613          	li	a2,0
    80005218:	00000597          	auipc	a1,0x0
    8000521c:	afc58593          	addi	a1,a1,-1284 # 80004d14 <_ZL11workerBodyDPv>
    80005220:	fe840513          	addi	a0,s0,-24
    80005224:	ffffd097          	auipc	ra,0xffffd
    80005228:	12c080e7          	jalr	300(ra) # 80002350 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    8000522c:	00004517          	auipc	a0,0x4
    80005230:	2bc50513          	addi	a0,a0,700 # 800094e8 <_ZTV12ConsumerSync+0x108>
    80005234:	fffff097          	auipc	ra,0xfffff
    80005238:	79c080e7          	jalr	1948(ra) # 800049d0 <_Z11printStringPKc>
    8000523c:	00c0006f          	j	80005248 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005240:	ffffd097          	auipc	ra,0xffffd
    80005244:	19c080e7          	jalr	412(ra) # 800023dc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005248:	00006797          	auipc	a5,0x6
    8000524c:	6537c783          	lbu	a5,1619(a5) # 8000b89b <_ZL9finishedA>
    80005250:	fe0788e3          	beqz	a5,80005240 <_Z16System_Mode_testv+0xb4>
    80005254:	00006797          	auipc	a5,0x6
    80005258:	6467c783          	lbu	a5,1606(a5) # 8000b89a <_ZL9finishedB>
    8000525c:	fe0782e3          	beqz	a5,80005240 <_Z16System_Mode_testv+0xb4>
    80005260:	00006797          	auipc	a5,0x6
    80005264:	6397c783          	lbu	a5,1593(a5) # 8000b899 <_ZL9finishedC>
    80005268:	fc078ce3          	beqz	a5,80005240 <_Z16System_Mode_testv+0xb4>
    8000526c:	00006797          	auipc	a5,0x6
    80005270:	62c7c783          	lbu	a5,1580(a5) # 8000b898 <_ZL9finishedD>
    80005274:	fc0786e3          	beqz	a5,80005240 <_Z16System_Mode_testv+0xb4>
    }

}
    80005278:	02813083          	ld	ra,40(sp)
    8000527c:	02013403          	ld	s0,32(sp)
    80005280:	03010113          	addi	sp,sp,48
    80005284:	00008067          	ret

0000000080005288 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005288:	fe010113          	addi	sp,sp,-32
    8000528c:	00113c23          	sd	ra,24(sp)
    80005290:	00813823          	sd	s0,16(sp)
    80005294:	00913423          	sd	s1,8(sp)
    80005298:	01213023          	sd	s2,0(sp)
    8000529c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800052a0:	00053903          	ld	s2,0(a0)
    int i = 6;
    800052a4:	00600493          	li	s1,6
    800052a8:	0440006f          	j	800052ec <_ZL9sleepyRunPv+0x64>
    while (--i > 0) {

        printString("Hello ");
    800052ac:	00004517          	auipc	a0,0x4
    800052b0:	25450513          	addi	a0,a0,596 # 80009500 <_ZTV12ConsumerSync+0x120>
    800052b4:	fffff097          	auipc	ra,0xfffff
    800052b8:	71c080e7          	jalr	1820(ra) # 800049d0 <_Z11printStringPKc>
        printInt(sleep_time);
    800052bc:	00000613          	li	a2,0
    800052c0:	00a00593          	li	a1,10
    800052c4:	0009051b          	sext.w	a0,s2
    800052c8:	00000097          	auipc	ra,0x0
    800052cc:	8b8080e7          	jalr	-1864(ra) # 80004b80 <_Z8printIntiii>
        printString(" !\n");
    800052d0:	00004517          	auipc	a0,0x4
    800052d4:	23850513          	addi	a0,a0,568 # 80009508 <_ZTV12ConsumerSync+0x128>
    800052d8:	fffff097          	auipc	ra,0xfffff
    800052dc:	6f8080e7          	jalr	1784(ra) # 800049d0 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800052e0:	00090513          	mv	a0,s2
    800052e4:	ffffd097          	auipc	ra,0xffffd
    800052e8:	2c4080e7          	jalr	708(ra) # 800025a8 <_Z10time_sleepm>
    while (--i > 0) {
    800052ec:	fff4849b          	addiw	s1,s1,-1
    800052f0:	fa904ee3          	bgtz	s1,800052ac <_ZL9sleepyRunPv+0x24>
    }
    finished[sleep_time/10-1] = true;
    800052f4:	00a00793          	li	a5,10
    800052f8:	02f95933          	divu	s2,s2,a5
    800052fc:	fff90913          	addi	s2,s2,-1
    80005300:	00006797          	auipc	a5,0x6
    80005304:	5a078793          	addi	a5,a5,1440 # 8000b8a0 <_ZL8finished>
    80005308:	01278933          	add	s2,a5,s2
    8000530c:	00100793          	li	a5,1
    80005310:	00f90023          	sb	a5,0(s2)
}
    80005314:	01813083          	ld	ra,24(sp)
    80005318:	01013403          	ld	s0,16(sp)
    8000531c:	00813483          	ld	s1,8(sp)
    80005320:	00013903          	ld	s2,0(sp)
    80005324:	02010113          	addi	sp,sp,32
    80005328:	00008067          	ret

000000008000532c <_Z12testSleepingv>:

void testSleeping() {
    8000532c:	fc010113          	addi	sp,sp,-64
    80005330:	02113c23          	sd	ra,56(sp)
    80005334:	02813823          	sd	s0,48(sp)
    80005338:	02913423          	sd	s1,40(sp)
    8000533c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005340:	00a00793          	li	a5,10
    80005344:	fcf43823          	sd	a5,-48(s0)
    80005348:	01400793          	li	a5,20
    8000534c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005350:	00000493          	li	s1,0
    80005354:	00100793          	li	a5,1
    80005358:	0297c863          	blt	a5,s1,80005388 <_Z12testSleepingv+0x5c>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000535c:	00349513          	slli	a0,s1,0x3
    80005360:	fd040793          	addi	a5,s0,-48
    80005364:	00a78633          	add	a2,a5,a0
    80005368:	00000597          	auipc	a1,0x0
    8000536c:	f2058593          	addi	a1,a1,-224 # 80005288 <_ZL9sleepyRunPv>
    80005370:	fc040793          	addi	a5,s0,-64
    80005374:	00a78533          	add	a0,a5,a0
    80005378:	ffffd097          	auipc	ra,0xffffd
    8000537c:	fd8080e7          	jalr	-40(ra) # 80002350 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005380:	0014849b          	addiw	s1,s1,1
    80005384:	fd1ff06f          	j	80005354 <_Z12testSleepingv+0x28>
    }

    while (!(finished[0] && finished[1])) {}
    80005388:	00006797          	auipc	a5,0x6
    8000538c:	5187c783          	lbu	a5,1304(a5) # 8000b8a0 <_ZL8finished>
    80005390:	fe078ce3          	beqz	a5,80005388 <_Z12testSleepingv+0x5c>
    80005394:	00006797          	auipc	a5,0x6
    80005398:	50d7c783          	lbu	a5,1293(a5) # 8000b8a1 <_ZL8finished+0x1>
    8000539c:	fe0786e3          	beqz	a5,80005388 <_Z12testSleepingv+0x5c>
}
    800053a0:	03813083          	ld	ra,56(sp)
    800053a4:	03013403          	ld	s0,48(sp)
    800053a8:	02813483          	ld	s1,40(sp)
    800053ac:	04010113          	addi	sp,sp,64
    800053b0:	00008067          	ret

00000000800053b4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800053b4:	fe010113          	addi	sp,sp,-32
    800053b8:	00113c23          	sd	ra,24(sp)
    800053bc:	00813823          	sd	s0,16(sp)
    800053c0:	00913423          	sd	s1,8(sp)
    800053c4:	01213023          	sd	s2,0(sp)
    800053c8:	02010413          	addi	s0,sp,32
    800053cc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800053d0:	00100793          	li	a5,1
    800053d4:	02a7f863          	bgeu	a5,a0,80005404 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800053d8:	00a00793          	li	a5,10
    800053dc:	02f577b3          	remu	a5,a0,a5
    800053e0:	02078e63          	beqz	a5,8000541c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800053e4:	fff48513          	addi	a0,s1,-1
    800053e8:	00000097          	auipc	ra,0x0
    800053ec:	fcc080e7          	jalr	-52(ra) # 800053b4 <_ZL9fibonaccim>
    800053f0:	00050913          	mv	s2,a0
    800053f4:	ffe48513          	addi	a0,s1,-2
    800053f8:	00000097          	auipc	ra,0x0
    800053fc:	fbc080e7          	jalr	-68(ra) # 800053b4 <_ZL9fibonaccim>
    80005400:	00a90533          	add	a0,s2,a0
}
    80005404:	01813083          	ld	ra,24(sp)
    80005408:	01013403          	ld	s0,16(sp)
    8000540c:	00813483          	ld	s1,8(sp)
    80005410:	00013903          	ld	s2,0(sp)
    80005414:	02010113          	addi	sp,sp,32
    80005418:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000541c:	ffffd097          	auipc	ra,0xffffd
    80005420:	fc0080e7          	jalr	-64(ra) # 800023dc <_Z15thread_dispatchv>
    80005424:	fc1ff06f          	j	800053e4 <_ZL9fibonaccim+0x30>

0000000080005428 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80005428:	fe010113          	addi	sp,sp,-32
    8000542c:	00113c23          	sd	ra,24(sp)
    80005430:	00813823          	sd	s0,16(sp)
    80005434:	00913423          	sd	s1,8(sp)
    80005438:	01213023          	sd	s2,0(sp)
    8000543c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005440:	00000913          	li	s2,0
    80005444:	0380006f          	j	8000547c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005448:	00170713          	addi	a4,a4,1
    8000544c:	000077b7          	lui	a5,0x7
    80005450:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005454:	fee7fae3          	bgeu	a5,a4,80005448 <_ZN7WorkerA11workerBodyAEPv+0x20>
            thread_dispatch();
    80005458:	ffffd097          	auipc	ra,0xffffd
    8000545c:	f84080e7          	jalr	-124(ra) # 800023dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005460:	00148493          	addi	s1,s1,1
    80005464:	000027b7          	lui	a5,0x2
    80005468:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000546c:	0097e663          	bltu	a5,s1,80005478 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005470:	00000713          	li	a4,0
    80005474:	fd9ff06f          	j	8000544c <_ZN7WorkerA11workerBodyAEPv+0x24>
    for (uint64 i = 0; i < 10; i++) {
    80005478:	00190913          	addi	s2,s2,1
    8000547c:	00900793          	li	a5,9
    80005480:	0527e063          	bltu	a5,s2,800054c0 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005484:	00004517          	auipc	a0,0x4
    80005488:	01450513          	addi	a0,a0,20 # 80009498 <_ZTV12ConsumerSync+0xb8>
    8000548c:	fffff097          	auipc	ra,0xfffff
    80005490:	544080e7          	jalr	1348(ra) # 800049d0 <_Z11printStringPKc>
    80005494:	00000613          	li	a2,0
    80005498:	00a00593          	li	a1,10
    8000549c:	0009051b          	sext.w	a0,s2
    800054a0:	fffff097          	auipc	ra,0xfffff
    800054a4:	6e0080e7          	jalr	1760(ra) # 80004b80 <_Z8printIntiii>
    800054a8:	00004517          	auipc	a0,0x4
    800054ac:	24850513          	addi	a0,a0,584 # 800096f0 <_ZTV7WorkerD+0x168>
    800054b0:	fffff097          	auipc	ra,0xfffff
    800054b4:	520080e7          	jalr	1312(ra) # 800049d0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800054b8:	00000493          	li	s1,0
    800054bc:	fa9ff06f          	j	80005464 <_ZN7WorkerA11workerBodyAEPv+0x3c>
        }
    }
    printString("A finished!\n");
    800054c0:	00004517          	auipc	a0,0x4
    800054c4:	fb050513          	addi	a0,a0,-80 # 80009470 <_ZTV12ConsumerSync+0x90>
    800054c8:	fffff097          	auipc	ra,0xfffff
    800054cc:	508080e7          	jalr	1288(ra) # 800049d0 <_Z11printStringPKc>
    finishedA = true;
    800054d0:	00100793          	li	a5,1
    800054d4:	00006717          	auipc	a4,0x6
    800054d8:	3cf708a3          	sb	a5,977(a4) # 8000b8a5 <_ZL9finishedA>
}
    800054dc:	01813083          	ld	ra,24(sp)
    800054e0:	01013403          	ld	s0,16(sp)
    800054e4:	00813483          	ld	s1,8(sp)
    800054e8:	00013903          	ld	s2,0(sp)
    800054ec:	02010113          	addi	sp,sp,32
    800054f0:	00008067          	ret

00000000800054f4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800054f4:	fe010113          	addi	sp,sp,-32
    800054f8:	00113c23          	sd	ra,24(sp)
    800054fc:	00813823          	sd	s0,16(sp)
    80005500:	00913423          	sd	s1,8(sp)
    80005504:	01213023          	sd	s2,0(sp)
    80005508:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000550c:	00000913          	li	s2,0
    80005510:	0380006f          	j	80005548 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005514:	00170713          	addi	a4,a4,1
    80005518:	000077b7          	lui	a5,0x7
    8000551c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005520:	fee7fae3          	bgeu	a5,a4,80005514 <_ZN7WorkerB11workerBodyBEPv+0x20>
            thread_dispatch();
    80005524:	ffffd097          	auipc	ra,0xffffd
    80005528:	eb8080e7          	jalr	-328(ra) # 800023dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000552c:	00148493          	addi	s1,s1,1
    80005530:	000027b7          	lui	a5,0x2
    80005534:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005538:	0097e663          	bltu	a5,s1,80005544 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000553c:	00000713          	li	a4,0
    80005540:	fd9ff06f          	j	80005518 <_ZN7WorkerB11workerBodyBEPv+0x24>
    for (uint64 i = 0; i < 16; i++) {
    80005544:	00190913          	addi	s2,s2,1
    80005548:	00f00793          	li	a5,15
    8000554c:	0527e063          	bltu	a5,s2,8000558c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005550:	00004517          	auipc	a0,0x4
    80005554:	f3050513          	addi	a0,a0,-208 # 80009480 <_ZTV12ConsumerSync+0xa0>
    80005558:	fffff097          	auipc	ra,0xfffff
    8000555c:	478080e7          	jalr	1144(ra) # 800049d0 <_Z11printStringPKc>
    80005560:	00000613          	li	a2,0
    80005564:	00a00593          	li	a1,10
    80005568:	0009051b          	sext.w	a0,s2
    8000556c:	fffff097          	auipc	ra,0xfffff
    80005570:	614080e7          	jalr	1556(ra) # 80004b80 <_Z8printIntiii>
    80005574:	00004517          	auipc	a0,0x4
    80005578:	17c50513          	addi	a0,a0,380 # 800096f0 <_ZTV7WorkerD+0x168>
    8000557c:	fffff097          	auipc	ra,0xfffff
    80005580:	454080e7          	jalr	1108(ra) # 800049d0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005584:	00000493          	li	s1,0
    80005588:	fa9ff06f          	j	80005530 <_ZN7WorkerB11workerBodyBEPv+0x3c>
        }
    }
    printString("B finished!\n");
    8000558c:	00004517          	auipc	a0,0x4
    80005590:	efc50513          	addi	a0,a0,-260 # 80009488 <_ZTV12ConsumerSync+0xa8>
    80005594:	fffff097          	auipc	ra,0xfffff
    80005598:	43c080e7          	jalr	1084(ra) # 800049d0 <_Z11printStringPKc>
    finishedB = true;
    8000559c:	00100793          	li	a5,1
    800055a0:	00006717          	auipc	a4,0x6
    800055a4:	30f70223          	sb	a5,772(a4) # 8000b8a4 <_ZL9finishedB>
    thread_dispatch();
    800055a8:	ffffd097          	auipc	ra,0xffffd
    800055ac:	e34080e7          	jalr	-460(ra) # 800023dc <_Z15thread_dispatchv>
}
    800055b0:	01813083          	ld	ra,24(sp)
    800055b4:	01013403          	ld	s0,16(sp)
    800055b8:	00813483          	ld	s1,8(sp)
    800055bc:	00013903          	ld	s2,0(sp)
    800055c0:	02010113          	addi	sp,sp,32
    800055c4:	00008067          	ret

00000000800055c8 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800055c8:	fe010113          	addi	sp,sp,-32
    800055cc:	00113c23          	sd	ra,24(sp)
    800055d0:	00813823          	sd	s0,16(sp)
    800055d4:	00913423          	sd	s1,8(sp)
    800055d8:	01213023          	sd	s2,0(sp)
    800055dc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800055e0:	00000493          	li	s1,0
    800055e4:	0400006f          	j	80005624 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800055e8:	00004517          	auipc	a0,0x4
    800055ec:	e5850513          	addi	a0,a0,-424 # 80009440 <_ZTV12ConsumerSync+0x60>
    800055f0:	fffff097          	auipc	ra,0xfffff
    800055f4:	3e0080e7          	jalr	992(ra) # 800049d0 <_Z11printStringPKc>
    800055f8:	00000613          	li	a2,0
    800055fc:	00a00593          	li	a1,10
    80005600:	00048513          	mv	a0,s1
    80005604:	fffff097          	auipc	ra,0xfffff
    80005608:	57c080e7          	jalr	1404(ra) # 80004b80 <_Z8printIntiii>
    8000560c:	00004517          	auipc	a0,0x4
    80005610:	0e450513          	addi	a0,a0,228 # 800096f0 <_ZTV7WorkerD+0x168>
    80005614:	fffff097          	auipc	ra,0xfffff
    80005618:	3bc080e7          	jalr	956(ra) # 800049d0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000561c:	0014849b          	addiw	s1,s1,1
    80005620:	0ff4f493          	andi	s1,s1,255
    80005624:	00200793          	li	a5,2
    80005628:	fc97f0e3          	bgeu	a5,s1,800055e8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    8000562c:	00004517          	auipc	a0,0x4
    80005630:	e1c50513          	addi	a0,a0,-484 # 80009448 <_ZTV12ConsumerSync+0x68>
    80005634:	fffff097          	auipc	ra,0xfffff
    80005638:	39c080e7          	jalr	924(ra) # 800049d0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000563c:	00700313          	li	t1,7
    thread_dispatch();
    80005640:	ffffd097          	auipc	ra,0xffffd
    80005644:	d9c080e7          	jalr	-612(ra) # 800023dc <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005648:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000564c:	00004517          	auipc	a0,0x4
    80005650:	e0c50513          	addi	a0,a0,-500 # 80009458 <_ZTV12ConsumerSync+0x78>
    80005654:	fffff097          	auipc	ra,0xfffff
    80005658:	37c080e7          	jalr	892(ra) # 800049d0 <_Z11printStringPKc>
    8000565c:	00000613          	li	a2,0
    80005660:	00a00593          	li	a1,10
    80005664:	0009051b          	sext.w	a0,s2
    80005668:	fffff097          	auipc	ra,0xfffff
    8000566c:	518080e7          	jalr	1304(ra) # 80004b80 <_Z8printIntiii>
    80005670:	00004517          	auipc	a0,0x4
    80005674:	08050513          	addi	a0,a0,128 # 800096f0 <_ZTV7WorkerD+0x168>
    80005678:	fffff097          	auipc	ra,0xfffff
    8000567c:	358080e7          	jalr	856(ra) # 800049d0 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80005680:	00c00513          	li	a0,12
    80005684:	00000097          	auipc	ra,0x0
    80005688:	d30080e7          	jalr	-720(ra) # 800053b4 <_ZL9fibonaccim>
    8000568c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005690:	00004517          	auipc	a0,0x4
    80005694:	dd050513          	addi	a0,a0,-560 # 80009460 <_ZTV12ConsumerSync+0x80>
    80005698:	fffff097          	auipc	ra,0xfffff
    8000569c:	338080e7          	jalr	824(ra) # 800049d0 <_Z11printStringPKc>
    800056a0:	00000613          	li	a2,0
    800056a4:	00a00593          	li	a1,10
    800056a8:	0009051b          	sext.w	a0,s2
    800056ac:	fffff097          	auipc	ra,0xfffff
    800056b0:	4d4080e7          	jalr	1236(ra) # 80004b80 <_Z8printIntiii>
    800056b4:	00004517          	auipc	a0,0x4
    800056b8:	03c50513          	addi	a0,a0,60 # 800096f0 <_ZTV7WorkerD+0x168>
    800056bc:	fffff097          	auipc	ra,0xfffff
    800056c0:	314080e7          	jalr	788(ra) # 800049d0 <_Z11printStringPKc>
    800056c4:	0400006f          	j	80005704 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800056c8:	00004517          	auipc	a0,0x4
    800056cc:	d7850513          	addi	a0,a0,-648 # 80009440 <_ZTV12ConsumerSync+0x60>
    800056d0:	fffff097          	auipc	ra,0xfffff
    800056d4:	300080e7          	jalr	768(ra) # 800049d0 <_Z11printStringPKc>
    800056d8:	00000613          	li	a2,0
    800056dc:	00a00593          	li	a1,10
    800056e0:	00048513          	mv	a0,s1
    800056e4:	fffff097          	auipc	ra,0xfffff
    800056e8:	49c080e7          	jalr	1180(ra) # 80004b80 <_Z8printIntiii>
    800056ec:	00004517          	auipc	a0,0x4
    800056f0:	00450513          	addi	a0,a0,4 # 800096f0 <_ZTV7WorkerD+0x168>
    800056f4:	fffff097          	auipc	ra,0xfffff
    800056f8:	2dc080e7          	jalr	732(ra) # 800049d0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800056fc:	0014849b          	addiw	s1,s1,1
    80005700:	0ff4f493          	andi	s1,s1,255
    80005704:	00500793          	li	a5,5
    80005708:	fc97f0e3          	bgeu	a5,s1,800056c8 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    8000570c:	00004517          	auipc	a0,0x4
    80005710:	d6450513          	addi	a0,a0,-668 # 80009470 <_ZTV12ConsumerSync+0x90>
    80005714:	fffff097          	auipc	ra,0xfffff
    80005718:	2bc080e7          	jalr	700(ra) # 800049d0 <_Z11printStringPKc>
    finishedC = true;
    8000571c:	00100793          	li	a5,1
    80005720:	00006717          	auipc	a4,0x6
    80005724:	18f701a3          	sb	a5,387(a4) # 8000b8a3 <_ZL9finishedC>
    thread_dispatch();
    80005728:	ffffd097          	auipc	ra,0xffffd
    8000572c:	cb4080e7          	jalr	-844(ra) # 800023dc <_Z15thread_dispatchv>
}
    80005730:	01813083          	ld	ra,24(sp)
    80005734:	01013403          	ld	s0,16(sp)
    80005738:	00813483          	ld	s1,8(sp)
    8000573c:	00013903          	ld	s2,0(sp)
    80005740:	02010113          	addi	sp,sp,32
    80005744:	00008067          	ret

0000000080005748 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80005748:	fe010113          	addi	sp,sp,-32
    8000574c:	00113c23          	sd	ra,24(sp)
    80005750:	00813823          	sd	s0,16(sp)
    80005754:	00913423          	sd	s1,8(sp)
    80005758:	01213023          	sd	s2,0(sp)
    8000575c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005760:	00a00493          	li	s1,10
    80005764:	0400006f          	j	800057a4 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005768:	00004517          	auipc	a0,0x4
    8000576c:	ca050513          	addi	a0,a0,-864 # 80009408 <_ZTV12ConsumerSync+0x28>
    80005770:	fffff097          	auipc	ra,0xfffff
    80005774:	260080e7          	jalr	608(ra) # 800049d0 <_Z11printStringPKc>
    80005778:	00000613          	li	a2,0
    8000577c:	00a00593          	li	a1,10
    80005780:	00048513          	mv	a0,s1
    80005784:	fffff097          	auipc	ra,0xfffff
    80005788:	3fc080e7          	jalr	1020(ra) # 80004b80 <_Z8printIntiii>
    8000578c:	00004517          	auipc	a0,0x4
    80005790:	f6450513          	addi	a0,a0,-156 # 800096f0 <_ZTV7WorkerD+0x168>
    80005794:	fffff097          	auipc	ra,0xfffff
    80005798:	23c080e7          	jalr	572(ra) # 800049d0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000579c:	0014849b          	addiw	s1,s1,1
    800057a0:	0ff4f493          	andi	s1,s1,255
    800057a4:	00c00793          	li	a5,12
    800057a8:	fc97f0e3          	bgeu	a5,s1,80005768 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800057ac:	00004517          	auipc	a0,0x4
    800057b0:	c6450513          	addi	a0,a0,-924 # 80009410 <_ZTV12ConsumerSync+0x30>
    800057b4:	fffff097          	auipc	ra,0xfffff
    800057b8:	21c080e7          	jalr	540(ra) # 800049d0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800057bc:	00500313          	li	t1,5
    thread_dispatch();
    800057c0:	ffffd097          	auipc	ra,0xffffd
    800057c4:	c1c080e7          	jalr	-996(ra) # 800023dc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800057c8:	01000513          	li	a0,16
    800057cc:	00000097          	auipc	ra,0x0
    800057d0:	be8080e7          	jalr	-1048(ra) # 800053b4 <_ZL9fibonaccim>
    800057d4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800057d8:	00004517          	auipc	a0,0x4
    800057dc:	c4850513          	addi	a0,a0,-952 # 80009420 <_ZTV12ConsumerSync+0x40>
    800057e0:	fffff097          	auipc	ra,0xfffff
    800057e4:	1f0080e7          	jalr	496(ra) # 800049d0 <_Z11printStringPKc>
    800057e8:	00000613          	li	a2,0
    800057ec:	00a00593          	li	a1,10
    800057f0:	0009051b          	sext.w	a0,s2
    800057f4:	fffff097          	auipc	ra,0xfffff
    800057f8:	38c080e7          	jalr	908(ra) # 80004b80 <_Z8printIntiii>
    800057fc:	00004517          	auipc	a0,0x4
    80005800:	ef450513          	addi	a0,a0,-268 # 800096f0 <_ZTV7WorkerD+0x168>
    80005804:	fffff097          	auipc	ra,0xfffff
    80005808:	1cc080e7          	jalr	460(ra) # 800049d0 <_Z11printStringPKc>
    8000580c:	0400006f          	j	8000584c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005810:	00004517          	auipc	a0,0x4
    80005814:	bf850513          	addi	a0,a0,-1032 # 80009408 <_ZTV12ConsumerSync+0x28>
    80005818:	fffff097          	auipc	ra,0xfffff
    8000581c:	1b8080e7          	jalr	440(ra) # 800049d0 <_Z11printStringPKc>
    80005820:	00000613          	li	a2,0
    80005824:	00a00593          	li	a1,10
    80005828:	00048513          	mv	a0,s1
    8000582c:	fffff097          	auipc	ra,0xfffff
    80005830:	354080e7          	jalr	852(ra) # 80004b80 <_Z8printIntiii>
    80005834:	00004517          	auipc	a0,0x4
    80005838:	ebc50513          	addi	a0,a0,-324 # 800096f0 <_ZTV7WorkerD+0x168>
    8000583c:	fffff097          	auipc	ra,0xfffff
    80005840:	194080e7          	jalr	404(ra) # 800049d0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005844:	0014849b          	addiw	s1,s1,1
    80005848:	0ff4f493          	andi	s1,s1,255
    8000584c:	00f00793          	li	a5,15
    80005850:	fc97f0e3          	bgeu	a5,s1,80005810 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80005854:	00004517          	auipc	a0,0x4
    80005858:	bdc50513          	addi	a0,a0,-1060 # 80009430 <_ZTV12ConsumerSync+0x50>
    8000585c:	fffff097          	auipc	ra,0xfffff
    80005860:	174080e7          	jalr	372(ra) # 800049d0 <_Z11printStringPKc>
    finishedD = true;
    80005864:	00100793          	li	a5,1
    80005868:	00006717          	auipc	a4,0x6
    8000586c:	02f70d23          	sb	a5,58(a4) # 8000b8a2 <_ZL9finishedD>
    thread_dispatch();
    80005870:	ffffd097          	auipc	ra,0xffffd
    80005874:	b6c080e7          	jalr	-1172(ra) # 800023dc <_Z15thread_dispatchv>
}
    80005878:	01813083          	ld	ra,24(sp)
    8000587c:	01013403          	ld	s0,16(sp)
    80005880:	00813483          	ld	s1,8(sp)
    80005884:	00013903          	ld	s2,0(sp)
    80005888:	02010113          	addi	sp,sp,32
    8000588c:	00008067          	ret

0000000080005890 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80005890:	fc010113          	addi	sp,sp,-64
    80005894:	02113c23          	sd	ra,56(sp)
    80005898:	02813823          	sd	s0,48(sp)
    8000589c:	02913423          	sd	s1,40(sp)
    800058a0:	03213023          	sd	s2,32(sp)
    800058a4:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800058a8:	02000513          	li	a0,32
    800058ac:	ffffd097          	auipc	ra,0xffffd
    800058b0:	e78080e7          	jalr	-392(ra) # 80002724 <_Znwm>
    800058b4:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800058b8:	ffffd097          	auipc	ra,0xffffd
    800058bc:	044080e7          	jalr	68(ra) # 800028fc <_ZN6ThreadC1Ev>
    800058c0:	00004797          	auipc	a5,0x4
    800058c4:	c6078793          	addi	a5,a5,-928 # 80009520 <_ZTV7WorkerA+0x10>
    800058c8:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800058cc:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800058d0:	00004517          	auipc	a0,0x4
    800058d4:	bd050513          	addi	a0,a0,-1072 # 800094a0 <_ZTV12ConsumerSync+0xc0>
    800058d8:	fffff097          	auipc	ra,0xfffff
    800058dc:	0f8080e7          	jalr	248(ra) # 800049d0 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800058e0:	02000513          	li	a0,32
    800058e4:	ffffd097          	auipc	ra,0xffffd
    800058e8:	e40080e7          	jalr	-448(ra) # 80002724 <_Znwm>
    800058ec:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800058f0:	ffffd097          	auipc	ra,0xffffd
    800058f4:	00c080e7          	jalr	12(ra) # 800028fc <_ZN6ThreadC1Ev>
    800058f8:	00004797          	auipc	a5,0x4
    800058fc:	c5078793          	addi	a5,a5,-944 # 80009548 <_ZTV7WorkerB+0x10>
    80005900:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80005904:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80005908:	00004517          	auipc	a0,0x4
    8000590c:	bb050513          	addi	a0,a0,-1104 # 800094b8 <_ZTV12ConsumerSync+0xd8>
    80005910:	fffff097          	auipc	ra,0xfffff
    80005914:	0c0080e7          	jalr	192(ra) # 800049d0 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80005918:	02000513          	li	a0,32
    8000591c:	ffffd097          	auipc	ra,0xffffd
    80005920:	e08080e7          	jalr	-504(ra) # 80002724 <_Znwm>
    80005924:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80005928:	ffffd097          	auipc	ra,0xffffd
    8000592c:	fd4080e7          	jalr	-44(ra) # 800028fc <_ZN6ThreadC1Ev>
    80005930:	00004797          	auipc	a5,0x4
    80005934:	c4078793          	addi	a5,a5,-960 # 80009570 <_ZTV7WorkerC+0x10>
    80005938:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    8000593c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80005940:	00004517          	auipc	a0,0x4
    80005944:	b9050513          	addi	a0,a0,-1136 # 800094d0 <_ZTV12ConsumerSync+0xf0>
    80005948:	fffff097          	auipc	ra,0xfffff
    8000594c:	088080e7          	jalr	136(ra) # 800049d0 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80005950:	02000513          	li	a0,32
    80005954:	ffffd097          	auipc	ra,0xffffd
    80005958:	dd0080e7          	jalr	-560(ra) # 80002724 <_Znwm>
    8000595c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80005960:	ffffd097          	auipc	ra,0xffffd
    80005964:	f9c080e7          	jalr	-100(ra) # 800028fc <_ZN6ThreadC1Ev>
    80005968:	00004797          	auipc	a5,0x4
    8000596c:	c3078793          	addi	a5,a5,-976 # 80009598 <_ZTV7WorkerD+0x10>
    80005970:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80005974:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80005978:	00004517          	auipc	a0,0x4
    8000597c:	b7050513          	addi	a0,a0,-1168 # 800094e8 <_ZTV12ConsumerSync+0x108>
    80005980:	fffff097          	auipc	ra,0xfffff
    80005984:	050080e7          	jalr	80(ra) # 800049d0 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80005988:	00000493          	li	s1,0
    8000598c:	00300793          	li	a5,3
    80005990:	0297c663          	blt	a5,s1,800059bc <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80005994:	00349793          	slli	a5,s1,0x3
    80005998:	fe040713          	addi	a4,s0,-32
    8000599c:	00f707b3          	add	a5,a4,a5
    800059a0:	fe07b503          	ld	a0,-32(a5)
    800059a4:	ffffd097          	auipc	ra,0xffffd
    800059a8:	e80080e7          	jalr	-384(ra) # 80002824 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800059ac:	0014849b          	addiw	s1,s1,1
    800059b0:	fddff06f          	j	8000598c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800059b4:	ffffd097          	auipc	ra,0xffffd
    800059b8:	ea4080e7          	jalr	-348(ra) # 80002858 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800059bc:	00006797          	auipc	a5,0x6
    800059c0:	ee97c783          	lbu	a5,-279(a5) # 8000b8a5 <_ZL9finishedA>
    800059c4:	fe0788e3          	beqz	a5,800059b4 <_Z20Threads_CPP_API_testv+0x124>
    800059c8:	00006797          	auipc	a5,0x6
    800059cc:	edc7c783          	lbu	a5,-292(a5) # 8000b8a4 <_ZL9finishedB>
    800059d0:	fe0782e3          	beqz	a5,800059b4 <_Z20Threads_CPP_API_testv+0x124>
    800059d4:	00006797          	auipc	a5,0x6
    800059d8:	ecf7c783          	lbu	a5,-305(a5) # 8000b8a3 <_ZL9finishedC>
    800059dc:	fc078ce3          	beqz	a5,800059b4 <_Z20Threads_CPP_API_testv+0x124>
    800059e0:	00006797          	auipc	a5,0x6
    800059e4:	ec27c783          	lbu	a5,-318(a5) # 8000b8a2 <_ZL9finishedD>
    800059e8:	fc0786e3          	beqz	a5,800059b4 <_Z20Threads_CPP_API_testv+0x124>
    800059ec:	fc040493          	addi	s1,s0,-64
    800059f0:	0080006f          	j	800059f8 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800059f4:	00848493          	addi	s1,s1,8
    800059f8:	fe040793          	addi	a5,s0,-32
    800059fc:	08f48663          	beq	s1,a5,80005a88 <_Z20Threads_CPP_API_testv+0x1f8>
    80005a00:	0004b503          	ld	a0,0(s1)
    80005a04:	fe0508e3          	beqz	a0,800059f4 <_Z20Threads_CPP_API_testv+0x164>
    80005a08:	00053783          	ld	a5,0(a0)
    80005a0c:	0087b783          	ld	a5,8(a5)
    80005a10:	000780e7          	jalr	a5
    80005a14:	fe1ff06f          	j	800059f4 <_Z20Threads_CPP_API_testv+0x164>
    threads[0] = new WorkerA();
    80005a18:	00050913          	mv	s2,a0
    80005a1c:	00048513          	mv	a0,s1
    80005a20:	ffffd097          	auipc	ra,0xffffd
    80005a24:	d2c080e7          	jalr	-724(ra) # 8000274c <_ZdlPv>
    80005a28:	00090513          	mv	a0,s2
    80005a2c:	00007097          	auipc	ra,0x7
    80005a30:	f7c080e7          	jalr	-132(ra) # 8000c9a8 <_Unwind_Resume>
    threads[1] = new WorkerB();
    80005a34:	00050913          	mv	s2,a0
    80005a38:	00048513          	mv	a0,s1
    80005a3c:	ffffd097          	auipc	ra,0xffffd
    80005a40:	d10080e7          	jalr	-752(ra) # 8000274c <_ZdlPv>
    80005a44:	00090513          	mv	a0,s2
    80005a48:	00007097          	auipc	ra,0x7
    80005a4c:	f60080e7          	jalr	-160(ra) # 8000c9a8 <_Unwind_Resume>
    threads[2] = new WorkerC();
    80005a50:	00050913          	mv	s2,a0
    80005a54:	00048513          	mv	a0,s1
    80005a58:	ffffd097          	auipc	ra,0xffffd
    80005a5c:	cf4080e7          	jalr	-780(ra) # 8000274c <_ZdlPv>
    80005a60:	00090513          	mv	a0,s2
    80005a64:	00007097          	auipc	ra,0x7
    80005a68:	f44080e7          	jalr	-188(ra) # 8000c9a8 <_Unwind_Resume>
    threads[3] = new WorkerD();
    80005a6c:	00050913          	mv	s2,a0
    80005a70:	00048513          	mv	a0,s1
    80005a74:	ffffd097          	auipc	ra,0xffffd
    80005a78:	cd8080e7          	jalr	-808(ra) # 8000274c <_ZdlPv>
    80005a7c:	00090513          	mv	a0,s2
    80005a80:	00007097          	auipc	ra,0x7
    80005a84:	f28080e7          	jalr	-216(ra) # 8000c9a8 <_Unwind_Resume>
}
    80005a88:	03813083          	ld	ra,56(sp)
    80005a8c:	03013403          	ld	s0,48(sp)
    80005a90:	02813483          	ld	s1,40(sp)
    80005a94:	02013903          	ld	s2,32(sp)
    80005a98:	04010113          	addi	sp,sp,64
    80005a9c:	00008067          	ret

0000000080005aa0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80005aa0:	ff010113          	addi	sp,sp,-16
    80005aa4:	00113423          	sd	ra,8(sp)
    80005aa8:	00813023          	sd	s0,0(sp)
    80005aac:	01010413          	addi	s0,sp,16
    80005ab0:	00004797          	auipc	a5,0x4
    80005ab4:	a7078793          	addi	a5,a5,-1424 # 80009520 <_ZTV7WorkerA+0x10>
    80005ab8:	00f53023          	sd	a5,0(a0)
    80005abc:	ffffd097          	auipc	ra,0xffffd
    80005ac0:	bcc080e7          	jalr	-1076(ra) # 80002688 <_ZN6ThreadD1Ev>
    80005ac4:	00813083          	ld	ra,8(sp)
    80005ac8:	00013403          	ld	s0,0(sp)
    80005acc:	01010113          	addi	sp,sp,16
    80005ad0:	00008067          	ret

0000000080005ad4 <_ZN7WorkerAD0Ev>:
    80005ad4:	fe010113          	addi	sp,sp,-32
    80005ad8:	00113c23          	sd	ra,24(sp)
    80005adc:	00813823          	sd	s0,16(sp)
    80005ae0:	00913423          	sd	s1,8(sp)
    80005ae4:	02010413          	addi	s0,sp,32
    80005ae8:	00050493          	mv	s1,a0
    80005aec:	00004797          	auipc	a5,0x4
    80005af0:	a3478793          	addi	a5,a5,-1484 # 80009520 <_ZTV7WorkerA+0x10>
    80005af4:	00f53023          	sd	a5,0(a0)
    80005af8:	ffffd097          	auipc	ra,0xffffd
    80005afc:	b90080e7          	jalr	-1136(ra) # 80002688 <_ZN6ThreadD1Ev>
    80005b00:	00048513          	mv	a0,s1
    80005b04:	ffffd097          	auipc	ra,0xffffd
    80005b08:	c48080e7          	jalr	-952(ra) # 8000274c <_ZdlPv>
    80005b0c:	01813083          	ld	ra,24(sp)
    80005b10:	01013403          	ld	s0,16(sp)
    80005b14:	00813483          	ld	s1,8(sp)
    80005b18:	02010113          	addi	sp,sp,32
    80005b1c:	00008067          	ret

0000000080005b20 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80005b20:	ff010113          	addi	sp,sp,-16
    80005b24:	00113423          	sd	ra,8(sp)
    80005b28:	00813023          	sd	s0,0(sp)
    80005b2c:	01010413          	addi	s0,sp,16
    80005b30:	00004797          	auipc	a5,0x4
    80005b34:	a1878793          	addi	a5,a5,-1512 # 80009548 <_ZTV7WorkerB+0x10>
    80005b38:	00f53023          	sd	a5,0(a0)
    80005b3c:	ffffd097          	auipc	ra,0xffffd
    80005b40:	b4c080e7          	jalr	-1204(ra) # 80002688 <_ZN6ThreadD1Ev>
    80005b44:	00813083          	ld	ra,8(sp)
    80005b48:	00013403          	ld	s0,0(sp)
    80005b4c:	01010113          	addi	sp,sp,16
    80005b50:	00008067          	ret

0000000080005b54 <_ZN7WorkerBD0Ev>:
    80005b54:	fe010113          	addi	sp,sp,-32
    80005b58:	00113c23          	sd	ra,24(sp)
    80005b5c:	00813823          	sd	s0,16(sp)
    80005b60:	00913423          	sd	s1,8(sp)
    80005b64:	02010413          	addi	s0,sp,32
    80005b68:	00050493          	mv	s1,a0
    80005b6c:	00004797          	auipc	a5,0x4
    80005b70:	9dc78793          	addi	a5,a5,-1572 # 80009548 <_ZTV7WorkerB+0x10>
    80005b74:	00f53023          	sd	a5,0(a0)
    80005b78:	ffffd097          	auipc	ra,0xffffd
    80005b7c:	b10080e7          	jalr	-1264(ra) # 80002688 <_ZN6ThreadD1Ev>
    80005b80:	00048513          	mv	a0,s1
    80005b84:	ffffd097          	auipc	ra,0xffffd
    80005b88:	bc8080e7          	jalr	-1080(ra) # 8000274c <_ZdlPv>
    80005b8c:	01813083          	ld	ra,24(sp)
    80005b90:	01013403          	ld	s0,16(sp)
    80005b94:	00813483          	ld	s1,8(sp)
    80005b98:	02010113          	addi	sp,sp,32
    80005b9c:	00008067          	ret

0000000080005ba0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80005ba0:	ff010113          	addi	sp,sp,-16
    80005ba4:	00113423          	sd	ra,8(sp)
    80005ba8:	00813023          	sd	s0,0(sp)
    80005bac:	01010413          	addi	s0,sp,16
    80005bb0:	00004797          	auipc	a5,0x4
    80005bb4:	9c078793          	addi	a5,a5,-1600 # 80009570 <_ZTV7WorkerC+0x10>
    80005bb8:	00f53023          	sd	a5,0(a0)
    80005bbc:	ffffd097          	auipc	ra,0xffffd
    80005bc0:	acc080e7          	jalr	-1332(ra) # 80002688 <_ZN6ThreadD1Ev>
    80005bc4:	00813083          	ld	ra,8(sp)
    80005bc8:	00013403          	ld	s0,0(sp)
    80005bcc:	01010113          	addi	sp,sp,16
    80005bd0:	00008067          	ret

0000000080005bd4 <_ZN7WorkerCD0Ev>:
    80005bd4:	fe010113          	addi	sp,sp,-32
    80005bd8:	00113c23          	sd	ra,24(sp)
    80005bdc:	00813823          	sd	s0,16(sp)
    80005be0:	00913423          	sd	s1,8(sp)
    80005be4:	02010413          	addi	s0,sp,32
    80005be8:	00050493          	mv	s1,a0
    80005bec:	00004797          	auipc	a5,0x4
    80005bf0:	98478793          	addi	a5,a5,-1660 # 80009570 <_ZTV7WorkerC+0x10>
    80005bf4:	00f53023          	sd	a5,0(a0)
    80005bf8:	ffffd097          	auipc	ra,0xffffd
    80005bfc:	a90080e7          	jalr	-1392(ra) # 80002688 <_ZN6ThreadD1Ev>
    80005c00:	00048513          	mv	a0,s1
    80005c04:	ffffd097          	auipc	ra,0xffffd
    80005c08:	b48080e7          	jalr	-1208(ra) # 8000274c <_ZdlPv>
    80005c0c:	01813083          	ld	ra,24(sp)
    80005c10:	01013403          	ld	s0,16(sp)
    80005c14:	00813483          	ld	s1,8(sp)
    80005c18:	02010113          	addi	sp,sp,32
    80005c1c:	00008067          	ret

0000000080005c20 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80005c20:	ff010113          	addi	sp,sp,-16
    80005c24:	00113423          	sd	ra,8(sp)
    80005c28:	00813023          	sd	s0,0(sp)
    80005c2c:	01010413          	addi	s0,sp,16
    80005c30:	00004797          	auipc	a5,0x4
    80005c34:	96878793          	addi	a5,a5,-1688 # 80009598 <_ZTV7WorkerD+0x10>
    80005c38:	00f53023          	sd	a5,0(a0)
    80005c3c:	ffffd097          	auipc	ra,0xffffd
    80005c40:	a4c080e7          	jalr	-1460(ra) # 80002688 <_ZN6ThreadD1Ev>
    80005c44:	00813083          	ld	ra,8(sp)
    80005c48:	00013403          	ld	s0,0(sp)
    80005c4c:	01010113          	addi	sp,sp,16
    80005c50:	00008067          	ret

0000000080005c54 <_ZN7WorkerDD0Ev>:
    80005c54:	fe010113          	addi	sp,sp,-32
    80005c58:	00113c23          	sd	ra,24(sp)
    80005c5c:	00813823          	sd	s0,16(sp)
    80005c60:	00913423          	sd	s1,8(sp)
    80005c64:	02010413          	addi	s0,sp,32
    80005c68:	00050493          	mv	s1,a0
    80005c6c:	00004797          	auipc	a5,0x4
    80005c70:	92c78793          	addi	a5,a5,-1748 # 80009598 <_ZTV7WorkerD+0x10>
    80005c74:	00f53023          	sd	a5,0(a0)
    80005c78:	ffffd097          	auipc	ra,0xffffd
    80005c7c:	a10080e7          	jalr	-1520(ra) # 80002688 <_ZN6ThreadD1Ev>
    80005c80:	00048513          	mv	a0,s1
    80005c84:	ffffd097          	auipc	ra,0xffffd
    80005c88:	ac8080e7          	jalr	-1336(ra) # 8000274c <_ZdlPv>
    80005c8c:	01813083          	ld	ra,24(sp)
    80005c90:	01013403          	ld	s0,16(sp)
    80005c94:	00813483          	ld	s1,8(sp)
    80005c98:	02010113          	addi	sp,sp,32
    80005c9c:	00008067          	ret

0000000080005ca0 <_ZN7WorkerA3runEv>:
    void run() override {
    80005ca0:	ff010113          	addi	sp,sp,-16
    80005ca4:	00113423          	sd	ra,8(sp)
    80005ca8:	00813023          	sd	s0,0(sp)
    80005cac:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80005cb0:	00000593          	li	a1,0
    80005cb4:	fffff097          	auipc	ra,0xfffff
    80005cb8:	774080e7          	jalr	1908(ra) # 80005428 <_ZN7WorkerA11workerBodyAEPv>
    }
    80005cbc:	00813083          	ld	ra,8(sp)
    80005cc0:	00013403          	ld	s0,0(sp)
    80005cc4:	01010113          	addi	sp,sp,16
    80005cc8:	00008067          	ret

0000000080005ccc <_ZN7WorkerB3runEv>:
    void run() override {
    80005ccc:	ff010113          	addi	sp,sp,-16
    80005cd0:	00113423          	sd	ra,8(sp)
    80005cd4:	00813023          	sd	s0,0(sp)
    80005cd8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80005cdc:	00000593          	li	a1,0
    80005ce0:	00000097          	auipc	ra,0x0
    80005ce4:	814080e7          	jalr	-2028(ra) # 800054f4 <_ZN7WorkerB11workerBodyBEPv>
    }
    80005ce8:	00813083          	ld	ra,8(sp)
    80005cec:	00013403          	ld	s0,0(sp)
    80005cf0:	01010113          	addi	sp,sp,16
    80005cf4:	00008067          	ret

0000000080005cf8 <_ZN7WorkerC3runEv>:
    void run() override {
    80005cf8:	ff010113          	addi	sp,sp,-16
    80005cfc:	00113423          	sd	ra,8(sp)
    80005d00:	00813023          	sd	s0,0(sp)
    80005d04:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80005d08:	00000593          	li	a1,0
    80005d0c:	00000097          	auipc	ra,0x0
    80005d10:	8bc080e7          	jalr	-1860(ra) # 800055c8 <_ZN7WorkerC11workerBodyCEPv>
    }
    80005d14:	00813083          	ld	ra,8(sp)
    80005d18:	00013403          	ld	s0,0(sp)
    80005d1c:	01010113          	addi	sp,sp,16
    80005d20:	00008067          	ret

0000000080005d24 <_ZN7WorkerD3runEv>:
    void run() override {
    80005d24:	ff010113          	addi	sp,sp,-16
    80005d28:	00113423          	sd	ra,8(sp)
    80005d2c:	00813023          	sd	s0,0(sp)
    80005d30:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80005d34:	00000593          	li	a1,0
    80005d38:	00000097          	auipc	ra,0x0
    80005d3c:	a10080e7          	jalr	-1520(ra) # 80005748 <_ZN7WorkerD11workerBodyDEPv>
    }
    80005d40:	00813083          	ld	ra,8(sp)
    80005d44:	00013403          	ld	s0,0(sp)
    80005d48:	01010113          	addi	sp,sp,16
    80005d4c:	00008067          	ret

0000000080005d50 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005d50:	fe010113          	addi	sp,sp,-32
    80005d54:	00113c23          	sd	ra,24(sp)
    80005d58:	00813823          	sd	s0,16(sp)
    80005d5c:	00913423          	sd	s1,8(sp)
    80005d60:	01213023          	sd	s2,0(sp)
    80005d64:	02010413          	addi	s0,sp,32
    80005d68:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005d6c:	00100793          	li	a5,1
    80005d70:	02a7f863          	bgeu	a5,a0,80005da0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005d74:	00a00793          	li	a5,10
    80005d78:	02f577b3          	remu	a5,a0,a5
    80005d7c:	02078e63          	beqz	a5,80005db8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005d80:	fff48513          	addi	a0,s1,-1
    80005d84:	00000097          	auipc	ra,0x0
    80005d88:	fcc080e7          	jalr	-52(ra) # 80005d50 <_ZL9fibonaccim>
    80005d8c:	00050913          	mv	s2,a0
    80005d90:	ffe48513          	addi	a0,s1,-2
    80005d94:	00000097          	auipc	ra,0x0
    80005d98:	fbc080e7          	jalr	-68(ra) # 80005d50 <_ZL9fibonaccim>
    80005d9c:	00a90533          	add	a0,s2,a0
}
    80005da0:	01813083          	ld	ra,24(sp)
    80005da4:	01013403          	ld	s0,16(sp)
    80005da8:	00813483          	ld	s1,8(sp)
    80005dac:	00013903          	ld	s2,0(sp)
    80005db0:	02010113          	addi	sp,sp,32
    80005db4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005db8:	ffffc097          	auipc	ra,0xffffc
    80005dbc:	624080e7          	jalr	1572(ra) # 800023dc <_Z15thread_dispatchv>
    80005dc0:	fc1ff06f          	j	80005d80 <_ZL9fibonaccim+0x30>

0000000080005dc4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005dc4:	fe010113          	addi	sp,sp,-32
    80005dc8:	00113c23          	sd	ra,24(sp)
    80005dcc:	00813823          	sd	s0,16(sp)
    80005dd0:	00913423          	sd	s1,8(sp)
    80005dd4:	01213023          	sd	s2,0(sp)
    80005dd8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005ddc:	00a00493          	li	s1,10
    80005de0:	0400006f          	j	80005e20 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005de4:	00003517          	auipc	a0,0x3
    80005de8:	62450513          	addi	a0,a0,1572 # 80009408 <_ZTV12ConsumerSync+0x28>
    80005dec:	fffff097          	auipc	ra,0xfffff
    80005df0:	be4080e7          	jalr	-1052(ra) # 800049d0 <_Z11printStringPKc>
    80005df4:	00000613          	li	a2,0
    80005df8:	00a00593          	li	a1,10
    80005dfc:	00048513          	mv	a0,s1
    80005e00:	fffff097          	auipc	ra,0xfffff
    80005e04:	d80080e7          	jalr	-640(ra) # 80004b80 <_Z8printIntiii>
    80005e08:	00004517          	auipc	a0,0x4
    80005e0c:	8e850513          	addi	a0,a0,-1816 # 800096f0 <_ZTV7WorkerD+0x168>
    80005e10:	fffff097          	auipc	ra,0xfffff
    80005e14:	bc0080e7          	jalr	-1088(ra) # 800049d0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005e18:	0014849b          	addiw	s1,s1,1
    80005e1c:	0ff4f493          	andi	s1,s1,255
    80005e20:	00c00793          	li	a5,12
    80005e24:	fc97f0e3          	bgeu	a5,s1,80005de4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005e28:	00003517          	auipc	a0,0x3
    80005e2c:	5e850513          	addi	a0,a0,1512 # 80009410 <_ZTV12ConsumerSync+0x30>
    80005e30:	fffff097          	auipc	ra,0xfffff
    80005e34:	ba0080e7          	jalr	-1120(ra) # 800049d0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005e38:	00500313          	li	t1,5
    thread_dispatch();
    80005e3c:	ffffc097          	auipc	ra,0xffffc
    80005e40:	5a0080e7          	jalr	1440(ra) # 800023dc <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005e44:	01000513          	li	a0,16
    80005e48:	00000097          	auipc	ra,0x0
    80005e4c:	f08080e7          	jalr	-248(ra) # 80005d50 <_ZL9fibonaccim>
    80005e50:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005e54:	00003517          	auipc	a0,0x3
    80005e58:	5cc50513          	addi	a0,a0,1484 # 80009420 <_ZTV12ConsumerSync+0x40>
    80005e5c:	fffff097          	auipc	ra,0xfffff
    80005e60:	b74080e7          	jalr	-1164(ra) # 800049d0 <_Z11printStringPKc>
    80005e64:	00000613          	li	a2,0
    80005e68:	00a00593          	li	a1,10
    80005e6c:	0009051b          	sext.w	a0,s2
    80005e70:	fffff097          	auipc	ra,0xfffff
    80005e74:	d10080e7          	jalr	-752(ra) # 80004b80 <_Z8printIntiii>
    80005e78:	00004517          	auipc	a0,0x4
    80005e7c:	87850513          	addi	a0,a0,-1928 # 800096f0 <_ZTV7WorkerD+0x168>
    80005e80:	fffff097          	auipc	ra,0xfffff
    80005e84:	b50080e7          	jalr	-1200(ra) # 800049d0 <_Z11printStringPKc>
    80005e88:	0400006f          	j	80005ec8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005e8c:	00003517          	auipc	a0,0x3
    80005e90:	57c50513          	addi	a0,a0,1404 # 80009408 <_ZTV12ConsumerSync+0x28>
    80005e94:	fffff097          	auipc	ra,0xfffff
    80005e98:	b3c080e7          	jalr	-1220(ra) # 800049d0 <_Z11printStringPKc>
    80005e9c:	00000613          	li	a2,0
    80005ea0:	00a00593          	li	a1,10
    80005ea4:	00048513          	mv	a0,s1
    80005ea8:	fffff097          	auipc	ra,0xfffff
    80005eac:	cd8080e7          	jalr	-808(ra) # 80004b80 <_Z8printIntiii>
    80005eb0:	00004517          	auipc	a0,0x4
    80005eb4:	84050513          	addi	a0,a0,-1984 # 800096f0 <_ZTV7WorkerD+0x168>
    80005eb8:	fffff097          	auipc	ra,0xfffff
    80005ebc:	b18080e7          	jalr	-1256(ra) # 800049d0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005ec0:	0014849b          	addiw	s1,s1,1
    80005ec4:	0ff4f493          	andi	s1,s1,255
    80005ec8:	00f00793          	li	a5,15
    80005ecc:	fc97f0e3          	bgeu	a5,s1,80005e8c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005ed0:	00003517          	auipc	a0,0x3
    80005ed4:	56050513          	addi	a0,a0,1376 # 80009430 <_ZTV12ConsumerSync+0x50>
    80005ed8:	fffff097          	auipc	ra,0xfffff
    80005edc:	af8080e7          	jalr	-1288(ra) # 800049d0 <_Z11printStringPKc>
    finishedD = true;
    80005ee0:	00100793          	li	a5,1
    80005ee4:	00006717          	auipc	a4,0x6
    80005ee8:	9cf70123          	sb	a5,-1598(a4) # 8000b8a6 <_ZL9finishedD>
    thread_dispatch();
    80005eec:	ffffc097          	auipc	ra,0xffffc
    80005ef0:	4f0080e7          	jalr	1264(ra) # 800023dc <_Z15thread_dispatchv>
}
    80005ef4:	01813083          	ld	ra,24(sp)
    80005ef8:	01013403          	ld	s0,16(sp)
    80005efc:	00813483          	ld	s1,8(sp)
    80005f00:	00013903          	ld	s2,0(sp)
    80005f04:	02010113          	addi	sp,sp,32
    80005f08:	00008067          	ret

0000000080005f0c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005f0c:	fe010113          	addi	sp,sp,-32
    80005f10:	00113c23          	sd	ra,24(sp)
    80005f14:	00813823          	sd	s0,16(sp)
    80005f18:	00913423          	sd	s1,8(sp)
    80005f1c:	01213023          	sd	s2,0(sp)
    80005f20:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005f24:	00000493          	li	s1,0
    80005f28:	0400006f          	j	80005f68 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005f2c:	00003517          	auipc	a0,0x3
    80005f30:	51450513          	addi	a0,a0,1300 # 80009440 <_ZTV12ConsumerSync+0x60>
    80005f34:	fffff097          	auipc	ra,0xfffff
    80005f38:	a9c080e7          	jalr	-1380(ra) # 800049d0 <_Z11printStringPKc>
    80005f3c:	00000613          	li	a2,0
    80005f40:	00a00593          	li	a1,10
    80005f44:	00048513          	mv	a0,s1
    80005f48:	fffff097          	auipc	ra,0xfffff
    80005f4c:	c38080e7          	jalr	-968(ra) # 80004b80 <_Z8printIntiii>
    80005f50:	00003517          	auipc	a0,0x3
    80005f54:	7a050513          	addi	a0,a0,1952 # 800096f0 <_ZTV7WorkerD+0x168>
    80005f58:	fffff097          	auipc	ra,0xfffff
    80005f5c:	a78080e7          	jalr	-1416(ra) # 800049d0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005f60:	0014849b          	addiw	s1,s1,1
    80005f64:	0ff4f493          	andi	s1,s1,255
    80005f68:	00200793          	li	a5,2
    80005f6c:	fc97f0e3          	bgeu	a5,s1,80005f2c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005f70:	00003517          	auipc	a0,0x3
    80005f74:	4d850513          	addi	a0,a0,1240 # 80009448 <_ZTV12ConsumerSync+0x68>
    80005f78:	fffff097          	auipc	ra,0xfffff
    80005f7c:	a58080e7          	jalr	-1448(ra) # 800049d0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005f80:	00700313          	li	t1,7
    thread_dispatch();
    80005f84:	ffffc097          	auipc	ra,0xffffc
    80005f88:	458080e7          	jalr	1112(ra) # 800023dc <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005f8c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005f90:	00003517          	auipc	a0,0x3
    80005f94:	4c850513          	addi	a0,a0,1224 # 80009458 <_ZTV12ConsumerSync+0x78>
    80005f98:	fffff097          	auipc	ra,0xfffff
    80005f9c:	a38080e7          	jalr	-1480(ra) # 800049d0 <_Z11printStringPKc>
    80005fa0:	00000613          	li	a2,0
    80005fa4:	00a00593          	li	a1,10
    80005fa8:	0009051b          	sext.w	a0,s2
    80005fac:	fffff097          	auipc	ra,0xfffff
    80005fb0:	bd4080e7          	jalr	-1068(ra) # 80004b80 <_Z8printIntiii>
    80005fb4:	00003517          	auipc	a0,0x3
    80005fb8:	73c50513          	addi	a0,a0,1852 # 800096f0 <_ZTV7WorkerD+0x168>
    80005fbc:	fffff097          	auipc	ra,0xfffff
    80005fc0:	a14080e7          	jalr	-1516(ra) # 800049d0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005fc4:	00c00513          	li	a0,12
    80005fc8:	00000097          	auipc	ra,0x0
    80005fcc:	d88080e7          	jalr	-632(ra) # 80005d50 <_ZL9fibonaccim>
    80005fd0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005fd4:	00003517          	auipc	a0,0x3
    80005fd8:	48c50513          	addi	a0,a0,1164 # 80009460 <_ZTV12ConsumerSync+0x80>
    80005fdc:	fffff097          	auipc	ra,0xfffff
    80005fe0:	9f4080e7          	jalr	-1548(ra) # 800049d0 <_Z11printStringPKc>
    80005fe4:	00000613          	li	a2,0
    80005fe8:	00a00593          	li	a1,10
    80005fec:	0009051b          	sext.w	a0,s2
    80005ff0:	fffff097          	auipc	ra,0xfffff
    80005ff4:	b90080e7          	jalr	-1136(ra) # 80004b80 <_Z8printIntiii>
    80005ff8:	00003517          	auipc	a0,0x3
    80005ffc:	6f850513          	addi	a0,a0,1784 # 800096f0 <_ZTV7WorkerD+0x168>
    80006000:	fffff097          	auipc	ra,0xfffff
    80006004:	9d0080e7          	jalr	-1584(ra) # 800049d0 <_Z11printStringPKc>
    80006008:	0400006f          	j	80006048 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000600c:	00003517          	auipc	a0,0x3
    80006010:	43450513          	addi	a0,a0,1076 # 80009440 <_ZTV12ConsumerSync+0x60>
    80006014:	fffff097          	auipc	ra,0xfffff
    80006018:	9bc080e7          	jalr	-1604(ra) # 800049d0 <_Z11printStringPKc>
    8000601c:	00000613          	li	a2,0
    80006020:	00a00593          	li	a1,10
    80006024:	00048513          	mv	a0,s1
    80006028:	fffff097          	auipc	ra,0xfffff
    8000602c:	b58080e7          	jalr	-1192(ra) # 80004b80 <_Z8printIntiii>
    80006030:	00003517          	auipc	a0,0x3
    80006034:	6c050513          	addi	a0,a0,1728 # 800096f0 <_ZTV7WorkerD+0x168>
    80006038:	fffff097          	auipc	ra,0xfffff
    8000603c:	998080e7          	jalr	-1640(ra) # 800049d0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006040:	0014849b          	addiw	s1,s1,1
    80006044:	0ff4f493          	andi	s1,s1,255
    80006048:	00500793          	li	a5,5
    8000604c:	fc97f0e3          	bgeu	a5,s1,8000600c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006050:	00003517          	auipc	a0,0x3
    80006054:	42050513          	addi	a0,a0,1056 # 80009470 <_ZTV12ConsumerSync+0x90>
    80006058:	fffff097          	auipc	ra,0xfffff
    8000605c:	978080e7          	jalr	-1672(ra) # 800049d0 <_Z11printStringPKc>
    finishedC = true;
    80006060:	00100793          	li	a5,1
    80006064:	00006717          	auipc	a4,0x6
    80006068:	84f701a3          	sb	a5,-1981(a4) # 8000b8a7 <_ZL9finishedC>
    thread_dispatch();
    8000606c:	ffffc097          	auipc	ra,0xffffc
    80006070:	370080e7          	jalr	880(ra) # 800023dc <_Z15thread_dispatchv>
}
    80006074:	01813083          	ld	ra,24(sp)
    80006078:	01013403          	ld	s0,16(sp)
    8000607c:	00813483          	ld	s1,8(sp)
    80006080:	00013903          	ld	s2,0(sp)
    80006084:	02010113          	addi	sp,sp,32
    80006088:	00008067          	ret

000000008000608c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000608c:	fe010113          	addi	sp,sp,-32
    80006090:	00113c23          	sd	ra,24(sp)
    80006094:	00813823          	sd	s0,16(sp)
    80006098:	00913423          	sd	s1,8(sp)
    8000609c:	01213023          	sd	s2,0(sp)
    800060a0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800060a4:	00000913          	li	s2,0
    800060a8:	0380006f          	j	800060e0 <_ZL11workerBodyBPv+0x54>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800060ac:	00170713          	addi	a4,a4,1
    800060b0:	000077b7          	lui	a5,0x7
    800060b4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800060b8:	fee7fae3          	bgeu	a5,a4,800060ac <_ZL11workerBodyBPv+0x20>
            thread_dispatch();
    800060bc:	ffffc097          	auipc	ra,0xffffc
    800060c0:	320080e7          	jalr	800(ra) # 800023dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800060c4:	00148493          	addi	s1,s1,1
    800060c8:	000027b7          	lui	a5,0x2
    800060cc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800060d0:	0097e663          	bltu	a5,s1,800060dc <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800060d4:	00000713          	li	a4,0
    800060d8:	fd9ff06f          	j	800060b0 <_ZL11workerBodyBPv+0x24>
    for (uint64 i = 0; i < 16; i++) {
    800060dc:	00190913          	addi	s2,s2,1
    800060e0:	00f00793          	li	a5,15
    800060e4:	0527e063          	bltu	a5,s2,80006124 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800060e8:	00003517          	auipc	a0,0x3
    800060ec:	39850513          	addi	a0,a0,920 # 80009480 <_ZTV12ConsumerSync+0xa0>
    800060f0:	fffff097          	auipc	ra,0xfffff
    800060f4:	8e0080e7          	jalr	-1824(ra) # 800049d0 <_Z11printStringPKc>
    800060f8:	00000613          	li	a2,0
    800060fc:	00a00593          	li	a1,10
    80006100:	0009051b          	sext.w	a0,s2
    80006104:	fffff097          	auipc	ra,0xfffff
    80006108:	a7c080e7          	jalr	-1412(ra) # 80004b80 <_Z8printIntiii>
    8000610c:	00003517          	auipc	a0,0x3
    80006110:	5e450513          	addi	a0,a0,1508 # 800096f0 <_ZTV7WorkerD+0x168>
    80006114:	fffff097          	auipc	ra,0xfffff
    80006118:	8bc080e7          	jalr	-1860(ra) # 800049d0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000611c:	00000493          	li	s1,0
    80006120:	fa9ff06f          	j	800060c8 <_ZL11workerBodyBPv+0x3c>
    printString("B finished!\n");
    80006124:	00003517          	auipc	a0,0x3
    80006128:	36450513          	addi	a0,a0,868 # 80009488 <_ZTV12ConsumerSync+0xa8>
    8000612c:	fffff097          	auipc	ra,0xfffff
    80006130:	8a4080e7          	jalr	-1884(ra) # 800049d0 <_Z11printStringPKc>
    finishedB = true;
    80006134:	00100793          	li	a5,1
    80006138:	00005717          	auipc	a4,0x5
    8000613c:	76f70823          	sb	a5,1904(a4) # 8000b8a8 <_ZL9finishedB>
    thread_dispatch();
    80006140:	ffffc097          	auipc	ra,0xffffc
    80006144:	29c080e7          	jalr	668(ra) # 800023dc <_Z15thread_dispatchv>
}
    80006148:	01813083          	ld	ra,24(sp)
    8000614c:	01013403          	ld	s0,16(sp)
    80006150:	00813483          	ld	s1,8(sp)
    80006154:	00013903          	ld	s2,0(sp)
    80006158:	02010113          	addi	sp,sp,32
    8000615c:	00008067          	ret

0000000080006160 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006160:	fe010113          	addi	sp,sp,-32
    80006164:	00113c23          	sd	ra,24(sp)
    80006168:	00813823          	sd	s0,16(sp)
    8000616c:	00913423          	sd	s1,8(sp)
    80006170:	01213023          	sd	s2,0(sp)
    80006174:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006178:	00000913          	li	s2,0
    8000617c:	0380006f          	j	800061b4 <_ZL11workerBodyAPv+0x54>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006180:	00170713          	addi	a4,a4,1
    80006184:	000077b7          	lui	a5,0x7
    80006188:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000618c:	fee7fae3          	bgeu	a5,a4,80006180 <_ZL11workerBodyAPv+0x20>
            thread_dispatch();
    80006190:	ffffc097          	auipc	ra,0xffffc
    80006194:	24c080e7          	jalr	588(ra) # 800023dc <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006198:	00148493          	addi	s1,s1,1
    8000619c:	000027b7          	lui	a5,0x2
    800061a0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800061a4:	0097e663          	bltu	a5,s1,800061b0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800061a8:	00000713          	li	a4,0
    800061ac:	fd9ff06f          	j	80006184 <_ZL11workerBodyAPv+0x24>
    for (uint64 i = 0; i < 10; i++) {
    800061b0:	00190913          	addi	s2,s2,1
    800061b4:	00900793          	li	a5,9
    800061b8:	0527e063          	bltu	a5,s2,800061f8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800061bc:	00003517          	auipc	a0,0x3
    800061c0:	2dc50513          	addi	a0,a0,732 # 80009498 <_ZTV12ConsumerSync+0xb8>
    800061c4:	fffff097          	auipc	ra,0xfffff
    800061c8:	80c080e7          	jalr	-2036(ra) # 800049d0 <_Z11printStringPKc>
    800061cc:	00000613          	li	a2,0
    800061d0:	00a00593          	li	a1,10
    800061d4:	0009051b          	sext.w	a0,s2
    800061d8:	fffff097          	auipc	ra,0xfffff
    800061dc:	9a8080e7          	jalr	-1624(ra) # 80004b80 <_Z8printIntiii>
    800061e0:	00003517          	auipc	a0,0x3
    800061e4:	51050513          	addi	a0,a0,1296 # 800096f0 <_ZTV7WorkerD+0x168>
    800061e8:	ffffe097          	auipc	ra,0xffffe
    800061ec:	7e8080e7          	jalr	2024(ra) # 800049d0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800061f0:	00000493          	li	s1,0
    800061f4:	fa9ff06f          	j	8000619c <_ZL11workerBodyAPv+0x3c>
    printString("A finished!\n");
    800061f8:	00003517          	auipc	a0,0x3
    800061fc:	27850513          	addi	a0,a0,632 # 80009470 <_ZTV12ConsumerSync+0x90>
    80006200:	ffffe097          	auipc	ra,0xffffe
    80006204:	7d0080e7          	jalr	2000(ra) # 800049d0 <_Z11printStringPKc>
    finishedA = true;
    80006208:	00100793          	li	a5,1
    8000620c:	00005717          	auipc	a4,0x5
    80006210:	68f70ea3          	sb	a5,1693(a4) # 8000b8a9 <_ZL9finishedA>
}
    80006214:	01813083          	ld	ra,24(sp)
    80006218:	01013403          	ld	s0,16(sp)
    8000621c:	00813483          	ld	s1,8(sp)
    80006220:	00013903          	ld	s2,0(sp)
    80006224:	02010113          	addi	sp,sp,32
    80006228:	00008067          	ret

000000008000622c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    8000622c:	fd010113          	addi	sp,sp,-48
    80006230:	02113423          	sd	ra,40(sp)
    80006234:	02813023          	sd	s0,32(sp)
    80006238:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000623c:	00000613          	li	a2,0
    80006240:	00000597          	auipc	a1,0x0
    80006244:	f2058593          	addi	a1,a1,-224 # 80006160 <_ZL11workerBodyAPv>
    80006248:	fd040513          	addi	a0,s0,-48
    8000624c:	ffffc097          	auipc	ra,0xffffc
    80006250:	104080e7          	jalr	260(ra) # 80002350 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80006254:	00003517          	auipc	a0,0x3
    80006258:	24c50513          	addi	a0,a0,588 # 800094a0 <_ZTV12ConsumerSync+0xc0>
    8000625c:	ffffe097          	auipc	ra,0xffffe
    80006260:	774080e7          	jalr	1908(ra) # 800049d0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006264:	00000613          	li	a2,0
    80006268:	00000597          	auipc	a1,0x0
    8000626c:	e2458593          	addi	a1,a1,-476 # 8000608c <_ZL11workerBodyBPv>
    80006270:	fd840513          	addi	a0,s0,-40
    80006274:	ffffc097          	auipc	ra,0xffffc
    80006278:	0dc080e7          	jalr	220(ra) # 80002350 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    8000627c:	00003517          	auipc	a0,0x3
    80006280:	23c50513          	addi	a0,a0,572 # 800094b8 <_ZTV12ConsumerSync+0xd8>
    80006284:	ffffe097          	auipc	ra,0xffffe
    80006288:	74c080e7          	jalr	1868(ra) # 800049d0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000628c:	00000613          	li	a2,0
    80006290:	00000597          	auipc	a1,0x0
    80006294:	c7c58593          	addi	a1,a1,-900 # 80005f0c <_ZL11workerBodyCPv>
    80006298:	fe040513          	addi	a0,s0,-32
    8000629c:	ffffc097          	auipc	ra,0xffffc
    800062a0:	0b4080e7          	jalr	180(ra) # 80002350 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    800062a4:	00003517          	auipc	a0,0x3
    800062a8:	22c50513          	addi	a0,a0,556 # 800094d0 <_ZTV12ConsumerSync+0xf0>
    800062ac:	ffffe097          	auipc	ra,0xffffe
    800062b0:	724080e7          	jalr	1828(ra) # 800049d0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800062b4:	00000613          	li	a2,0
    800062b8:	00000597          	auipc	a1,0x0
    800062bc:	b0c58593          	addi	a1,a1,-1268 # 80005dc4 <_ZL11workerBodyDPv>
    800062c0:	fe840513          	addi	a0,s0,-24
    800062c4:	ffffc097          	auipc	ra,0xffffc
    800062c8:	08c080e7          	jalr	140(ra) # 80002350 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    800062cc:	00003517          	auipc	a0,0x3
    800062d0:	21c50513          	addi	a0,a0,540 # 800094e8 <_ZTV12ConsumerSync+0x108>
    800062d4:	ffffe097          	auipc	ra,0xffffe
    800062d8:	6fc080e7          	jalr	1788(ra) # 800049d0 <_Z11printStringPKc>
    800062dc:	00c0006f          	j	800062e8 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800062e0:	ffffc097          	auipc	ra,0xffffc
    800062e4:	0fc080e7          	jalr	252(ra) # 800023dc <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800062e8:	00005797          	auipc	a5,0x5
    800062ec:	5c17c783          	lbu	a5,1473(a5) # 8000b8a9 <_ZL9finishedA>
    800062f0:	fe0788e3          	beqz	a5,800062e0 <_Z18Threads_C_API_testv+0xb4>
    800062f4:	00005797          	auipc	a5,0x5
    800062f8:	5b47c783          	lbu	a5,1460(a5) # 8000b8a8 <_ZL9finishedB>
    800062fc:	fe0782e3          	beqz	a5,800062e0 <_Z18Threads_C_API_testv+0xb4>
    80006300:	00005797          	auipc	a5,0x5
    80006304:	5a77c783          	lbu	a5,1447(a5) # 8000b8a7 <_ZL9finishedC>
    80006308:	fc078ce3          	beqz	a5,800062e0 <_Z18Threads_C_API_testv+0xb4>
    8000630c:	00005797          	auipc	a5,0x5
    80006310:	59a7c783          	lbu	a5,1434(a5) # 8000b8a6 <_ZL9finishedD>
    80006314:	fc0786e3          	beqz	a5,800062e0 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80006318:	02813083          	ld	ra,40(sp)
    8000631c:	02013403          	ld	s0,32(sp)
    80006320:	03010113          	addi	sp,sp,48
    80006324:	00008067          	ret

0000000080006328 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80006328:	fe010113          	addi	sp,sp,-32
    8000632c:	00113c23          	sd	ra,24(sp)
    80006330:	00813823          	sd	s0,16(sp)
    80006334:	00913423          	sd	s1,8(sp)
    80006338:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    8000633c:	00003517          	auipc	a0,0x3
    80006340:	27450513          	addi	a0,a0,628 # 800095b0 <_ZTV7WorkerD+0x28>
    80006344:	ffffe097          	auipc	ra,0xffffe
    80006348:	68c080e7          	jalr	1676(ra) # 800049d0 <_Z11printStringPKc>
    int test = getc() - '0';
    8000634c:	ffffc097          	auipc	ra,0xffffc
    80006350:	294080e7          	jalr	660(ra) # 800025e0 <_Z4getcv>
    80006354:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80006358:	ffffc097          	auipc	ra,0xffffc
    8000635c:	288080e7          	jalr	648(ra) # 800025e0 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80006360:	00700793          	li	a5,7
    80006364:	1097e263          	bltu	a5,s1,80006468 <_Z8userMainv+0x140>
    80006368:	00249493          	slli	s1,s1,0x2
    8000636c:	00003717          	auipc	a4,0x3
    80006370:	49c70713          	addi	a4,a4,1180 # 80009808 <_ZTV7WorkerD+0x280>
    80006374:	00e484b3          	add	s1,s1,a4
    80006378:	0004a783          	lw	a5,0(s1)
    8000637c:	00e787b3          	add	a5,a5,a4
    80006380:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80006384:	00000097          	auipc	ra,0x0
    80006388:	ea8080e7          	jalr	-344(ra) # 8000622c <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000638c:	00003517          	auipc	a0,0x3
    80006390:	24450513          	addi	a0,a0,580 # 800095d0 <_ZTV7WorkerD+0x48>
    80006394:	ffffe097          	auipc	ra,0xffffe
    80006398:	63c080e7          	jalr	1596(ra) # 800049d0 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    8000639c:	01813083          	ld	ra,24(sp)
    800063a0:	01013403          	ld	s0,16(sp)
    800063a4:	00813483          	ld	s1,8(sp)
    800063a8:	02010113          	addi	sp,sp,32
    800063ac:	00008067          	ret
            Threads_CPP_API_test();
    800063b0:	fffff097          	auipc	ra,0xfffff
    800063b4:	4e0080e7          	jalr	1248(ra) # 80005890 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800063b8:	00003517          	auipc	a0,0x3
    800063bc:	25850513          	addi	a0,a0,600 # 80009610 <_ZTV7WorkerD+0x88>
    800063c0:	ffffe097          	auipc	ra,0xffffe
    800063c4:	610080e7          	jalr	1552(ra) # 800049d0 <_Z11printStringPKc>
            break;
    800063c8:	fd5ff06f          	j	8000639c <_Z8userMainv+0x74>
            producerConsumer_C_API();
    800063cc:	ffffe097          	auipc	ra,0xffffe
    800063d0:	338080e7          	jalr	824(ra) # 80004704 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800063d4:	00003517          	auipc	a0,0x3
    800063d8:	27c50513          	addi	a0,a0,636 # 80009650 <_ZTV7WorkerD+0xc8>
    800063dc:	ffffe097          	auipc	ra,0xffffe
    800063e0:	5f4080e7          	jalr	1524(ra) # 800049d0 <_Z11printStringPKc>
            break;
    800063e4:	fb9ff06f          	j	8000639c <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    800063e8:	ffffe097          	auipc	ra,0xffffe
    800063ec:	ac4080e7          	jalr	-1340(ra) # 80003eac <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800063f0:	00003517          	auipc	a0,0x3
    800063f4:	2b050513          	addi	a0,a0,688 # 800096a0 <_ZTV7WorkerD+0x118>
    800063f8:	ffffe097          	auipc	ra,0xffffe
    800063fc:	5d8080e7          	jalr	1496(ra) # 800049d0 <_Z11printStringPKc>
            break;
    80006400:	f9dff06f          	j	8000639c <_Z8userMainv+0x74>
            testSleeping();
    80006404:	fffff097          	auipc	ra,0xfffff
    80006408:	f28080e7          	jalr	-216(ra) # 8000532c <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    8000640c:	00003517          	auipc	a0,0x3
    80006410:	2ec50513          	addi	a0,a0,748 # 800096f8 <_ZTV7WorkerD+0x170>
    80006414:	ffffe097          	auipc	ra,0xffffe
    80006418:	5bc080e7          	jalr	1468(ra) # 800049d0 <_Z11printStringPKc>
            break;
    8000641c:	f81ff06f          	j	8000639c <_Z8userMainv+0x74>
            testConsumerProducer();
    80006420:	ffffd097          	auipc	ra,0xffffd
    80006424:	0d4080e7          	jalr	212(ra) # 800034f4 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80006428:	00003517          	auipc	a0,0x3
    8000642c:	30050513          	addi	a0,a0,768 # 80009728 <_ZTV7WorkerD+0x1a0>
    80006430:	ffffe097          	auipc	ra,0xffffe
    80006434:	5a0080e7          	jalr	1440(ra) # 800049d0 <_Z11printStringPKc>
            break;
    80006438:	f65ff06f          	j	8000639c <_Z8userMainv+0x74>
            System_Mode_test();
    8000643c:	fffff097          	auipc	ra,0xfffff
    80006440:	d50080e7          	jalr	-688(ra) # 8000518c <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80006444:	00003517          	auipc	a0,0x3
    80006448:	32450513          	addi	a0,a0,804 # 80009768 <_ZTV7WorkerD+0x1e0>
    8000644c:	ffffe097          	auipc	ra,0xffffe
    80006450:	584080e7          	jalr	1412(ra) # 800049d0 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80006454:	00003517          	auipc	a0,0x3
    80006458:	33450513          	addi	a0,a0,820 # 80009788 <_ZTV7WorkerD+0x200>
    8000645c:	ffffe097          	auipc	ra,0xffffe
    80006460:	574080e7          	jalr	1396(ra) # 800049d0 <_Z11printStringPKc>
            break;
    80006464:	f39ff06f          	j	8000639c <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80006468:	00003517          	auipc	a0,0x3
    8000646c:	37850513          	addi	a0,a0,888 # 800097e0 <_ZTV7WorkerD+0x258>
    80006470:	ffffe097          	auipc	ra,0xffffe
    80006474:	560080e7          	jalr	1376(ra) # 800049d0 <_Z11printStringPKc>
    80006478:	f25ff06f          	j	8000639c <_Z8userMainv+0x74>

000000008000647c <start>:
    8000647c:	ff010113          	addi	sp,sp,-16
    80006480:	00813423          	sd	s0,8(sp)
    80006484:	01010413          	addi	s0,sp,16
    80006488:	300027f3          	csrr	a5,mstatus
    8000648c:	ffffe737          	lui	a4,0xffffe
    80006490:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1cbf>
    80006494:	00e7f7b3          	and	a5,a5,a4
    80006498:	00001737          	lui	a4,0x1
    8000649c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800064a0:	00e7e7b3          	or	a5,a5,a4
    800064a4:	30079073          	csrw	mstatus,a5
    800064a8:	00000797          	auipc	a5,0x0
    800064ac:	16078793          	addi	a5,a5,352 # 80006608 <system_main>
    800064b0:	34179073          	csrw	mepc,a5
    800064b4:	00000793          	li	a5,0
    800064b8:	18079073          	csrw	satp,a5
    800064bc:	000107b7          	lui	a5,0x10
    800064c0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800064c4:	30279073          	csrw	medeleg,a5
    800064c8:	30379073          	csrw	mideleg,a5
    800064cc:	104027f3          	csrr	a5,sie
    800064d0:	2227e793          	ori	a5,a5,546
    800064d4:	10479073          	csrw	sie,a5
    800064d8:	fff00793          	li	a5,-1
    800064dc:	00a7d793          	srli	a5,a5,0xa
    800064e0:	3b079073          	csrw	pmpaddr0,a5
    800064e4:	00f00793          	li	a5,15
    800064e8:	3a079073          	csrw	pmpcfg0,a5
    800064ec:	f14027f3          	csrr	a5,mhartid
    800064f0:	0200c737          	lui	a4,0x200c
    800064f4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800064f8:	0007869b          	sext.w	a3,a5
    800064fc:	00269713          	slli	a4,a3,0x2
    80006500:	000f4637          	lui	a2,0xf4
    80006504:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006508:	00d70733          	add	a4,a4,a3
    8000650c:	0037979b          	slliw	a5,a5,0x3
    80006510:	020046b7          	lui	a3,0x2004
    80006514:	00d787b3          	add	a5,a5,a3
    80006518:	00c585b3          	add	a1,a1,a2
    8000651c:	00371693          	slli	a3,a4,0x3
    80006520:	00005717          	auipc	a4,0x5
    80006524:	3c070713          	addi	a4,a4,960 # 8000b8e0 <timer_scratch>
    80006528:	00b7b023          	sd	a1,0(a5)
    8000652c:	00d70733          	add	a4,a4,a3
    80006530:	00f73c23          	sd	a5,24(a4)
    80006534:	02c73023          	sd	a2,32(a4)
    80006538:	34071073          	csrw	mscratch,a4
    8000653c:	00000797          	auipc	a5,0x0
    80006540:	6e478793          	addi	a5,a5,1764 # 80006c20 <timervec>
    80006544:	30579073          	csrw	mtvec,a5
    80006548:	300027f3          	csrr	a5,mstatus
    8000654c:	0087e793          	ori	a5,a5,8
    80006550:	30079073          	csrw	mstatus,a5
    80006554:	304027f3          	csrr	a5,mie
    80006558:	0807e793          	ori	a5,a5,128
    8000655c:	30479073          	csrw	mie,a5
    80006560:	f14027f3          	csrr	a5,mhartid
    80006564:	0007879b          	sext.w	a5,a5
    80006568:	00078213          	mv	tp,a5
    8000656c:	30200073          	mret
    80006570:	00813403          	ld	s0,8(sp)
    80006574:	01010113          	addi	sp,sp,16
    80006578:	00008067          	ret

000000008000657c <timerinit>:
    8000657c:	ff010113          	addi	sp,sp,-16
    80006580:	00813423          	sd	s0,8(sp)
    80006584:	01010413          	addi	s0,sp,16
    80006588:	f14027f3          	csrr	a5,mhartid
    8000658c:	0200c737          	lui	a4,0x200c
    80006590:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006594:	0007869b          	sext.w	a3,a5
    80006598:	00269713          	slli	a4,a3,0x2
    8000659c:	000f4637          	lui	a2,0xf4
    800065a0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800065a4:	00d70733          	add	a4,a4,a3
    800065a8:	0037979b          	slliw	a5,a5,0x3
    800065ac:	020046b7          	lui	a3,0x2004
    800065b0:	00d787b3          	add	a5,a5,a3
    800065b4:	00c585b3          	add	a1,a1,a2
    800065b8:	00371693          	slli	a3,a4,0x3
    800065bc:	00005717          	auipc	a4,0x5
    800065c0:	32470713          	addi	a4,a4,804 # 8000b8e0 <timer_scratch>
    800065c4:	00b7b023          	sd	a1,0(a5)
    800065c8:	00d70733          	add	a4,a4,a3
    800065cc:	00f73c23          	sd	a5,24(a4)
    800065d0:	02c73023          	sd	a2,32(a4)
    800065d4:	34071073          	csrw	mscratch,a4
    800065d8:	00000797          	auipc	a5,0x0
    800065dc:	64878793          	addi	a5,a5,1608 # 80006c20 <timervec>
    800065e0:	30579073          	csrw	mtvec,a5
    800065e4:	300027f3          	csrr	a5,mstatus
    800065e8:	0087e793          	ori	a5,a5,8
    800065ec:	30079073          	csrw	mstatus,a5
    800065f0:	304027f3          	csrr	a5,mie
    800065f4:	0807e793          	ori	a5,a5,128
    800065f8:	30479073          	csrw	mie,a5
    800065fc:	00813403          	ld	s0,8(sp)
    80006600:	01010113          	addi	sp,sp,16
    80006604:	00008067          	ret

0000000080006608 <system_main>:
    80006608:	fe010113          	addi	sp,sp,-32
    8000660c:	00813823          	sd	s0,16(sp)
    80006610:	00913423          	sd	s1,8(sp)
    80006614:	00113c23          	sd	ra,24(sp)
    80006618:	02010413          	addi	s0,sp,32
    8000661c:	00000097          	auipc	ra,0x0
    80006620:	0c4080e7          	jalr	196(ra) # 800066e0 <cpuid>
    80006624:	00005497          	auipc	s1,0x5
    80006628:	28848493          	addi	s1,s1,648 # 8000b8ac <started>
    8000662c:	02050263          	beqz	a0,80006650 <system_main+0x48>
    80006630:	0004a783          	lw	a5,0(s1)
    80006634:	0007879b          	sext.w	a5,a5
    80006638:	fe078ce3          	beqz	a5,80006630 <system_main+0x28>
    8000663c:	0ff0000f          	fence
    80006640:	00003517          	auipc	a0,0x3
    80006644:	21850513          	addi	a0,a0,536 # 80009858 <_ZTV7WorkerD+0x2d0>
    80006648:	00001097          	auipc	ra,0x1
    8000664c:	a74080e7          	jalr	-1420(ra) # 800070bc <panic>
    80006650:	00001097          	auipc	ra,0x1
    80006654:	9c8080e7          	jalr	-1592(ra) # 80007018 <consoleinit>
    80006658:	00001097          	auipc	ra,0x1
    8000665c:	154080e7          	jalr	340(ra) # 800077ac <printfinit>
    80006660:	00003517          	auipc	a0,0x3
    80006664:	09050513          	addi	a0,a0,144 # 800096f0 <_ZTV7WorkerD+0x168>
    80006668:	00001097          	auipc	ra,0x1
    8000666c:	ab0080e7          	jalr	-1360(ra) # 80007118 <__printf>
    80006670:	00003517          	auipc	a0,0x3
    80006674:	1b850513          	addi	a0,a0,440 # 80009828 <_ZTV7WorkerD+0x2a0>
    80006678:	00001097          	auipc	ra,0x1
    8000667c:	aa0080e7          	jalr	-1376(ra) # 80007118 <__printf>
    80006680:	00003517          	auipc	a0,0x3
    80006684:	07050513          	addi	a0,a0,112 # 800096f0 <_ZTV7WorkerD+0x168>
    80006688:	00001097          	auipc	ra,0x1
    8000668c:	a90080e7          	jalr	-1392(ra) # 80007118 <__printf>
    80006690:	00001097          	auipc	ra,0x1
    80006694:	4a8080e7          	jalr	1192(ra) # 80007b38 <kinit>
    80006698:	00000097          	auipc	ra,0x0
    8000669c:	148080e7          	jalr	328(ra) # 800067e0 <trapinit>
    800066a0:	00000097          	auipc	ra,0x0
    800066a4:	16c080e7          	jalr	364(ra) # 8000680c <trapinithart>
    800066a8:	00000097          	auipc	ra,0x0
    800066ac:	5b8080e7          	jalr	1464(ra) # 80006c60 <plicinit>
    800066b0:	00000097          	auipc	ra,0x0
    800066b4:	5d8080e7          	jalr	1496(ra) # 80006c88 <plicinithart>
    800066b8:	00000097          	auipc	ra,0x0
    800066bc:	078080e7          	jalr	120(ra) # 80006730 <userinit>
    800066c0:	0ff0000f          	fence
    800066c4:	00100793          	li	a5,1
    800066c8:	00003517          	auipc	a0,0x3
    800066cc:	17850513          	addi	a0,a0,376 # 80009840 <_ZTV7WorkerD+0x2b8>
    800066d0:	00f4a023          	sw	a5,0(s1)
    800066d4:	00001097          	auipc	ra,0x1
    800066d8:	a44080e7          	jalr	-1468(ra) # 80007118 <__printf>
    800066dc:	0000006f          	j	800066dc <system_main+0xd4>

00000000800066e0 <cpuid>:
    800066e0:	ff010113          	addi	sp,sp,-16
    800066e4:	00813423          	sd	s0,8(sp)
    800066e8:	01010413          	addi	s0,sp,16
    800066ec:	00020513          	mv	a0,tp
    800066f0:	00813403          	ld	s0,8(sp)
    800066f4:	0005051b          	sext.w	a0,a0
    800066f8:	01010113          	addi	sp,sp,16
    800066fc:	00008067          	ret

0000000080006700 <mycpu>:
    80006700:	ff010113          	addi	sp,sp,-16
    80006704:	00813423          	sd	s0,8(sp)
    80006708:	01010413          	addi	s0,sp,16
    8000670c:	00020793          	mv	a5,tp
    80006710:	00813403          	ld	s0,8(sp)
    80006714:	0007879b          	sext.w	a5,a5
    80006718:	00779793          	slli	a5,a5,0x7
    8000671c:	00006517          	auipc	a0,0x6
    80006720:	1f450513          	addi	a0,a0,500 # 8000c910 <cpus>
    80006724:	00f50533          	add	a0,a0,a5
    80006728:	01010113          	addi	sp,sp,16
    8000672c:	00008067          	ret

0000000080006730 <userinit>:
    80006730:	ff010113          	addi	sp,sp,-16
    80006734:	00813423          	sd	s0,8(sp)
    80006738:	01010413          	addi	s0,sp,16
    8000673c:	00813403          	ld	s0,8(sp)
    80006740:	01010113          	addi	sp,sp,16
    80006744:	ffffb317          	auipc	t1,0xffffb
    80006748:	dfc30067          	jr	-516(t1) # 80001540 <main>

000000008000674c <either_copyout>:
    8000674c:	ff010113          	addi	sp,sp,-16
    80006750:	00813023          	sd	s0,0(sp)
    80006754:	00113423          	sd	ra,8(sp)
    80006758:	01010413          	addi	s0,sp,16
    8000675c:	02051663          	bnez	a0,80006788 <either_copyout+0x3c>
    80006760:	00058513          	mv	a0,a1
    80006764:	00060593          	mv	a1,a2
    80006768:	0006861b          	sext.w	a2,a3
    8000676c:	00002097          	auipc	ra,0x2
    80006770:	c58080e7          	jalr	-936(ra) # 800083c4 <__memmove>
    80006774:	00813083          	ld	ra,8(sp)
    80006778:	00013403          	ld	s0,0(sp)
    8000677c:	00000513          	li	a0,0
    80006780:	01010113          	addi	sp,sp,16
    80006784:	00008067          	ret
    80006788:	00003517          	auipc	a0,0x3
    8000678c:	0f850513          	addi	a0,a0,248 # 80009880 <_ZTV7WorkerD+0x2f8>
    80006790:	00001097          	auipc	ra,0x1
    80006794:	92c080e7          	jalr	-1748(ra) # 800070bc <panic>

0000000080006798 <either_copyin>:
    80006798:	ff010113          	addi	sp,sp,-16
    8000679c:	00813023          	sd	s0,0(sp)
    800067a0:	00113423          	sd	ra,8(sp)
    800067a4:	01010413          	addi	s0,sp,16
    800067a8:	02059463          	bnez	a1,800067d0 <either_copyin+0x38>
    800067ac:	00060593          	mv	a1,a2
    800067b0:	0006861b          	sext.w	a2,a3
    800067b4:	00002097          	auipc	ra,0x2
    800067b8:	c10080e7          	jalr	-1008(ra) # 800083c4 <__memmove>
    800067bc:	00813083          	ld	ra,8(sp)
    800067c0:	00013403          	ld	s0,0(sp)
    800067c4:	00000513          	li	a0,0
    800067c8:	01010113          	addi	sp,sp,16
    800067cc:	00008067          	ret
    800067d0:	00003517          	auipc	a0,0x3
    800067d4:	0d850513          	addi	a0,a0,216 # 800098a8 <_ZTV7WorkerD+0x320>
    800067d8:	00001097          	auipc	ra,0x1
    800067dc:	8e4080e7          	jalr	-1820(ra) # 800070bc <panic>

00000000800067e0 <trapinit>:
    800067e0:	ff010113          	addi	sp,sp,-16
    800067e4:	00813423          	sd	s0,8(sp)
    800067e8:	01010413          	addi	s0,sp,16
    800067ec:	00813403          	ld	s0,8(sp)
    800067f0:	00003597          	auipc	a1,0x3
    800067f4:	0e058593          	addi	a1,a1,224 # 800098d0 <_ZTV7WorkerD+0x348>
    800067f8:	00006517          	auipc	a0,0x6
    800067fc:	19850513          	addi	a0,a0,408 # 8000c990 <tickslock>
    80006800:	01010113          	addi	sp,sp,16
    80006804:	00001317          	auipc	t1,0x1
    80006808:	5c430067          	jr	1476(t1) # 80007dc8 <initlock>

000000008000680c <trapinithart>:
    8000680c:	ff010113          	addi	sp,sp,-16
    80006810:	00813423          	sd	s0,8(sp)
    80006814:	01010413          	addi	s0,sp,16
    80006818:	00000797          	auipc	a5,0x0
    8000681c:	2f878793          	addi	a5,a5,760 # 80006b10 <kernelvec>
    80006820:	10579073          	csrw	stvec,a5
    80006824:	00813403          	ld	s0,8(sp)
    80006828:	01010113          	addi	sp,sp,16
    8000682c:	00008067          	ret

0000000080006830 <usertrap>:
    80006830:	ff010113          	addi	sp,sp,-16
    80006834:	00813423          	sd	s0,8(sp)
    80006838:	01010413          	addi	s0,sp,16
    8000683c:	00813403          	ld	s0,8(sp)
    80006840:	01010113          	addi	sp,sp,16
    80006844:	00008067          	ret

0000000080006848 <usertrapret>:
    80006848:	ff010113          	addi	sp,sp,-16
    8000684c:	00813423          	sd	s0,8(sp)
    80006850:	01010413          	addi	s0,sp,16
    80006854:	00813403          	ld	s0,8(sp)
    80006858:	01010113          	addi	sp,sp,16
    8000685c:	00008067          	ret

0000000080006860 <kerneltrap>:
    80006860:	fe010113          	addi	sp,sp,-32
    80006864:	00813823          	sd	s0,16(sp)
    80006868:	00113c23          	sd	ra,24(sp)
    8000686c:	00913423          	sd	s1,8(sp)
    80006870:	02010413          	addi	s0,sp,32
    80006874:	142025f3          	csrr	a1,scause
    80006878:	100027f3          	csrr	a5,sstatus
    8000687c:	0027f793          	andi	a5,a5,2
    80006880:	10079c63          	bnez	a5,80006998 <kerneltrap+0x138>
    80006884:	142027f3          	csrr	a5,scause
    80006888:	0207ce63          	bltz	a5,800068c4 <kerneltrap+0x64>
    8000688c:	00003517          	auipc	a0,0x3
    80006890:	08c50513          	addi	a0,a0,140 # 80009918 <_ZTV7WorkerD+0x390>
    80006894:	00001097          	auipc	ra,0x1
    80006898:	884080e7          	jalr	-1916(ra) # 80007118 <__printf>
    8000689c:	141025f3          	csrr	a1,sepc
    800068a0:	14302673          	csrr	a2,stval
    800068a4:	00003517          	auipc	a0,0x3
    800068a8:	08450513          	addi	a0,a0,132 # 80009928 <_ZTV7WorkerD+0x3a0>
    800068ac:	00001097          	auipc	ra,0x1
    800068b0:	86c080e7          	jalr	-1940(ra) # 80007118 <__printf>
    800068b4:	00003517          	auipc	a0,0x3
    800068b8:	08c50513          	addi	a0,a0,140 # 80009940 <_ZTV7WorkerD+0x3b8>
    800068bc:	00001097          	auipc	ra,0x1
    800068c0:	800080e7          	jalr	-2048(ra) # 800070bc <panic>
    800068c4:	0ff7f713          	andi	a4,a5,255
    800068c8:	00900693          	li	a3,9
    800068cc:	04d70063          	beq	a4,a3,8000690c <kerneltrap+0xac>
    800068d0:	fff00713          	li	a4,-1
    800068d4:	03f71713          	slli	a4,a4,0x3f
    800068d8:	00170713          	addi	a4,a4,1
    800068dc:	fae798e3          	bne	a5,a4,8000688c <kerneltrap+0x2c>
    800068e0:	00000097          	auipc	ra,0x0
    800068e4:	e00080e7          	jalr	-512(ra) # 800066e0 <cpuid>
    800068e8:	06050663          	beqz	a0,80006954 <kerneltrap+0xf4>
    800068ec:	144027f3          	csrr	a5,sip
    800068f0:	ffd7f793          	andi	a5,a5,-3
    800068f4:	14479073          	csrw	sip,a5
    800068f8:	01813083          	ld	ra,24(sp)
    800068fc:	01013403          	ld	s0,16(sp)
    80006900:	00813483          	ld	s1,8(sp)
    80006904:	02010113          	addi	sp,sp,32
    80006908:	00008067          	ret
    8000690c:	00000097          	auipc	ra,0x0
    80006910:	3c8080e7          	jalr	968(ra) # 80006cd4 <plic_claim>
    80006914:	00a00793          	li	a5,10
    80006918:	00050493          	mv	s1,a0
    8000691c:	06f50863          	beq	a0,a5,8000698c <kerneltrap+0x12c>
    80006920:	fc050ce3          	beqz	a0,800068f8 <kerneltrap+0x98>
    80006924:	00050593          	mv	a1,a0
    80006928:	00003517          	auipc	a0,0x3
    8000692c:	fd050513          	addi	a0,a0,-48 # 800098f8 <_ZTV7WorkerD+0x370>
    80006930:	00000097          	auipc	ra,0x0
    80006934:	7e8080e7          	jalr	2024(ra) # 80007118 <__printf>
    80006938:	01013403          	ld	s0,16(sp)
    8000693c:	01813083          	ld	ra,24(sp)
    80006940:	00048513          	mv	a0,s1
    80006944:	00813483          	ld	s1,8(sp)
    80006948:	02010113          	addi	sp,sp,32
    8000694c:	00000317          	auipc	t1,0x0
    80006950:	3c030067          	jr	960(t1) # 80006d0c <plic_complete>
    80006954:	00006517          	auipc	a0,0x6
    80006958:	03c50513          	addi	a0,a0,60 # 8000c990 <tickslock>
    8000695c:	00001097          	auipc	ra,0x1
    80006960:	490080e7          	jalr	1168(ra) # 80007dec <acquire>
    80006964:	00005717          	auipc	a4,0x5
    80006968:	f4c70713          	addi	a4,a4,-180 # 8000b8b0 <ticks>
    8000696c:	00072783          	lw	a5,0(a4)
    80006970:	00006517          	auipc	a0,0x6
    80006974:	02050513          	addi	a0,a0,32 # 8000c990 <tickslock>
    80006978:	0017879b          	addiw	a5,a5,1
    8000697c:	00f72023          	sw	a5,0(a4)
    80006980:	00001097          	auipc	ra,0x1
    80006984:	538080e7          	jalr	1336(ra) # 80007eb8 <release>
    80006988:	f65ff06f          	j	800068ec <kerneltrap+0x8c>
    8000698c:	00001097          	auipc	ra,0x1
    80006990:	094080e7          	jalr	148(ra) # 80007a20 <uartintr>
    80006994:	fa5ff06f          	j	80006938 <kerneltrap+0xd8>
    80006998:	00003517          	auipc	a0,0x3
    8000699c:	f4050513          	addi	a0,a0,-192 # 800098d8 <_ZTV7WorkerD+0x350>
    800069a0:	00000097          	auipc	ra,0x0
    800069a4:	71c080e7          	jalr	1820(ra) # 800070bc <panic>

00000000800069a8 <clockintr>:
    800069a8:	fe010113          	addi	sp,sp,-32
    800069ac:	00813823          	sd	s0,16(sp)
    800069b0:	00913423          	sd	s1,8(sp)
    800069b4:	00113c23          	sd	ra,24(sp)
    800069b8:	02010413          	addi	s0,sp,32
    800069bc:	00006497          	auipc	s1,0x6
    800069c0:	fd448493          	addi	s1,s1,-44 # 8000c990 <tickslock>
    800069c4:	00048513          	mv	a0,s1
    800069c8:	00001097          	auipc	ra,0x1
    800069cc:	424080e7          	jalr	1060(ra) # 80007dec <acquire>
    800069d0:	00005717          	auipc	a4,0x5
    800069d4:	ee070713          	addi	a4,a4,-288 # 8000b8b0 <ticks>
    800069d8:	00072783          	lw	a5,0(a4)
    800069dc:	01013403          	ld	s0,16(sp)
    800069e0:	01813083          	ld	ra,24(sp)
    800069e4:	00048513          	mv	a0,s1
    800069e8:	0017879b          	addiw	a5,a5,1
    800069ec:	00813483          	ld	s1,8(sp)
    800069f0:	00f72023          	sw	a5,0(a4)
    800069f4:	02010113          	addi	sp,sp,32
    800069f8:	00001317          	auipc	t1,0x1
    800069fc:	4c030067          	jr	1216(t1) # 80007eb8 <release>

0000000080006a00 <devintr>:
    80006a00:	142027f3          	csrr	a5,scause
    80006a04:	00000513          	li	a0,0
    80006a08:	0007c463          	bltz	a5,80006a10 <devintr+0x10>
    80006a0c:	00008067          	ret
    80006a10:	fe010113          	addi	sp,sp,-32
    80006a14:	00813823          	sd	s0,16(sp)
    80006a18:	00113c23          	sd	ra,24(sp)
    80006a1c:	00913423          	sd	s1,8(sp)
    80006a20:	02010413          	addi	s0,sp,32
    80006a24:	0ff7f713          	andi	a4,a5,255
    80006a28:	00900693          	li	a3,9
    80006a2c:	04d70c63          	beq	a4,a3,80006a84 <devintr+0x84>
    80006a30:	fff00713          	li	a4,-1
    80006a34:	03f71713          	slli	a4,a4,0x3f
    80006a38:	00170713          	addi	a4,a4,1
    80006a3c:	00e78c63          	beq	a5,a4,80006a54 <devintr+0x54>
    80006a40:	01813083          	ld	ra,24(sp)
    80006a44:	01013403          	ld	s0,16(sp)
    80006a48:	00813483          	ld	s1,8(sp)
    80006a4c:	02010113          	addi	sp,sp,32
    80006a50:	00008067          	ret
    80006a54:	00000097          	auipc	ra,0x0
    80006a58:	c8c080e7          	jalr	-884(ra) # 800066e0 <cpuid>
    80006a5c:	06050663          	beqz	a0,80006ac8 <devintr+0xc8>
    80006a60:	144027f3          	csrr	a5,sip
    80006a64:	ffd7f793          	andi	a5,a5,-3
    80006a68:	14479073          	csrw	sip,a5
    80006a6c:	01813083          	ld	ra,24(sp)
    80006a70:	01013403          	ld	s0,16(sp)
    80006a74:	00813483          	ld	s1,8(sp)
    80006a78:	00200513          	li	a0,2
    80006a7c:	02010113          	addi	sp,sp,32
    80006a80:	00008067          	ret
    80006a84:	00000097          	auipc	ra,0x0
    80006a88:	250080e7          	jalr	592(ra) # 80006cd4 <plic_claim>
    80006a8c:	00a00793          	li	a5,10
    80006a90:	00050493          	mv	s1,a0
    80006a94:	06f50663          	beq	a0,a5,80006b00 <devintr+0x100>
    80006a98:	00100513          	li	a0,1
    80006a9c:	fa0482e3          	beqz	s1,80006a40 <devintr+0x40>
    80006aa0:	00048593          	mv	a1,s1
    80006aa4:	00003517          	auipc	a0,0x3
    80006aa8:	e5450513          	addi	a0,a0,-428 # 800098f8 <_ZTV7WorkerD+0x370>
    80006aac:	00000097          	auipc	ra,0x0
    80006ab0:	66c080e7          	jalr	1644(ra) # 80007118 <__printf>
    80006ab4:	00048513          	mv	a0,s1
    80006ab8:	00000097          	auipc	ra,0x0
    80006abc:	254080e7          	jalr	596(ra) # 80006d0c <plic_complete>
    80006ac0:	00100513          	li	a0,1
    80006ac4:	f7dff06f          	j	80006a40 <devintr+0x40>
    80006ac8:	00006517          	auipc	a0,0x6
    80006acc:	ec850513          	addi	a0,a0,-312 # 8000c990 <tickslock>
    80006ad0:	00001097          	auipc	ra,0x1
    80006ad4:	31c080e7          	jalr	796(ra) # 80007dec <acquire>
    80006ad8:	00005717          	auipc	a4,0x5
    80006adc:	dd870713          	addi	a4,a4,-552 # 8000b8b0 <ticks>
    80006ae0:	00072783          	lw	a5,0(a4)
    80006ae4:	00006517          	auipc	a0,0x6
    80006ae8:	eac50513          	addi	a0,a0,-340 # 8000c990 <tickslock>
    80006aec:	0017879b          	addiw	a5,a5,1
    80006af0:	00f72023          	sw	a5,0(a4)
    80006af4:	00001097          	auipc	ra,0x1
    80006af8:	3c4080e7          	jalr	964(ra) # 80007eb8 <release>
    80006afc:	f65ff06f          	j	80006a60 <devintr+0x60>
    80006b00:	00001097          	auipc	ra,0x1
    80006b04:	f20080e7          	jalr	-224(ra) # 80007a20 <uartintr>
    80006b08:	fadff06f          	j	80006ab4 <devintr+0xb4>
    80006b0c:	0000                	unimp
	...

0000000080006b10 <kernelvec>:
    80006b10:	f0010113          	addi	sp,sp,-256
    80006b14:	00113023          	sd	ra,0(sp)
    80006b18:	00213423          	sd	sp,8(sp)
    80006b1c:	00313823          	sd	gp,16(sp)
    80006b20:	00413c23          	sd	tp,24(sp)
    80006b24:	02513023          	sd	t0,32(sp)
    80006b28:	02613423          	sd	t1,40(sp)
    80006b2c:	02713823          	sd	t2,48(sp)
    80006b30:	02813c23          	sd	s0,56(sp)
    80006b34:	04913023          	sd	s1,64(sp)
    80006b38:	04a13423          	sd	a0,72(sp)
    80006b3c:	04b13823          	sd	a1,80(sp)
    80006b40:	04c13c23          	sd	a2,88(sp)
    80006b44:	06d13023          	sd	a3,96(sp)
    80006b48:	06e13423          	sd	a4,104(sp)
    80006b4c:	06f13823          	sd	a5,112(sp)
    80006b50:	07013c23          	sd	a6,120(sp)
    80006b54:	09113023          	sd	a7,128(sp)
    80006b58:	09213423          	sd	s2,136(sp)
    80006b5c:	09313823          	sd	s3,144(sp)
    80006b60:	09413c23          	sd	s4,152(sp)
    80006b64:	0b513023          	sd	s5,160(sp)
    80006b68:	0b613423          	sd	s6,168(sp)
    80006b6c:	0b713823          	sd	s7,176(sp)
    80006b70:	0b813c23          	sd	s8,184(sp)
    80006b74:	0d913023          	sd	s9,192(sp)
    80006b78:	0da13423          	sd	s10,200(sp)
    80006b7c:	0db13823          	sd	s11,208(sp)
    80006b80:	0dc13c23          	sd	t3,216(sp)
    80006b84:	0fd13023          	sd	t4,224(sp)
    80006b88:	0fe13423          	sd	t5,232(sp)
    80006b8c:	0ff13823          	sd	t6,240(sp)
    80006b90:	cd1ff0ef          	jal	ra,80006860 <kerneltrap>
    80006b94:	00013083          	ld	ra,0(sp)
    80006b98:	00813103          	ld	sp,8(sp)
    80006b9c:	01013183          	ld	gp,16(sp)
    80006ba0:	02013283          	ld	t0,32(sp)
    80006ba4:	02813303          	ld	t1,40(sp)
    80006ba8:	03013383          	ld	t2,48(sp)
    80006bac:	03813403          	ld	s0,56(sp)
    80006bb0:	04013483          	ld	s1,64(sp)
    80006bb4:	04813503          	ld	a0,72(sp)
    80006bb8:	05013583          	ld	a1,80(sp)
    80006bbc:	05813603          	ld	a2,88(sp)
    80006bc0:	06013683          	ld	a3,96(sp)
    80006bc4:	06813703          	ld	a4,104(sp)
    80006bc8:	07013783          	ld	a5,112(sp)
    80006bcc:	07813803          	ld	a6,120(sp)
    80006bd0:	08013883          	ld	a7,128(sp)
    80006bd4:	08813903          	ld	s2,136(sp)
    80006bd8:	09013983          	ld	s3,144(sp)
    80006bdc:	09813a03          	ld	s4,152(sp)
    80006be0:	0a013a83          	ld	s5,160(sp)
    80006be4:	0a813b03          	ld	s6,168(sp)
    80006be8:	0b013b83          	ld	s7,176(sp)
    80006bec:	0b813c03          	ld	s8,184(sp)
    80006bf0:	0c013c83          	ld	s9,192(sp)
    80006bf4:	0c813d03          	ld	s10,200(sp)
    80006bf8:	0d013d83          	ld	s11,208(sp)
    80006bfc:	0d813e03          	ld	t3,216(sp)
    80006c00:	0e013e83          	ld	t4,224(sp)
    80006c04:	0e813f03          	ld	t5,232(sp)
    80006c08:	0f013f83          	ld	t6,240(sp)
    80006c0c:	10010113          	addi	sp,sp,256
    80006c10:	10200073          	sret
    80006c14:	00000013          	nop
    80006c18:	00000013          	nop
    80006c1c:	00000013          	nop

0000000080006c20 <timervec>:
    80006c20:	34051573          	csrrw	a0,mscratch,a0
    80006c24:	00b53023          	sd	a1,0(a0)
    80006c28:	00c53423          	sd	a2,8(a0)
    80006c2c:	00d53823          	sd	a3,16(a0)
    80006c30:	01853583          	ld	a1,24(a0)
    80006c34:	02053603          	ld	a2,32(a0)
    80006c38:	0005b683          	ld	a3,0(a1)
    80006c3c:	00c686b3          	add	a3,a3,a2
    80006c40:	00d5b023          	sd	a3,0(a1)
    80006c44:	00200593          	li	a1,2
    80006c48:	14459073          	csrw	sip,a1
    80006c4c:	01053683          	ld	a3,16(a0)
    80006c50:	00853603          	ld	a2,8(a0)
    80006c54:	00053583          	ld	a1,0(a0)
    80006c58:	34051573          	csrrw	a0,mscratch,a0
    80006c5c:	30200073          	mret

0000000080006c60 <plicinit>:
    80006c60:	ff010113          	addi	sp,sp,-16
    80006c64:	00813423          	sd	s0,8(sp)
    80006c68:	01010413          	addi	s0,sp,16
    80006c6c:	00813403          	ld	s0,8(sp)
    80006c70:	0c0007b7          	lui	a5,0xc000
    80006c74:	00100713          	li	a4,1
    80006c78:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006c7c:	00e7a223          	sw	a4,4(a5)
    80006c80:	01010113          	addi	sp,sp,16
    80006c84:	00008067          	ret

0000000080006c88 <plicinithart>:
    80006c88:	ff010113          	addi	sp,sp,-16
    80006c8c:	00813023          	sd	s0,0(sp)
    80006c90:	00113423          	sd	ra,8(sp)
    80006c94:	01010413          	addi	s0,sp,16
    80006c98:	00000097          	auipc	ra,0x0
    80006c9c:	a48080e7          	jalr	-1464(ra) # 800066e0 <cpuid>
    80006ca0:	0085171b          	slliw	a4,a0,0x8
    80006ca4:	0c0027b7          	lui	a5,0xc002
    80006ca8:	00e787b3          	add	a5,a5,a4
    80006cac:	40200713          	li	a4,1026
    80006cb0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006cb4:	00813083          	ld	ra,8(sp)
    80006cb8:	00013403          	ld	s0,0(sp)
    80006cbc:	00d5151b          	slliw	a0,a0,0xd
    80006cc0:	0c2017b7          	lui	a5,0xc201
    80006cc4:	00a78533          	add	a0,a5,a0
    80006cc8:	00052023          	sw	zero,0(a0)
    80006ccc:	01010113          	addi	sp,sp,16
    80006cd0:	00008067          	ret

0000000080006cd4 <plic_claim>:
    80006cd4:	ff010113          	addi	sp,sp,-16
    80006cd8:	00813023          	sd	s0,0(sp)
    80006cdc:	00113423          	sd	ra,8(sp)
    80006ce0:	01010413          	addi	s0,sp,16
    80006ce4:	00000097          	auipc	ra,0x0
    80006ce8:	9fc080e7          	jalr	-1540(ra) # 800066e0 <cpuid>
    80006cec:	00813083          	ld	ra,8(sp)
    80006cf0:	00013403          	ld	s0,0(sp)
    80006cf4:	00d5151b          	slliw	a0,a0,0xd
    80006cf8:	0c2017b7          	lui	a5,0xc201
    80006cfc:	00a78533          	add	a0,a5,a0
    80006d00:	00452503          	lw	a0,4(a0)
    80006d04:	01010113          	addi	sp,sp,16
    80006d08:	00008067          	ret

0000000080006d0c <plic_complete>:
    80006d0c:	fe010113          	addi	sp,sp,-32
    80006d10:	00813823          	sd	s0,16(sp)
    80006d14:	00913423          	sd	s1,8(sp)
    80006d18:	00113c23          	sd	ra,24(sp)
    80006d1c:	02010413          	addi	s0,sp,32
    80006d20:	00050493          	mv	s1,a0
    80006d24:	00000097          	auipc	ra,0x0
    80006d28:	9bc080e7          	jalr	-1604(ra) # 800066e0 <cpuid>
    80006d2c:	01813083          	ld	ra,24(sp)
    80006d30:	01013403          	ld	s0,16(sp)
    80006d34:	00d5179b          	slliw	a5,a0,0xd
    80006d38:	0c201737          	lui	a4,0xc201
    80006d3c:	00f707b3          	add	a5,a4,a5
    80006d40:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006d44:	00813483          	ld	s1,8(sp)
    80006d48:	02010113          	addi	sp,sp,32
    80006d4c:	00008067          	ret

0000000080006d50 <consolewrite>:
    80006d50:	fb010113          	addi	sp,sp,-80
    80006d54:	04813023          	sd	s0,64(sp)
    80006d58:	04113423          	sd	ra,72(sp)
    80006d5c:	02913c23          	sd	s1,56(sp)
    80006d60:	03213823          	sd	s2,48(sp)
    80006d64:	03313423          	sd	s3,40(sp)
    80006d68:	03413023          	sd	s4,32(sp)
    80006d6c:	01513c23          	sd	s5,24(sp)
    80006d70:	05010413          	addi	s0,sp,80
    80006d74:	06c05c63          	blez	a2,80006dec <consolewrite+0x9c>
    80006d78:	00060993          	mv	s3,a2
    80006d7c:	00050a13          	mv	s4,a0
    80006d80:	00058493          	mv	s1,a1
    80006d84:	00000913          	li	s2,0
    80006d88:	fff00a93          	li	s5,-1
    80006d8c:	01c0006f          	j	80006da8 <consolewrite+0x58>
    80006d90:	fbf44503          	lbu	a0,-65(s0)
    80006d94:	0019091b          	addiw	s2,s2,1
    80006d98:	00148493          	addi	s1,s1,1
    80006d9c:	00001097          	auipc	ra,0x1
    80006da0:	a9c080e7          	jalr	-1380(ra) # 80007838 <uartputc>
    80006da4:	03298063          	beq	s3,s2,80006dc4 <consolewrite+0x74>
    80006da8:	00048613          	mv	a2,s1
    80006dac:	00100693          	li	a3,1
    80006db0:	000a0593          	mv	a1,s4
    80006db4:	fbf40513          	addi	a0,s0,-65
    80006db8:	00000097          	auipc	ra,0x0
    80006dbc:	9e0080e7          	jalr	-1568(ra) # 80006798 <either_copyin>
    80006dc0:	fd5518e3          	bne	a0,s5,80006d90 <consolewrite+0x40>
    80006dc4:	04813083          	ld	ra,72(sp)
    80006dc8:	04013403          	ld	s0,64(sp)
    80006dcc:	03813483          	ld	s1,56(sp)
    80006dd0:	02813983          	ld	s3,40(sp)
    80006dd4:	02013a03          	ld	s4,32(sp)
    80006dd8:	01813a83          	ld	s5,24(sp)
    80006ddc:	00090513          	mv	a0,s2
    80006de0:	03013903          	ld	s2,48(sp)
    80006de4:	05010113          	addi	sp,sp,80
    80006de8:	00008067          	ret
    80006dec:	00000913          	li	s2,0
    80006df0:	fd5ff06f          	j	80006dc4 <consolewrite+0x74>

0000000080006df4 <consoleread>:
    80006df4:	f9010113          	addi	sp,sp,-112
    80006df8:	06813023          	sd	s0,96(sp)
    80006dfc:	04913c23          	sd	s1,88(sp)
    80006e00:	05213823          	sd	s2,80(sp)
    80006e04:	05313423          	sd	s3,72(sp)
    80006e08:	05413023          	sd	s4,64(sp)
    80006e0c:	03513c23          	sd	s5,56(sp)
    80006e10:	03613823          	sd	s6,48(sp)
    80006e14:	03713423          	sd	s7,40(sp)
    80006e18:	03813023          	sd	s8,32(sp)
    80006e1c:	06113423          	sd	ra,104(sp)
    80006e20:	01913c23          	sd	s9,24(sp)
    80006e24:	07010413          	addi	s0,sp,112
    80006e28:	00060b93          	mv	s7,a2
    80006e2c:	00050913          	mv	s2,a0
    80006e30:	00058c13          	mv	s8,a1
    80006e34:	00060b1b          	sext.w	s6,a2
    80006e38:	00006497          	auipc	s1,0x6
    80006e3c:	b8048493          	addi	s1,s1,-1152 # 8000c9b8 <cons>
    80006e40:	00400993          	li	s3,4
    80006e44:	fff00a13          	li	s4,-1
    80006e48:	00a00a93          	li	s5,10
    80006e4c:	05705e63          	blez	s7,80006ea8 <consoleread+0xb4>
    80006e50:	09c4a703          	lw	a4,156(s1)
    80006e54:	0984a783          	lw	a5,152(s1)
    80006e58:	0007071b          	sext.w	a4,a4
    80006e5c:	08e78463          	beq	a5,a4,80006ee4 <consoleread+0xf0>
    80006e60:	07f7f713          	andi	a4,a5,127
    80006e64:	00e48733          	add	a4,s1,a4
    80006e68:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006e6c:	0017869b          	addiw	a3,a5,1
    80006e70:	08d4ac23          	sw	a3,152(s1)
    80006e74:	00070c9b          	sext.w	s9,a4
    80006e78:	0b370663          	beq	a4,s3,80006f24 <consoleread+0x130>
    80006e7c:	00100693          	li	a3,1
    80006e80:	f9f40613          	addi	a2,s0,-97
    80006e84:	000c0593          	mv	a1,s8
    80006e88:	00090513          	mv	a0,s2
    80006e8c:	f8e40fa3          	sb	a4,-97(s0)
    80006e90:	00000097          	auipc	ra,0x0
    80006e94:	8bc080e7          	jalr	-1860(ra) # 8000674c <either_copyout>
    80006e98:	01450863          	beq	a0,s4,80006ea8 <consoleread+0xb4>
    80006e9c:	001c0c13          	addi	s8,s8,1
    80006ea0:	fffb8b9b          	addiw	s7,s7,-1
    80006ea4:	fb5c94e3          	bne	s9,s5,80006e4c <consoleread+0x58>
    80006ea8:	000b851b          	sext.w	a0,s7
    80006eac:	06813083          	ld	ra,104(sp)
    80006eb0:	06013403          	ld	s0,96(sp)
    80006eb4:	05813483          	ld	s1,88(sp)
    80006eb8:	05013903          	ld	s2,80(sp)
    80006ebc:	04813983          	ld	s3,72(sp)
    80006ec0:	04013a03          	ld	s4,64(sp)
    80006ec4:	03813a83          	ld	s5,56(sp)
    80006ec8:	02813b83          	ld	s7,40(sp)
    80006ecc:	02013c03          	ld	s8,32(sp)
    80006ed0:	01813c83          	ld	s9,24(sp)
    80006ed4:	40ab053b          	subw	a0,s6,a0
    80006ed8:	03013b03          	ld	s6,48(sp)
    80006edc:	07010113          	addi	sp,sp,112
    80006ee0:	00008067          	ret
    80006ee4:	00001097          	auipc	ra,0x1
    80006ee8:	1d8080e7          	jalr	472(ra) # 800080bc <push_on>
    80006eec:	0984a703          	lw	a4,152(s1)
    80006ef0:	09c4a783          	lw	a5,156(s1)
    80006ef4:	0007879b          	sext.w	a5,a5
    80006ef8:	fef70ce3          	beq	a4,a5,80006ef0 <consoleread+0xfc>
    80006efc:	00001097          	auipc	ra,0x1
    80006f00:	234080e7          	jalr	564(ra) # 80008130 <pop_on>
    80006f04:	0984a783          	lw	a5,152(s1)
    80006f08:	07f7f713          	andi	a4,a5,127
    80006f0c:	00e48733          	add	a4,s1,a4
    80006f10:	01874703          	lbu	a4,24(a4)
    80006f14:	0017869b          	addiw	a3,a5,1
    80006f18:	08d4ac23          	sw	a3,152(s1)
    80006f1c:	00070c9b          	sext.w	s9,a4
    80006f20:	f5371ee3          	bne	a4,s3,80006e7c <consoleread+0x88>
    80006f24:	000b851b          	sext.w	a0,s7
    80006f28:	f96bf2e3          	bgeu	s7,s6,80006eac <consoleread+0xb8>
    80006f2c:	08f4ac23          	sw	a5,152(s1)
    80006f30:	f7dff06f          	j	80006eac <consoleread+0xb8>

0000000080006f34 <consputc>:
    80006f34:	10000793          	li	a5,256
    80006f38:	00f50663          	beq	a0,a5,80006f44 <consputc+0x10>
    80006f3c:	00001317          	auipc	t1,0x1
    80006f40:	9f430067          	jr	-1548(t1) # 80007930 <uartputc_sync>
    80006f44:	ff010113          	addi	sp,sp,-16
    80006f48:	00113423          	sd	ra,8(sp)
    80006f4c:	00813023          	sd	s0,0(sp)
    80006f50:	01010413          	addi	s0,sp,16
    80006f54:	00800513          	li	a0,8
    80006f58:	00001097          	auipc	ra,0x1
    80006f5c:	9d8080e7          	jalr	-1576(ra) # 80007930 <uartputc_sync>
    80006f60:	02000513          	li	a0,32
    80006f64:	00001097          	auipc	ra,0x1
    80006f68:	9cc080e7          	jalr	-1588(ra) # 80007930 <uartputc_sync>
    80006f6c:	00013403          	ld	s0,0(sp)
    80006f70:	00813083          	ld	ra,8(sp)
    80006f74:	00800513          	li	a0,8
    80006f78:	01010113          	addi	sp,sp,16
    80006f7c:	00001317          	auipc	t1,0x1
    80006f80:	9b430067          	jr	-1612(t1) # 80007930 <uartputc_sync>

0000000080006f84 <consoleintr>:
    80006f84:	fe010113          	addi	sp,sp,-32
    80006f88:	00813823          	sd	s0,16(sp)
    80006f8c:	00913423          	sd	s1,8(sp)
    80006f90:	01213023          	sd	s2,0(sp)
    80006f94:	00113c23          	sd	ra,24(sp)
    80006f98:	02010413          	addi	s0,sp,32
    80006f9c:	00006917          	auipc	s2,0x6
    80006fa0:	a1c90913          	addi	s2,s2,-1508 # 8000c9b8 <cons>
    80006fa4:	00050493          	mv	s1,a0
    80006fa8:	00090513          	mv	a0,s2
    80006fac:	00001097          	auipc	ra,0x1
    80006fb0:	e40080e7          	jalr	-448(ra) # 80007dec <acquire>
    80006fb4:	02048c63          	beqz	s1,80006fec <consoleintr+0x68>
    80006fb8:	0a092783          	lw	a5,160(s2)
    80006fbc:	09892703          	lw	a4,152(s2)
    80006fc0:	07f00693          	li	a3,127
    80006fc4:	40e7873b          	subw	a4,a5,a4
    80006fc8:	02e6e263          	bltu	a3,a4,80006fec <consoleintr+0x68>
    80006fcc:	00d00713          	li	a4,13
    80006fd0:	04e48063          	beq	s1,a4,80007010 <consoleintr+0x8c>
    80006fd4:	07f7f713          	andi	a4,a5,127
    80006fd8:	00e90733          	add	a4,s2,a4
    80006fdc:	0017879b          	addiw	a5,a5,1
    80006fe0:	0af92023          	sw	a5,160(s2)
    80006fe4:	00970c23          	sb	s1,24(a4)
    80006fe8:	08f92e23          	sw	a5,156(s2)
    80006fec:	01013403          	ld	s0,16(sp)
    80006ff0:	01813083          	ld	ra,24(sp)
    80006ff4:	00813483          	ld	s1,8(sp)
    80006ff8:	00013903          	ld	s2,0(sp)
    80006ffc:	00006517          	auipc	a0,0x6
    80007000:	9bc50513          	addi	a0,a0,-1604 # 8000c9b8 <cons>
    80007004:	02010113          	addi	sp,sp,32
    80007008:	00001317          	auipc	t1,0x1
    8000700c:	eb030067          	jr	-336(t1) # 80007eb8 <release>
    80007010:	00a00493          	li	s1,10
    80007014:	fc1ff06f          	j	80006fd4 <consoleintr+0x50>

0000000080007018 <consoleinit>:
    80007018:	fe010113          	addi	sp,sp,-32
    8000701c:	00113c23          	sd	ra,24(sp)
    80007020:	00813823          	sd	s0,16(sp)
    80007024:	00913423          	sd	s1,8(sp)
    80007028:	02010413          	addi	s0,sp,32
    8000702c:	00006497          	auipc	s1,0x6
    80007030:	98c48493          	addi	s1,s1,-1652 # 8000c9b8 <cons>
    80007034:	00048513          	mv	a0,s1
    80007038:	00003597          	auipc	a1,0x3
    8000703c:	91858593          	addi	a1,a1,-1768 # 80009950 <_ZTV7WorkerD+0x3c8>
    80007040:	00001097          	auipc	ra,0x1
    80007044:	d88080e7          	jalr	-632(ra) # 80007dc8 <initlock>
    80007048:	00000097          	auipc	ra,0x0
    8000704c:	7ac080e7          	jalr	1964(ra) # 800077f4 <uartinit>
    80007050:	01813083          	ld	ra,24(sp)
    80007054:	01013403          	ld	s0,16(sp)
    80007058:	00000797          	auipc	a5,0x0
    8000705c:	d9c78793          	addi	a5,a5,-612 # 80006df4 <consoleread>
    80007060:	0af4bc23          	sd	a5,184(s1)
    80007064:	00000797          	auipc	a5,0x0
    80007068:	cec78793          	addi	a5,a5,-788 # 80006d50 <consolewrite>
    8000706c:	0cf4b023          	sd	a5,192(s1)
    80007070:	00813483          	ld	s1,8(sp)
    80007074:	02010113          	addi	sp,sp,32
    80007078:	00008067          	ret

000000008000707c <console_read>:
    8000707c:	ff010113          	addi	sp,sp,-16
    80007080:	00813423          	sd	s0,8(sp)
    80007084:	01010413          	addi	s0,sp,16
    80007088:	00813403          	ld	s0,8(sp)
    8000708c:	00006317          	auipc	t1,0x6
    80007090:	9e433303          	ld	t1,-1564(t1) # 8000ca70 <devsw+0x10>
    80007094:	01010113          	addi	sp,sp,16
    80007098:	00030067          	jr	t1

000000008000709c <console_write>:
    8000709c:	ff010113          	addi	sp,sp,-16
    800070a0:	00813423          	sd	s0,8(sp)
    800070a4:	01010413          	addi	s0,sp,16
    800070a8:	00813403          	ld	s0,8(sp)
    800070ac:	00006317          	auipc	t1,0x6
    800070b0:	9cc33303          	ld	t1,-1588(t1) # 8000ca78 <devsw+0x18>
    800070b4:	01010113          	addi	sp,sp,16
    800070b8:	00030067          	jr	t1

00000000800070bc <panic>:
    800070bc:	fe010113          	addi	sp,sp,-32
    800070c0:	00113c23          	sd	ra,24(sp)
    800070c4:	00813823          	sd	s0,16(sp)
    800070c8:	00913423          	sd	s1,8(sp)
    800070cc:	02010413          	addi	s0,sp,32
    800070d0:	00050493          	mv	s1,a0
    800070d4:	00003517          	auipc	a0,0x3
    800070d8:	88450513          	addi	a0,a0,-1916 # 80009958 <_ZTV7WorkerD+0x3d0>
    800070dc:	00006797          	auipc	a5,0x6
    800070e0:	a207ae23          	sw	zero,-1476(a5) # 8000cb18 <pr+0x18>
    800070e4:	00000097          	auipc	ra,0x0
    800070e8:	034080e7          	jalr	52(ra) # 80007118 <__printf>
    800070ec:	00048513          	mv	a0,s1
    800070f0:	00000097          	auipc	ra,0x0
    800070f4:	028080e7          	jalr	40(ra) # 80007118 <__printf>
    800070f8:	00002517          	auipc	a0,0x2
    800070fc:	5f850513          	addi	a0,a0,1528 # 800096f0 <_ZTV7WorkerD+0x168>
    80007100:	00000097          	auipc	ra,0x0
    80007104:	018080e7          	jalr	24(ra) # 80007118 <__printf>
    80007108:	00100793          	li	a5,1
    8000710c:	00004717          	auipc	a4,0x4
    80007110:	7af72423          	sw	a5,1960(a4) # 8000b8b4 <panicked>
    80007114:	0000006f          	j	80007114 <panic+0x58>

0000000080007118 <__printf>:
    80007118:	f3010113          	addi	sp,sp,-208
    8000711c:	08813023          	sd	s0,128(sp)
    80007120:	07313423          	sd	s3,104(sp)
    80007124:	09010413          	addi	s0,sp,144
    80007128:	05813023          	sd	s8,64(sp)
    8000712c:	08113423          	sd	ra,136(sp)
    80007130:	06913c23          	sd	s1,120(sp)
    80007134:	07213823          	sd	s2,112(sp)
    80007138:	07413023          	sd	s4,96(sp)
    8000713c:	05513c23          	sd	s5,88(sp)
    80007140:	05613823          	sd	s6,80(sp)
    80007144:	05713423          	sd	s7,72(sp)
    80007148:	03913c23          	sd	s9,56(sp)
    8000714c:	03a13823          	sd	s10,48(sp)
    80007150:	03b13423          	sd	s11,40(sp)
    80007154:	00006317          	auipc	t1,0x6
    80007158:	9ac30313          	addi	t1,t1,-1620 # 8000cb00 <pr>
    8000715c:	01832c03          	lw	s8,24(t1)
    80007160:	00b43423          	sd	a1,8(s0)
    80007164:	00c43823          	sd	a2,16(s0)
    80007168:	00d43c23          	sd	a3,24(s0)
    8000716c:	02e43023          	sd	a4,32(s0)
    80007170:	02f43423          	sd	a5,40(s0)
    80007174:	03043823          	sd	a6,48(s0)
    80007178:	03143c23          	sd	a7,56(s0)
    8000717c:	00050993          	mv	s3,a0
    80007180:	4a0c1663          	bnez	s8,8000762c <__printf+0x514>
    80007184:	60098c63          	beqz	s3,8000779c <__printf+0x684>
    80007188:	0009c503          	lbu	a0,0(s3)
    8000718c:	00840793          	addi	a5,s0,8
    80007190:	f6f43c23          	sd	a5,-136(s0)
    80007194:	00000493          	li	s1,0
    80007198:	22050063          	beqz	a0,800073b8 <__printf+0x2a0>
    8000719c:	00002a37          	lui	s4,0x2
    800071a0:	00018ab7          	lui	s5,0x18
    800071a4:	000f4b37          	lui	s6,0xf4
    800071a8:	00989bb7          	lui	s7,0x989
    800071ac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800071b0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800071b4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800071b8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800071bc:	00148c9b          	addiw	s9,s1,1
    800071c0:	02500793          	li	a5,37
    800071c4:	01998933          	add	s2,s3,s9
    800071c8:	38f51263          	bne	a0,a5,8000754c <__printf+0x434>
    800071cc:	00094783          	lbu	a5,0(s2)
    800071d0:	00078c9b          	sext.w	s9,a5
    800071d4:	1e078263          	beqz	a5,800073b8 <__printf+0x2a0>
    800071d8:	0024849b          	addiw	s1,s1,2
    800071dc:	07000713          	li	a4,112
    800071e0:	00998933          	add	s2,s3,s1
    800071e4:	38e78a63          	beq	a5,a4,80007578 <__printf+0x460>
    800071e8:	20f76863          	bltu	a4,a5,800073f8 <__printf+0x2e0>
    800071ec:	42a78863          	beq	a5,a0,8000761c <__printf+0x504>
    800071f0:	06400713          	li	a4,100
    800071f4:	40e79663          	bne	a5,a4,80007600 <__printf+0x4e8>
    800071f8:	f7843783          	ld	a5,-136(s0)
    800071fc:	0007a603          	lw	a2,0(a5)
    80007200:	00878793          	addi	a5,a5,8
    80007204:	f6f43c23          	sd	a5,-136(s0)
    80007208:	42064a63          	bltz	a2,8000763c <__printf+0x524>
    8000720c:	00a00713          	li	a4,10
    80007210:	02e677bb          	remuw	a5,a2,a4
    80007214:	00002d97          	auipc	s11,0x2
    80007218:	76cd8d93          	addi	s11,s11,1900 # 80009980 <digits>
    8000721c:	00900593          	li	a1,9
    80007220:	0006051b          	sext.w	a0,a2
    80007224:	00000c93          	li	s9,0
    80007228:	02079793          	slli	a5,a5,0x20
    8000722c:	0207d793          	srli	a5,a5,0x20
    80007230:	00fd87b3          	add	a5,s11,a5
    80007234:	0007c783          	lbu	a5,0(a5)
    80007238:	02e656bb          	divuw	a3,a2,a4
    8000723c:	f8f40023          	sb	a5,-128(s0)
    80007240:	14c5d863          	bge	a1,a2,80007390 <__printf+0x278>
    80007244:	06300593          	li	a1,99
    80007248:	00100c93          	li	s9,1
    8000724c:	02e6f7bb          	remuw	a5,a3,a4
    80007250:	02079793          	slli	a5,a5,0x20
    80007254:	0207d793          	srli	a5,a5,0x20
    80007258:	00fd87b3          	add	a5,s11,a5
    8000725c:	0007c783          	lbu	a5,0(a5)
    80007260:	02e6d73b          	divuw	a4,a3,a4
    80007264:	f8f400a3          	sb	a5,-127(s0)
    80007268:	12a5f463          	bgeu	a1,a0,80007390 <__printf+0x278>
    8000726c:	00a00693          	li	a3,10
    80007270:	00900593          	li	a1,9
    80007274:	02d777bb          	remuw	a5,a4,a3
    80007278:	02079793          	slli	a5,a5,0x20
    8000727c:	0207d793          	srli	a5,a5,0x20
    80007280:	00fd87b3          	add	a5,s11,a5
    80007284:	0007c503          	lbu	a0,0(a5)
    80007288:	02d757bb          	divuw	a5,a4,a3
    8000728c:	f8a40123          	sb	a0,-126(s0)
    80007290:	48e5f263          	bgeu	a1,a4,80007714 <__printf+0x5fc>
    80007294:	06300513          	li	a0,99
    80007298:	02d7f5bb          	remuw	a1,a5,a3
    8000729c:	02059593          	slli	a1,a1,0x20
    800072a0:	0205d593          	srli	a1,a1,0x20
    800072a4:	00bd85b3          	add	a1,s11,a1
    800072a8:	0005c583          	lbu	a1,0(a1)
    800072ac:	02d7d7bb          	divuw	a5,a5,a3
    800072b0:	f8b401a3          	sb	a1,-125(s0)
    800072b4:	48e57263          	bgeu	a0,a4,80007738 <__printf+0x620>
    800072b8:	3e700513          	li	a0,999
    800072bc:	02d7f5bb          	remuw	a1,a5,a3
    800072c0:	02059593          	slli	a1,a1,0x20
    800072c4:	0205d593          	srli	a1,a1,0x20
    800072c8:	00bd85b3          	add	a1,s11,a1
    800072cc:	0005c583          	lbu	a1,0(a1)
    800072d0:	02d7d7bb          	divuw	a5,a5,a3
    800072d4:	f8b40223          	sb	a1,-124(s0)
    800072d8:	46e57663          	bgeu	a0,a4,80007744 <__printf+0x62c>
    800072dc:	02d7f5bb          	remuw	a1,a5,a3
    800072e0:	02059593          	slli	a1,a1,0x20
    800072e4:	0205d593          	srli	a1,a1,0x20
    800072e8:	00bd85b3          	add	a1,s11,a1
    800072ec:	0005c583          	lbu	a1,0(a1)
    800072f0:	02d7d7bb          	divuw	a5,a5,a3
    800072f4:	f8b402a3          	sb	a1,-123(s0)
    800072f8:	46ea7863          	bgeu	s4,a4,80007768 <__printf+0x650>
    800072fc:	02d7f5bb          	remuw	a1,a5,a3
    80007300:	02059593          	slli	a1,a1,0x20
    80007304:	0205d593          	srli	a1,a1,0x20
    80007308:	00bd85b3          	add	a1,s11,a1
    8000730c:	0005c583          	lbu	a1,0(a1)
    80007310:	02d7d7bb          	divuw	a5,a5,a3
    80007314:	f8b40323          	sb	a1,-122(s0)
    80007318:	3eeaf863          	bgeu	s5,a4,80007708 <__printf+0x5f0>
    8000731c:	02d7f5bb          	remuw	a1,a5,a3
    80007320:	02059593          	slli	a1,a1,0x20
    80007324:	0205d593          	srli	a1,a1,0x20
    80007328:	00bd85b3          	add	a1,s11,a1
    8000732c:	0005c583          	lbu	a1,0(a1)
    80007330:	02d7d7bb          	divuw	a5,a5,a3
    80007334:	f8b403a3          	sb	a1,-121(s0)
    80007338:	42eb7e63          	bgeu	s6,a4,80007774 <__printf+0x65c>
    8000733c:	02d7f5bb          	remuw	a1,a5,a3
    80007340:	02059593          	slli	a1,a1,0x20
    80007344:	0205d593          	srli	a1,a1,0x20
    80007348:	00bd85b3          	add	a1,s11,a1
    8000734c:	0005c583          	lbu	a1,0(a1)
    80007350:	02d7d7bb          	divuw	a5,a5,a3
    80007354:	f8b40423          	sb	a1,-120(s0)
    80007358:	42ebfc63          	bgeu	s7,a4,80007790 <__printf+0x678>
    8000735c:	02079793          	slli	a5,a5,0x20
    80007360:	0207d793          	srli	a5,a5,0x20
    80007364:	00fd8db3          	add	s11,s11,a5
    80007368:	000dc703          	lbu	a4,0(s11)
    8000736c:	00a00793          	li	a5,10
    80007370:	00900c93          	li	s9,9
    80007374:	f8e404a3          	sb	a4,-119(s0)
    80007378:	00065c63          	bgez	a2,80007390 <__printf+0x278>
    8000737c:	f9040713          	addi	a4,s0,-112
    80007380:	00f70733          	add	a4,a4,a5
    80007384:	02d00693          	li	a3,45
    80007388:	fed70823          	sb	a3,-16(a4)
    8000738c:	00078c93          	mv	s9,a5
    80007390:	f8040793          	addi	a5,s0,-128
    80007394:	01978cb3          	add	s9,a5,s9
    80007398:	f7f40d13          	addi	s10,s0,-129
    8000739c:	000cc503          	lbu	a0,0(s9)
    800073a0:	fffc8c93          	addi	s9,s9,-1
    800073a4:	00000097          	auipc	ra,0x0
    800073a8:	b90080e7          	jalr	-1136(ra) # 80006f34 <consputc>
    800073ac:	ffac98e3          	bne	s9,s10,8000739c <__printf+0x284>
    800073b0:	00094503          	lbu	a0,0(s2)
    800073b4:	e00514e3          	bnez	a0,800071bc <__printf+0xa4>
    800073b8:	1a0c1663          	bnez	s8,80007564 <__printf+0x44c>
    800073bc:	08813083          	ld	ra,136(sp)
    800073c0:	08013403          	ld	s0,128(sp)
    800073c4:	07813483          	ld	s1,120(sp)
    800073c8:	07013903          	ld	s2,112(sp)
    800073cc:	06813983          	ld	s3,104(sp)
    800073d0:	06013a03          	ld	s4,96(sp)
    800073d4:	05813a83          	ld	s5,88(sp)
    800073d8:	05013b03          	ld	s6,80(sp)
    800073dc:	04813b83          	ld	s7,72(sp)
    800073e0:	04013c03          	ld	s8,64(sp)
    800073e4:	03813c83          	ld	s9,56(sp)
    800073e8:	03013d03          	ld	s10,48(sp)
    800073ec:	02813d83          	ld	s11,40(sp)
    800073f0:	0d010113          	addi	sp,sp,208
    800073f4:	00008067          	ret
    800073f8:	07300713          	li	a4,115
    800073fc:	1ce78a63          	beq	a5,a4,800075d0 <__printf+0x4b8>
    80007400:	07800713          	li	a4,120
    80007404:	1ee79e63          	bne	a5,a4,80007600 <__printf+0x4e8>
    80007408:	f7843783          	ld	a5,-136(s0)
    8000740c:	0007a703          	lw	a4,0(a5)
    80007410:	00878793          	addi	a5,a5,8
    80007414:	f6f43c23          	sd	a5,-136(s0)
    80007418:	28074263          	bltz	a4,8000769c <__printf+0x584>
    8000741c:	00002d97          	auipc	s11,0x2
    80007420:	564d8d93          	addi	s11,s11,1380 # 80009980 <digits>
    80007424:	00f77793          	andi	a5,a4,15
    80007428:	00fd87b3          	add	a5,s11,a5
    8000742c:	0007c683          	lbu	a3,0(a5)
    80007430:	00f00613          	li	a2,15
    80007434:	0007079b          	sext.w	a5,a4
    80007438:	f8d40023          	sb	a3,-128(s0)
    8000743c:	0047559b          	srliw	a1,a4,0x4
    80007440:	0047569b          	srliw	a3,a4,0x4
    80007444:	00000c93          	li	s9,0
    80007448:	0ee65063          	bge	a2,a4,80007528 <__printf+0x410>
    8000744c:	00f6f693          	andi	a3,a3,15
    80007450:	00dd86b3          	add	a3,s11,a3
    80007454:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007458:	0087d79b          	srliw	a5,a5,0x8
    8000745c:	00100c93          	li	s9,1
    80007460:	f8d400a3          	sb	a3,-127(s0)
    80007464:	0cb67263          	bgeu	a2,a1,80007528 <__printf+0x410>
    80007468:	00f7f693          	andi	a3,a5,15
    8000746c:	00dd86b3          	add	a3,s11,a3
    80007470:	0006c583          	lbu	a1,0(a3)
    80007474:	00f00613          	li	a2,15
    80007478:	0047d69b          	srliw	a3,a5,0x4
    8000747c:	f8b40123          	sb	a1,-126(s0)
    80007480:	0047d593          	srli	a1,a5,0x4
    80007484:	28f67e63          	bgeu	a2,a5,80007720 <__printf+0x608>
    80007488:	00f6f693          	andi	a3,a3,15
    8000748c:	00dd86b3          	add	a3,s11,a3
    80007490:	0006c503          	lbu	a0,0(a3)
    80007494:	0087d813          	srli	a6,a5,0x8
    80007498:	0087d69b          	srliw	a3,a5,0x8
    8000749c:	f8a401a3          	sb	a0,-125(s0)
    800074a0:	28b67663          	bgeu	a2,a1,8000772c <__printf+0x614>
    800074a4:	00f6f693          	andi	a3,a3,15
    800074a8:	00dd86b3          	add	a3,s11,a3
    800074ac:	0006c583          	lbu	a1,0(a3)
    800074b0:	00c7d513          	srli	a0,a5,0xc
    800074b4:	00c7d69b          	srliw	a3,a5,0xc
    800074b8:	f8b40223          	sb	a1,-124(s0)
    800074bc:	29067a63          	bgeu	a2,a6,80007750 <__printf+0x638>
    800074c0:	00f6f693          	andi	a3,a3,15
    800074c4:	00dd86b3          	add	a3,s11,a3
    800074c8:	0006c583          	lbu	a1,0(a3)
    800074cc:	0107d813          	srli	a6,a5,0x10
    800074d0:	0107d69b          	srliw	a3,a5,0x10
    800074d4:	f8b402a3          	sb	a1,-123(s0)
    800074d8:	28a67263          	bgeu	a2,a0,8000775c <__printf+0x644>
    800074dc:	00f6f693          	andi	a3,a3,15
    800074e0:	00dd86b3          	add	a3,s11,a3
    800074e4:	0006c683          	lbu	a3,0(a3)
    800074e8:	0147d79b          	srliw	a5,a5,0x14
    800074ec:	f8d40323          	sb	a3,-122(s0)
    800074f0:	21067663          	bgeu	a2,a6,800076fc <__printf+0x5e4>
    800074f4:	02079793          	slli	a5,a5,0x20
    800074f8:	0207d793          	srli	a5,a5,0x20
    800074fc:	00fd8db3          	add	s11,s11,a5
    80007500:	000dc683          	lbu	a3,0(s11)
    80007504:	00800793          	li	a5,8
    80007508:	00700c93          	li	s9,7
    8000750c:	f8d403a3          	sb	a3,-121(s0)
    80007510:	00075c63          	bgez	a4,80007528 <__printf+0x410>
    80007514:	f9040713          	addi	a4,s0,-112
    80007518:	00f70733          	add	a4,a4,a5
    8000751c:	02d00693          	li	a3,45
    80007520:	fed70823          	sb	a3,-16(a4)
    80007524:	00078c93          	mv	s9,a5
    80007528:	f8040793          	addi	a5,s0,-128
    8000752c:	01978cb3          	add	s9,a5,s9
    80007530:	f7f40d13          	addi	s10,s0,-129
    80007534:	000cc503          	lbu	a0,0(s9)
    80007538:	fffc8c93          	addi	s9,s9,-1
    8000753c:	00000097          	auipc	ra,0x0
    80007540:	9f8080e7          	jalr	-1544(ra) # 80006f34 <consputc>
    80007544:	ff9d18e3          	bne	s10,s9,80007534 <__printf+0x41c>
    80007548:	0100006f          	j	80007558 <__printf+0x440>
    8000754c:	00000097          	auipc	ra,0x0
    80007550:	9e8080e7          	jalr	-1560(ra) # 80006f34 <consputc>
    80007554:	000c8493          	mv	s1,s9
    80007558:	00094503          	lbu	a0,0(s2)
    8000755c:	c60510e3          	bnez	a0,800071bc <__printf+0xa4>
    80007560:	e40c0ee3          	beqz	s8,800073bc <__printf+0x2a4>
    80007564:	00005517          	auipc	a0,0x5
    80007568:	59c50513          	addi	a0,a0,1436 # 8000cb00 <pr>
    8000756c:	00001097          	auipc	ra,0x1
    80007570:	94c080e7          	jalr	-1716(ra) # 80007eb8 <release>
    80007574:	e49ff06f          	j	800073bc <__printf+0x2a4>
    80007578:	f7843783          	ld	a5,-136(s0)
    8000757c:	03000513          	li	a0,48
    80007580:	01000d13          	li	s10,16
    80007584:	00878713          	addi	a4,a5,8
    80007588:	0007bc83          	ld	s9,0(a5)
    8000758c:	f6e43c23          	sd	a4,-136(s0)
    80007590:	00000097          	auipc	ra,0x0
    80007594:	9a4080e7          	jalr	-1628(ra) # 80006f34 <consputc>
    80007598:	07800513          	li	a0,120
    8000759c:	00000097          	auipc	ra,0x0
    800075a0:	998080e7          	jalr	-1640(ra) # 80006f34 <consputc>
    800075a4:	00002d97          	auipc	s11,0x2
    800075a8:	3dcd8d93          	addi	s11,s11,988 # 80009980 <digits>
    800075ac:	03ccd793          	srli	a5,s9,0x3c
    800075b0:	00fd87b3          	add	a5,s11,a5
    800075b4:	0007c503          	lbu	a0,0(a5)
    800075b8:	fffd0d1b          	addiw	s10,s10,-1
    800075bc:	004c9c93          	slli	s9,s9,0x4
    800075c0:	00000097          	auipc	ra,0x0
    800075c4:	974080e7          	jalr	-1676(ra) # 80006f34 <consputc>
    800075c8:	fe0d12e3          	bnez	s10,800075ac <__printf+0x494>
    800075cc:	f8dff06f          	j	80007558 <__printf+0x440>
    800075d0:	f7843783          	ld	a5,-136(s0)
    800075d4:	0007bc83          	ld	s9,0(a5)
    800075d8:	00878793          	addi	a5,a5,8
    800075dc:	f6f43c23          	sd	a5,-136(s0)
    800075e0:	000c9a63          	bnez	s9,800075f4 <__printf+0x4dc>
    800075e4:	1080006f          	j	800076ec <__printf+0x5d4>
    800075e8:	001c8c93          	addi	s9,s9,1
    800075ec:	00000097          	auipc	ra,0x0
    800075f0:	948080e7          	jalr	-1720(ra) # 80006f34 <consputc>
    800075f4:	000cc503          	lbu	a0,0(s9)
    800075f8:	fe0518e3          	bnez	a0,800075e8 <__printf+0x4d0>
    800075fc:	f5dff06f          	j	80007558 <__printf+0x440>
    80007600:	02500513          	li	a0,37
    80007604:	00000097          	auipc	ra,0x0
    80007608:	930080e7          	jalr	-1744(ra) # 80006f34 <consputc>
    8000760c:	000c8513          	mv	a0,s9
    80007610:	00000097          	auipc	ra,0x0
    80007614:	924080e7          	jalr	-1756(ra) # 80006f34 <consputc>
    80007618:	f41ff06f          	j	80007558 <__printf+0x440>
    8000761c:	02500513          	li	a0,37
    80007620:	00000097          	auipc	ra,0x0
    80007624:	914080e7          	jalr	-1772(ra) # 80006f34 <consputc>
    80007628:	f31ff06f          	j	80007558 <__printf+0x440>
    8000762c:	00030513          	mv	a0,t1
    80007630:	00000097          	auipc	ra,0x0
    80007634:	7bc080e7          	jalr	1980(ra) # 80007dec <acquire>
    80007638:	b4dff06f          	j	80007184 <__printf+0x6c>
    8000763c:	40c0053b          	negw	a0,a2
    80007640:	00a00713          	li	a4,10
    80007644:	02e576bb          	remuw	a3,a0,a4
    80007648:	00002d97          	auipc	s11,0x2
    8000764c:	338d8d93          	addi	s11,s11,824 # 80009980 <digits>
    80007650:	ff700593          	li	a1,-9
    80007654:	02069693          	slli	a3,a3,0x20
    80007658:	0206d693          	srli	a3,a3,0x20
    8000765c:	00dd86b3          	add	a3,s11,a3
    80007660:	0006c683          	lbu	a3,0(a3)
    80007664:	02e557bb          	divuw	a5,a0,a4
    80007668:	f8d40023          	sb	a3,-128(s0)
    8000766c:	10b65e63          	bge	a2,a1,80007788 <__printf+0x670>
    80007670:	06300593          	li	a1,99
    80007674:	02e7f6bb          	remuw	a3,a5,a4
    80007678:	02069693          	slli	a3,a3,0x20
    8000767c:	0206d693          	srli	a3,a3,0x20
    80007680:	00dd86b3          	add	a3,s11,a3
    80007684:	0006c683          	lbu	a3,0(a3)
    80007688:	02e7d73b          	divuw	a4,a5,a4
    8000768c:	00200793          	li	a5,2
    80007690:	f8d400a3          	sb	a3,-127(s0)
    80007694:	bca5ece3          	bltu	a1,a0,8000726c <__printf+0x154>
    80007698:	ce5ff06f          	j	8000737c <__printf+0x264>
    8000769c:	40e007bb          	negw	a5,a4
    800076a0:	00002d97          	auipc	s11,0x2
    800076a4:	2e0d8d93          	addi	s11,s11,736 # 80009980 <digits>
    800076a8:	00f7f693          	andi	a3,a5,15
    800076ac:	00dd86b3          	add	a3,s11,a3
    800076b0:	0006c583          	lbu	a1,0(a3)
    800076b4:	ff100613          	li	a2,-15
    800076b8:	0047d69b          	srliw	a3,a5,0x4
    800076bc:	f8b40023          	sb	a1,-128(s0)
    800076c0:	0047d59b          	srliw	a1,a5,0x4
    800076c4:	0ac75e63          	bge	a4,a2,80007780 <__printf+0x668>
    800076c8:	00f6f693          	andi	a3,a3,15
    800076cc:	00dd86b3          	add	a3,s11,a3
    800076d0:	0006c603          	lbu	a2,0(a3)
    800076d4:	00f00693          	li	a3,15
    800076d8:	0087d79b          	srliw	a5,a5,0x8
    800076dc:	f8c400a3          	sb	a2,-127(s0)
    800076e0:	d8b6e4e3          	bltu	a3,a1,80007468 <__printf+0x350>
    800076e4:	00200793          	li	a5,2
    800076e8:	e2dff06f          	j	80007514 <__printf+0x3fc>
    800076ec:	00002c97          	auipc	s9,0x2
    800076f0:	274c8c93          	addi	s9,s9,628 # 80009960 <_ZTV7WorkerD+0x3d8>
    800076f4:	02800513          	li	a0,40
    800076f8:	ef1ff06f          	j	800075e8 <__printf+0x4d0>
    800076fc:	00700793          	li	a5,7
    80007700:	00600c93          	li	s9,6
    80007704:	e0dff06f          	j	80007510 <__printf+0x3f8>
    80007708:	00700793          	li	a5,7
    8000770c:	00600c93          	li	s9,6
    80007710:	c69ff06f          	j	80007378 <__printf+0x260>
    80007714:	00300793          	li	a5,3
    80007718:	00200c93          	li	s9,2
    8000771c:	c5dff06f          	j	80007378 <__printf+0x260>
    80007720:	00300793          	li	a5,3
    80007724:	00200c93          	li	s9,2
    80007728:	de9ff06f          	j	80007510 <__printf+0x3f8>
    8000772c:	00400793          	li	a5,4
    80007730:	00300c93          	li	s9,3
    80007734:	dddff06f          	j	80007510 <__printf+0x3f8>
    80007738:	00400793          	li	a5,4
    8000773c:	00300c93          	li	s9,3
    80007740:	c39ff06f          	j	80007378 <__printf+0x260>
    80007744:	00500793          	li	a5,5
    80007748:	00400c93          	li	s9,4
    8000774c:	c2dff06f          	j	80007378 <__printf+0x260>
    80007750:	00500793          	li	a5,5
    80007754:	00400c93          	li	s9,4
    80007758:	db9ff06f          	j	80007510 <__printf+0x3f8>
    8000775c:	00600793          	li	a5,6
    80007760:	00500c93          	li	s9,5
    80007764:	dadff06f          	j	80007510 <__printf+0x3f8>
    80007768:	00600793          	li	a5,6
    8000776c:	00500c93          	li	s9,5
    80007770:	c09ff06f          	j	80007378 <__printf+0x260>
    80007774:	00800793          	li	a5,8
    80007778:	00700c93          	li	s9,7
    8000777c:	bfdff06f          	j	80007378 <__printf+0x260>
    80007780:	00100793          	li	a5,1
    80007784:	d91ff06f          	j	80007514 <__printf+0x3fc>
    80007788:	00100793          	li	a5,1
    8000778c:	bf1ff06f          	j	8000737c <__printf+0x264>
    80007790:	00900793          	li	a5,9
    80007794:	00800c93          	li	s9,8
    80007798:	be1ff06f          	j	80007378 <__printf+0x260>
    8000779c:	00002517          	auipc	a0,0x2
    800077a0:	1cc50513          	addi	a0,a0,460 # 80009968 <_ZTV7WorkerD+0x3e0>
    800077a4:	00000097          	auipc	ra,0x0
    800077a8:	918080e7          	jalr	-1768(ra) # 800070bc <panic>

00000000800077ac <printfinit>:
    800077ac:	fe010113          	addi	sp,sp,-32
    800077b0:	00813823          	sd	s0,16(sp)
    800077b4:	00913423          	sd	s1,8(sp)
    800077b8:	00113c23          	sd	ra,24(sp)
    800077bc:	02010413          	addi	s0,sp,32
    800077c0:	00005497          	auipc	s1,0x5
    800077c4:	34048493          	addi	s1,s1,832 # 8000cb00 <pr>
    800077c8:	00048513          	mv	a0,s1
    800077cc:	00002597          	auipc	a1,0x2
    800077d0:	1ac58593          	addi	a1,a1,428 # 80009978 <_ZTV7WorkerD+0x3f0>
    800077d4:	00000097          	auipc	ra,0x0
    800077d8:	5f4080e7          	jalr	1524(ra) # 80007dc8 <initlock>
    800077dc:	01813083          	ld	ra,24(sp)
    800077e0:	01013403          	ld	s0,16(sp)
    800077e4:	0004ac23          	sw	zero,24(s1)
    800077e8:	00813483          	ld	s1,8(sp)
    800077ec:	02010113          	addi	sp,sp,32
    800077f0:	00008067          	ret

00000000800077f4 <uartinit>:
    800077f4:	ff010113          	addi	sp,sp,-16
    800077f8:	00813423          	sd	s0,8(sp)
    800077fc:	01010413          	addi	s0,sp,16
    80007800:	100007b7          	lui	a5,0x10000
    80007804:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007808:	f8000713          	li	a4,-128
    8000780c:	00e781a3          	sb	a4,3(a5)
    80007810:	00300713          	li	a4,3
    80007814:	00e78023          	sb	a4,0(a5)
    80007818:	000780a3          	sb	zero,1(a5)
    8000781c:	00e781a3          	sb	a4,3(a5)
    80007820:	00700693          	li	a3,7
    80007824:	00d78123          	sb	a3,2(a5)
    80007828:	00e780a3          	sb	a4,1(a5)
    8000782c:	00813403          	ld	s0,8(sp)
    80007830:	01010113          	addi	sp,sp,16
    80007834:	00008067          	ret

0000000080007838 <uartputc>:
    80007838:	00004797          	auipc	a5,0x4
    8000783c:	07c7a783          	lw	a5,124(a5) # 8000b8b4 <panicked>
    80007840:	00078463          	beqz	a5,80007848 <uartputc+0x10>
    80007844:	0000006f          	j	80007844 <uartputc+0xc>
    80007848:	fd010113          	addi	sp,sp,-48
    8000784c:	02813023          	sd	s0,32(sp)
    80007850:	00913c23          	sd	s1,24(sp)
    80007854:	01213823          	sd	s2,16(sp)
    80007858:	01313423          	sd	s3,8(sp)
    8000785c:	02113423          	sd	ra,40(sp)
    80007860:	03010413          	addi	s0,sp,48
    80007864:	00004917          	auipc	s2,0x4
    80007868:	05490913          	addi	s2,s2,84 # 8000b8b8 <uart_tx_r>
    8000786c:	00093783          	ld	a5,0(s2)
    80007870:	00004497          	auipc	s1,0x4
    80007874:	05048493          	addi	s1,s1,80 # 8000b8c0 <uart_tx_w>
    80007878:	0004b703          	ld	a4,0(s1)
    8000787c:	02078693          	addi	a3,a5,32
    80007880:	00050993          	mv	s3,a0
    80007884:	02e69c63          	bne	a3,a4,800078bc <uartputc+0x84>
    80007888:	00001097          	auipc	ra,0x1
    8000788c:	834080e7          	jalr	-1996(ra) # 800080bc <push_on>
    80007890:	00093783          	ld	a5,0(s2)
    80007894:	0004b703          	ld	a4,0(s1)
    80007898:	02078793          	addi	a5,a5,32
    8000789c:	00e79463          	bne	a5,a4,800078a4 <uartputc+0x6c>
    800078a0:	0000006f          	j	800078a0 <uartputc+0x68>
    800078a4:	00001097          	auipc	ra,0x1
    800078a8:	88c080e7          	jalr	-1908(ra) # 80008130 <pop_on>
    800078ac:	00093783          	ld	a5,0(s2)
    800078b0:	0004b703          	ld	a4,0(s1)
    800078b4:	02078693          	addi	a3,a5,32
    800078b8:	fce688e3          	beq	a3,a4,80007888 <uartputc+0x50>
    800078bc:	01f77693          	andi	a3,a4,31
    800078c0:	00005597          	auipc	a1,0x5
    800078c4:	26058593          	addi	a1,a1,608 # 8000cb20 <uart_tx_buf>
    800078c8:	00d586b3          	add	a3,a1,a3
    800078cc:	00170713          	addi	a4,a4,1
    800078d0:	01368023          	sb	s3,0(a3)
    800078d4:	00e4b023          	sd	a4,0(s1)
    800078d8:	10000637          	lui	a2,0x10000
    800078dc:	02f71063          	bne	a4,a5,800078fc <uartputc+0xc4>
    800078e0:	0340006f          	j	80007914 <uartputc+0xdc>
    800078e4:	00074703          	lbu	a4,0(a4)
    800078e8:	00f93023          	sd	a5,0(s2)
    800078ec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800078f0:	00093783          	ld	a5,0(s2)
    800078f4:	0004b703          	ld	a4,0(s1)
    800078f8:	00f70e63          	beq	a4,a5,80007914 <uartputc+0xdc>
    800078fc:	00564683          	lbu	a3,5(a2)
    80007900:	01f7f713          	andi	a4,a5,31
    80007904:	00e58733          	add	a4,a1,a4
    80007908:	0206f693          	andi	a3,a3,32
    8000790c:	00178793          	addi	a5,a5,1
    80007910:	fc069ae3          	bnez	a3,800078e4 <uartputc+0xac>
    80007914:	02813083          	ld	ra,40(sp)
    80007918:	02013403          	ld	s0,32(sp)
    8000791c:	01813483          	ld	s1,24(sp)
    80007920:	01013903          	ld	s2,16(sp)
    80007924:	00813983          	ld	s3,8(sp)
    80007928:	03010113          	addi	sp,sp,48
    8000792c:	00008067          	ret

0000000080007930 <uartputc_sync>:
    80007930:	ff010113          	addi	sp,sp,-16
    80007934:	00813423          	sd	s0,8(sp)
    80007938:	01010413          	addi	s0,sp,16
    8000793c:	00004717          	auipc	a4,0x4
    80007940:	f7872703          	lw	a4,-136(a4) # 8000b8b4 <panicked>
    80007944:	02071663          	bnez	a4,80007970 <uartputc_sync+0x40>
    80007948:	00050793          	mv	a5,a0
    8000794c:	100006b7          	lui	a3,0x10000
    80007950:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007954:	02077713          	andi	a4,a4,32
    80007958:	fe070ce3          	beqz	a4,80007950 <uartputc_sync+0x20>
    8000795c:	0ff7f793          	andi	a5,a5,255
    80007960:	00f68023          	sb	a5,0(a3)
    80007964:	00813403          	ld	s0,8(sp)
    80007968:	01010113          	addi	sp,sp,16
    8000796c:	00008067          	ret
    80007970:	0000006f          	j	80007970 <uartputc_sync+0x40>

0000000080007974 <uartstart>:
    80007974:	ff010113          	addi	sp,sp,-16
    80007978:	00813423          	sd	s0,8(sp)
    8000797c:	01010413          	addi	s0,sp,16
    80007980:	00004617          	auipc	a2,0x4
    80007984:	f3860613          	addi	a2,a2,-200 # 8000b8b8 <uart_tx_r>
    80007988:	00004517          	auipc	a0,0x4
    8000798c:	f3850513          	addi	a0,a0,-200 # 8000b8c0 <uart_tx_w>
    80007990:	00063783          	ld	a5,0(a2)
    80007994:	00053703          	ld	a4,0(a0)
    80007998:	04f70263          	beq	a4,a5,800079dc <uartstart+0x68>
    8000799c:	100005b7          	lui	a1,0x10000
    800079a0:	00005817          	auipc	a6,0x5
    800079a4:	18080813          	addi	a6,a6,384 # 8000cb20 <uart_tx_buf>
    800079a8:	01c0006f          	j	800079c4 <uartstart+0x50>
    800079ac:	0006c703          	lbu	a4,0(a3)
    800079b0:	00f63023          	sd	a5,0(a2)
    800079b4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800079b8:	00063783          	ld	a5,0(a2)
    800079bc:	00053703          	ld	a4,0(a0)
    800079c0:	00f70e63          	beq	a4,a5,800079dc <uartstart+0x68>
    800079c4:	01f7f713          	andi	a4,a5,31
    800079c8:	00e806b3          	add	a3,a6,a4
    800079cc:	0055c703          	lbu	a4,5(a1)
    800079d0:	00178793          	addi	a5,a5,1
    800079d4:	02077713          	andi	a4,a4,32
    800079d8:	fc071ae3          	bnez	a4,800079ac <uartstart+0x38>
    800079dc:	00813403          	ld	s0,8(sp)
    800079e0:	01010113          	addi	sp,sp,16
    800079e4:	00008067          	ret

00000000800079e8 <uartgetc>:
    800079e8:	ff010113          	addi	sp,sp,-16
    800079ec:	00813423          	sd	s0,8(sp)
    800079f0:	01010413          	addi	s0,sp,16
    800079f4:	10000737          	lui	a4,0x10000
    800079f8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800079fc:	0017f793          	andi	a5,a5,1
    80007a00:	00078c63          	beqz	a5,80007a18 <uartgetc+0x30>
    80007a04:	00074503          	lbu	a0,0(a4)
    80007a08:	0ff57513          	andi	a0,a0,255
    80007a0c:	00813403          	ld	s0,8(sp)
    80007a10:	01010113          	addi	sp,sp,16
    80007a14:	00008067          	ret
    80007a18:	fff00513          	li	a0,-1
    80007a1c:	ff1ff06f          	j	80007a0c <uartgetc+0x24>

0000000080007a20 <uartintr>:
    80007a20:	100007b7          	lui	a5,0x10000
    80007a24:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007a28:	0017f793          	andi	a5,a5,1
    80007a2c:	0a078463          	beqz	a5,80007ad4 <uartintr+0xb4>
    80007a30:	fe010113          	addi	sp,sp,-32
    80007a34:	00813823          	sd	s0,16(sp)
    80007a38:	00913423          	sd	s1,8(sp)
    80007a3c:	00113c23          	sd	ra,24(sp)
    80007a40:	02010413          	addi	s0,sp,32
    80007a44:	100004b7          	lui	s1,0x10000
    80007a48:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007a4c:	0ff57513          	andi	a0,a0,255
    80007a50:	fffff097          	auipc	ra,0xfffff
    80007a54:	534080e7          	jalr	1332(ra) # 80006f84 <consoleintr>
    80007a58:	0054c783          	lbu	a5,5(s1)
    80007a5c:	0017f793          	andi	a5,a5,1
    80007a60:	fe0794e3          	bnez	a5,80007a48 <uartintr+0x28>
    80007a64:	00004617          	auipc	a2,0x4
    80007a68:	e5460613          	addi	a2,a2,-428 # 8000b8b8 <uart_tx_r>
    80007a6c:	00004517          	auipc	a0,0x4
    80007a70:	e5450513          	addi	a0,a0,-428 # 8000b8c0 <uart_tx_w>
    80007a74:	00063783          	ld	a5,0(a2)
    80007a78:	00053703          	ld	a4,0(a0)
    80007a7c:	04f70263          	beq	a4,a5,80007ac0 <uartintr+0xa0>
    80007a80:	100005b7          	lui	a1,0x10000
    80007a84:	00005817          	auipc	a6,0x5
    80007a88:	09c80813          	addi	a6,a6,156 # 8000cb20 <uart_tx_buf>
    80007a8c:	01c0006f          	j	80007aa8 <uartintr+0x88>
    80007a90:	0006c703          	lbu	a4,0(a3)
    80007a94:	00f63023          	sd	a5,0(a2)
    80007a98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007a9c:	00063783          	ld	a5,0(a2)
    80007aa0:	00053703          	ld	a4,0(a0)
    80007aa4:	00f70e63          	beq	a4,a5,80007ac0 <uartintr+0xa0>
    80007aa8:	01f7f713          	andi	a4,a5,31
    80007aac:	00e806b3          	add	a3,a6,a4
    80007ab0:	0055c703          	lbu	a4,5(a1)
    80007ab4:	00178793          	addi	a5,a5,1
    80007ab8:	02077713          	andi	a4,a4,32
    80007abc:	fc071ae3          	bnez	a4,80007a90 <uartintr+0x70>
    80007ac0:	01813083          	ld	ra,24(sp)
    80007ac4:	01013403          	ld	s0,16(sp)
    80007ac8:	00813483          	ld	s1,8(sp)
    80007acc:	02010113          	addi	sp,sp,32
    80007ad0:	00008067          	ret
    80007ad4:	00004617          	auipc	a2,0x4
    80007ad8:	de460613          	addi	a2,a2,-540 # 8000b8b8 <uart_tx_r>
    80007adc:	00004517          	auipc	a0,0x4
    80007ae0:	de450513          	addi	a0,a0,-540 # 8000b8c0 <uart_tx_w>
    80007ae4:	00063783          	ld	a5,0(a2)
    80007ae8:	00053703          	ld	a4,0(a0)
    80007aec:	04f70263          	beq	a4,a5,80007b30 <uartintr+0x110>
    80007af0:	100005b7          	lui	a1,0x10000
    80007af4:	00005817          	auipc	a6,0x5
    80007af8:	02c80813          	addi	a6,a6,44 # 8000cb20 <uart_tx_buf>
    80007afc:	01c0006f          	j	80007b18 <uartintr+0xf8>
    80007b00:	0006c703          	lbu	a4,0(a3)
    80007b04:	00f63023          	sd	a5,0(a2)
    80007b08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007b0c:	00063783          	ld	a5,0(a2)
    80007b10:	00053703          	ld	a4,0(a0)
    80007b14:	02f70063          	beq	a4,a5,80007b34 <uartintr+0x114>
    80007b18:	01f7f713          	andi	a4,a5,31
    80007b1c:	00e806b3          	add	a3,a6,a4
    80007b20:	0055c703          	lbu	a4,5(a1)
    80007b24:	00178793          	addi	a5,a5,1
    80007b28:	02077713          	andi	a4,a4,32
    80007b2c:	fc071ae3          	bnez	a4,80007b00 <uartintr+0xe0>
    80007b30:	00008067          	ret
    80007b34:	00008067          	ret

0000000080007b38 <kinit>:
    80007b38:	fc010113          	addi	sp,sp,-64
    80007b3c:	02913423          	sd	s1,40(sp)
    80007b40:	fffff7b7          	lui	a5,0xfffff
    80007b44:	00006497          	auipc	s1,0x6
    80007b48:	ffb48493          	addi	s1,s1,-5 # 8000db3f <end+0xfff>
    80007b4c:	02813823          	sd	s0,48(sp)
    80007b50:	01313c23          	sd	s3,24(sp)
    80007b54:	00f4f4b3          	and	s1,s1,a5
    80007b58:	02113c23          	sd	ra,56(sp)
    80007b5c:	03213023          	sd	s2,32(sp)
    80007b60:	01413823          	sd	s4,16(sp)
    80007b64:	01513423          	sd	s5,8(sp)
    80007b68:	04010413          	addi	s0,sp,64
    80007b6c:	000017b7          	lui	a5,0x1
    80007b70:	01100993          	li	s3,17
    80007b74:	00f487b3          	add	a5,s1,a5
    80007b78:	01b99993          	slli	s3,s3,0x1b
    80007b7c:	06f9e063          	bltu	s3,a5,80007bdc <kinit+0xa4>
    80007b80:	00005a97          	auipc	s5,0x5
    80007b84:	fc0a8a93          	addi	s5,s5,-64 # 8000cb40 <end>
    80007b88:	0754ec63          	bltu	s1,s5,80007c00 <kinit+0xc8>
    80007b8c:	0734fa63          	bgeu	s1,s3,80007c00 <kinit+0xc8>
    80007b90:	00088a37          	lui	s4,0x88
    80007b94:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007b98:	00004917          	auipc	s2,0x4
    80007b9c:	d3090913          	addi	s2,s2,-720 # 8000b8c8 <kmem>
    80007ba0:	00ca1a13          	slli	s4,s4,0xc
    80007ba4:	0140006f          	j	80007bb8 <kinit+0x80>
    80007ba8:	000017b7          	lui	a5,0x1
    80007bac:	00f484b3          	add	s1,s1,a5
    80007bb0:	0554e863          	bltu	s1,s5,80007c00 <kinit+0xc8>
    80007bb4:	0534f663          	bgeu	s1,s3,80007c00 <kinit+0xc8>
    80007bb8:	00001637          	lui	a2,0x1
    80007bbc:	00100593          	li	a1,1
    80007bc0:	00048513          	mv	a0,s1
    80007bc4:	00000097          	auipc	ra,0x0
    80007bc8:	5e4080e7          	jalr	1508(ra) # 800081a8 <__memset>
    80007bcc:	00093783          	ld	a5,0(s2)
    80007bd0:	00f4b023          	sd	a5,0(s1)
    80007bd4:	00993023          	sd	s1,0(s2)
    80007bd8:	fd4498e3          	bne	s1,s4,80007ba8 <kinit+0x70>
    80007bdc:	03813083          	ld	ra,56(sp)
    80007be0:	03013403          	ld	s0,48(sp)
    80007be4:	02813483          	ld	s1,40(sp)
    80007be8:	02013903          	ld	s2,32(sp)
    80007bec:	01813983          	ld	s3,24(sp)
    80007bf0:	01013a03          	ld	s4,16(sp)
    80007bf4:	00813a83          	ld	s5,8(sp)
    80007bf8:	04010113          	addi	sp,sp,64
    80007bfc:	00008067          	ret
    80007c00:	00002517          	auipc	a0,0x2
    80007c04:	d9850513          	addi	a0,a0,-616 # 80009998 <digits+0x18>
    80007c08:	fffff097          	auipc	ra,0xfffff
    80007c0c:	4b4080e7          	jalr	1204(ra) # 800070bc <panic>

0000000080007c10 <freerange>:
    80007c10:	fc010113          	addi	sp,sp,-64
    80007c14:	000017b7          	lui	a5,0x1
    80007c18:	02913423          	sd	s1,40(sp)
    80007c1c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007c20:	009504b3          	add	s1,a0,s1
    80007c24:	fffff537          	lui	a0,0xfffff
    80007c28:	02813823          	sd	s0,48(sp)
    80007c2c:	02113c23          	sd	ra,56(sp)
    80007c30:	03213023          	sd	s2,32(sp)
    80007c34:	01313c23          	sd	s3,24(sp)
    80007c38:	01413823          	sd	s4,16(sp)
    80007c3c:	01513423          	sd	s5,8(sp)
    80007c40:	01613023          	sd	s6,0(sp)
    80007c44:	04010413          	addi	s0,sp,64
    80007c48:	00a4f4b3          	and	s1,s1,a0
    80007c4c:	00f487b3          	add	a5,s1,a5
    80007c50:	06f5e463          	bltu	a1,a5,80007cb8 <freerange+0xa8>
    80007c54:	00005a97          	auipc	s5,0x5
    80007c58:	eeca8a93          	addi	s5,s5,-276 # 8000cb40 <end>
    80007c5c:	0954e263          	bltu	s1,s5,80007ce0 <freerange+0xd0>
    80007c60:	01100993          	li	s3,17
    80007c64:	01b99993          	slli	s3,s3,0x1b
    80007c68:	0734fc63          	bgeu	s1,s3,80007ce0 <freerange+0xd0>
    80007c6c:	00058a13          	mv	s4,a1
    80007c70:	00004917          	auipc	s2,0x4
    80007c74:	c5890913          	addi	s2,s2,-936 # 8000b8c8 <kmem>
    80007c78:	00002b37          	lui	s6,0x2
    80007c7c:	0140006f          	j	80007c90 <freerange+0x80>
    80007c80:	000017b7          	lui	a5,0x1
    80007c84:	00f484b3          	add	s1,s1,a5
    80007c88:	0554ec63          	bltu	s1,s5,80007ce0 <freerange+0xd0>
    80007c8c:	0534fa63          	bgeu	s1,s3,80007ce0 <freerange+0xd0>
    80007c90:	00001637          	lui	a2,0x1
    80007c94:	00100593          	li	a1,1
    80007c98:	00048513          	mv	a0,s1
    80007c9c:	00000097          	auipc	ra,0x0
    80007ca0:	50c080e7          	jalr	1292(ra) # 800081a8 <__memset>
    80007ca4:	00093703          	ld	a4,0(s2)
    80007ca8:	016487b3          	add	a5,s1,s6
    80007cac:	00e4b023          	sd	a4,0(s1)
    80007cb0:	00993023          	sd	s1,0(s2)
    80007cb4:	fcfa76e3          	bgeu	s4,a5,80007c80 <freerange+0x70>
    80007cb8:	03813083          	ld	ra,56(sp)
    80007cbc:	03013403          	ld	s0,48(sp)
    80007cc0:	02813483          	ld	s1,40(sp)
    80007cc4:	02013903          	ld	s2,32(sp)
    80007cc8:	01813983          	ld	s3,24(sp)
    80007ccc:	01013a03          	ld	s4,16(sp)
    80007cd0:	00813a83          	ld	s5,8(sp)
    80007cd4:	00013b03          	ld	s6,0(sp)
    80007cd8:	04010113          	addi	sp,sp,64
    80007cdc:	00008067          	ret
    80007ce0:	00002517          	auipc	a0,0x2
    80007ce4:	cb850513          	addi	a0,a0,-840 # 80009998 <digits+0x18>
    80007ce8:	fffff097          	auipc	ra,0xfffff
    80007cec:	3d4080e7          	jalr	980(ra) # 800070bc <panic>

0000000080007cf0 <kfree>:
    80007cf0:	fe010113          	addi	sp,sp,-32
    80007cf4:	00813823          	sd	s0,16(sp)
    80007cf8:	00113c23          	sd	ra,24(sp)
    80007cfc:	00913423          	sd	s1,8(sp)
    80007d00:	02010413          	addi	s0,sp,32
    80007d04:	03451793          	slli	a5,a0,0x34
    80007d08:	04079c63          	bnez	a5,80007d60 <kfree+0x70>
    80007d0c:	00005797          	auipc	a5,0x5
    80007d10:	e3478793          	addi	a5,a5,-460 # 8000cb40 <end>
    80007d14:	00050493          	mv	s1,a0
    80007d18:	04f56463          	bltu	a0,a5,80007d60 <kfree+0x70>
    80007d1c:	01100793          	li	a5,17
    80007d20:	01b79793          	slli	a5,a5,0x1b
    80007d24:	02f57e63          	bgeu	a0,a5,80007d60 <kfree+0x70>
    80007d28:	00001637          	lui	a2,0x1
    80007d2c:	00100593          	li	a1,1
    80007d30:	00000097          	auipc	ra,0x0
    80007d34:	478080e7          	jalr	1144(ra) # 800081a8 <__memset>
    80007d38:	00004797          	auipc	a5,0x4
    80007d3c:	b9078793          	addi	a5,a5,-1136 # 8000b8c8 <kmem>
    80007d40:	0007b703          	ld	a4,0(a5)
    80007d44:	01813083          	ld	ra,24(sp)
    80007d48:	01013403          	ld	s0,16(sp)
    80007d4c:	00e4b023          	sd	a4,0(s1)
    80007d50:	0097b023          	sd	s1,0(a5)
    80007d54:	00813483          	ld	s1,8(sp)
    80007d58:	02010113          	addi	sp,sp,32
    80007d5c:	00008067          	ret
    80007d60:	00002517          	auipc	a0,0x2
    80007d64:	c3850513          	addi	a0,a0,-968 # 80009998 <digits+0x18>
    80007d68:	fffff097          	auipc	ra,0xfffff
    80007d6c:	354080e7          	jalr	852(ra) # 800070bc <panic>

0000000080007d70 <kalloc>:
    80007d70:	fe010113          	addi	sp,sp,-32
    80007d74:	00813823          	sd	s0,16(sp)
    80007d78:	00913423          	sd	s1,8(sp)
    80007d7c:	00113c23          	sd	ra,24(sp)
    80007d80:	02010413          	addi	s0,sp,32
    80007d84:	00004797          	auipc	a5,0x4
    80007d88:	b4478793          	addi	a5,a5,-1212 # 8000b8c8 <kmem>
    80007d8c:	0007b483          	ld	s1,0(a5)
    80007d90:	02048063          	beqz	s1,80007db0 <kalloc+0x40>
    80007d94:	0004b703          	ld	a4,0(s1)
    80007d98:	00001637          	lui	a2,0x1
    80007d9c:	00500593          	li	a1,5
    80007da0:	00048513          	mv	a0,s1
    80007da4:	00e7b023          	sd	a4,0(a5)
    80007da8:	00000097          	auipc	ra,0x0
    80007dac:	400080e7          	jalr	1024(ra) # 800081a8 <__memset>
    80007db0:	01813083          	ld	ra,24(sp)
    80007db4:	01013403          	ld	s0,16(sp)
    80007db8:	00048513          	mv	a0,s1
    80007dbc:	00813483          	ld	s1,8(sp)
    80007dc0:	02010113          	addi	sp,sp,32
    80007dc4:	00008067          	ret

0000000080007dc8 <initlock>:
    80007dc8:	ff010113          	addi	sp,sp,-16
    80007dcc:	00813423          	sd	s0,8(sp)
    80007dd0:	01010413          	addi	s0,sp,16
    80007dd4:	00813403          	ld	s0,8(sp)
    80007dd8:	00b53423          	sd	a1,8(a0)
    80007ddc:	00052023          	sw	zero,0(a0)
    80007de0:	00053823          	sd	zero,16(a0)
    80007de4:	01010113          	addi	sp,sp,16
    80007de8:	00008067          	ret

0000000080007dec <acquire>:
    80007dec:	fe010113          	addi	sp,sp,-32
    80007df0:	00813823          	sd	s0,16(sp)
    80007df4:	00913423          	sd	s1,8(sp)
    80007df8:	00113c23          	sd	ra,24(sp)
    80007dfc:	01213023          	sd	s2,0(sp)
    80007e00:	02010413          	addi	s0,sp,32
    80007e04:	00050493          	mv	s1,a0
    80007e08:	10002973          	csrr	s2,sstatus
    80007e0c:	100027f3          	csrr	a5,sstatus
    80007e10:	ffd7f793          	andi	a5,a5,-3
    80007e14:	10079073          	csrw	sstatus,a5
    80007e18:	fffff097          	auipc	ra,0xfffff
    80007e1c:	8e8080e7          	jalr	-1816(ra) # 80006700 <mycpu>
    80007e20:	07852783          	lw	a5,120(a0)
    80007e24:	06078e63          	beqz	a5,80007ea0 <acquire+0xb4>
    80007e28:	fffff097          	auipc	ra,0xfffff
    80007e2c:	8d8080e7          	jalr	-1832(ra) # 80006700 <mycpu>
    80007e30:	07852783          	lw	a5,120(a0)
    80007e34:	0004a703          	lw	a4,0(s1)
    80007e38:	0017879b          	addiw	a5,a5,1
    80007e3c:	06f52c23          	sw	a5,120(a0)
    80007e40:	04071063          	bnez	a4,80007e80 <acquire+0x94>
    80007e44:	00100713          	li	a4,1
    80007e48:	00070793          	mv	a5,a4
    80007e4c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007e50:	0007879b          	sext.w	a5,a5
    80007e54:	fe079ae3          	bnez	a5,80007e48 <acquire+0x5c>
    80007e58:	0ff0000f          	fence
    80007e5c:	fffff097          	auipc	ra,0xfffff
    80007e60:	8a4080e7          	jalr	-1884(ra) # 80006700 <mycpu>
    80007e64:	01813083          	ld	ra,24(sp)
    80007e68:	01013403          	ld	s0,16(sp)
    80007e6c:	00a4b823          	sd	a0,16(s1)
    80007e70:	00013903          	ld	s2,0(sp)
    80007e74:	00813483          	ld	s1,8(sp)
    80007e78:	02010113          	addi	sp,sp,32
    80007e7c:	00008067          	ret
    80007e80:	0104b903          	ld	s2,16(s1)
    80007e84:	fffff097          	auipc	ra,0xfffff
    80007e88:	87c080e7          	jalr	-1924(ra) # 80006700 <mycpu>
    80007e8c:	faa91ce3          	bne	s2,a0,80007e44 <acquire+0x58>
    80007e90:	00002517          	auipc	a0,0x2
    80007e94:	b1050513          	addi	a0,a0,-1264 # 800099a0 <digits+0x20>
    80007e98:	fffff097          	auipc	ra,0xfffff
    80007e9c:	224080e7          	jalr	548(ra) # 800070bc <panic>
    80007ea0:	00195913          	srli	s2,s2,0x1
    80007ea4:	fffff097          	auipc	ra,0xfffff
    80007ea8:	85c080e7          	jalr	-1956(ra) # 80006700 <mycpu>
    80007eac:	00197913          	andi	s2,s2,1
    80007eb0:	07252e23          	sw	s2,124(a0)
    80007eb4:	f75ff06f          	j	80007e28 <acquire+0x3c>

0000000080007eb8 <release>:
    80007eb8:	fe010113          	addi	sp,sp,-32
    80007ebc:	00813823          	sd	s0,16(sp)
    80007ec0:	00113c23          	sd	ra,24(sp)
    80007ec4:	00913423          	sd	s1,8(sp)
    80007ec8:	01213023          	sd	s2,0(sp)
    80007ecc:	02010413          	addi	s0,sp,32
    80007ed0:	00052783          	lw	a5,0(a0)
    80007ed4:	00079a63          	bnez	a5,80007ee8 <release+0x30>
    80007ed8:	00002517          	auipc	a0,0x2
    80007edc:	ad050513          	addi	a0,a0,-1328 # 800099a8 <digits+0x28>
    80007ee0:	fffff097          	auipc	ra,0xfffff
    80007ee4:	1dc080e7          	jalr	476(ra) # 800070bc <panic>
    80007ee8:	01053903          	ld	s2,16(a0)
    80007eec:	00050493          	mv	s1,a0
    80007ef0:	fffff097          	auipc	ra,0xfffff
    80007ef4:	810080e7          	jalr	-2032(ra) # 80006700 <mycpu>
    80007ef8:	fea910e3          	bne	s2,a0,80007ed8 <release+0x20>
    80007efc:	0004b823          	sd	zero,16(s1)
    80007f00:	0ff0000f          	fence
    80007f04:	0f50000f          	fence	iorw,ow
    80007f08:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007f0c:	ffffe097          	auipc	ra,0xffffe
    80007f10:	7f4080e7          	jalr	2036(ra) # 80006700 <mycpu>
    80007f14:	100027f3          	csrr	a5,sstatus
    80007f18:	0027f793          	andi	a5,a5,2
    80007f1c:	04079a63          	bnez	a5,80007f70 <release+0xb8>
    80007f20:	07852783          	lw	a5,120(a0)
    80007f24:	02f05e63          	blez	a5,80007f60 <release+0xa8>
    80007f28:	fff7871b          	addiw	a4,a5,-1
    80007f2c:	06e52c23          	sw	a4,120(a0)
    80007f30:	00071c63          	bnez	a4,80007f48 <release+0x90>
    80007f34:	07c52783          	lw	a5,124(a0)
    80007f38:	00078863          	beqz	a5,80007f48 <release+0x90>
    80007f3c:	100027f3          	csrr	a5,sstatus
    80007f40:	0027e793          	ori	a5,a5,2
    80007f44:	10079073          	csrw	sstatus,a5
    80007f48:	01813083          	ld	ra,24(sp)
    80007f4c:	01013403          	ld	s0,16(sp)
    80007f50:	00813483          	ld	s1,8(sp)
    80007f54:	00013903          	ld	s2,0(sp)
    80007f58:	02010113          	addi	sp,sp,32
    80007f5c:	00008067          	ret
    80007f60:	00002517          	auipc	a0,0x2
    80007f64:	a6850513          	addi	a0,a0,-1432 # 800099c8 <digits+0x48>
    80007f68:	fffff097          	auipc	ra,0xfffff
    80007f6c:	154080e7          	jalr	340(ra) # 800070bc <panic>
    80007f70:	00002517          	auipc	a0,0x2
    80007f74:	a4050513          	addi	a0,a0,-1472 # 800099b0 <digits+0x30>
    80007f78:	fffff097          	auipc	ra,0xfffff
    80007f7c:	144080e7          	jalr	324(ra) # 800070bc <panic>

0000000080007f80 <holding>:
    80007f80:	00052783          	lw	a5,0(a0)
    80007f84:	00079663          	bnez	a5,80007f90 <holding+0x10>
    80007f88:	00000513          	li	a0,0
    80007f8c:	00008067          	ret
    80007f90:	fe010113          	addi	sp,sp,-32
    80007f94:	00813823          	sd	s0,16(sp)
    80007f98:	00913423          	sd	s1,8(sp)
    80007f9c:	00113c23          	sd	ra,24(sp)
    80007fa0:	02010413          	addi	s0,sp,32
    80007fa4:	01053483          	ld	s1,16(a0)
    80007fa8:	ffffe097          	auipc	ra,0xffffe
    80007fac:	758080e7          	jalr	1880(ra) # 80006700 <mycpu>
    80007fb0:	01813083          	ld	ra,24(sp)
    80007fb4:	01013403          	ld	s0,16(sp)
    80007fb8:	40a48533          	sub	a0,s1,a0
    80007fbc:	00153513          	seqz	a0,a0
    80007fc0:	00813483          	ld	s1,8(sp)
    80007fc4:	02010113          	addi	sp,sp,32
    80007fc8:	00008067          	ret

0000000080007fcc <push_off>:
    80007fcc:	fe010113          	addi	sp,sp,-32
    80007fd0:	00813823          	sd	s0,16(sp)
    80007fd4:	00113c23          	sd	ra,24(sp)
    80007fd8:	00913423          	sd	s1,8(sp)
    80007fdc:	02010413          	addi	s0,sp,32
    80007fe0:	100024f3          	csrr	s1,sstatus
    80007fe4:	100027f3          	csrr	a5,sstatus
    80007fe8:	ffd7f793          	andi	a5,a5,-3
    80007fec:	10079073          	csrw	sstatus,a5
    80007ff0:	ffffe097          	auipc	ra,0xffffe
    80007ff4:	710080e7          	jalr	1808(ra) # 80006700 <mycpu>
    80007ff8:	07852783          	lw	a5,120(a0)
    80007ffc:	02078663          	beqz	a5,80008028 <push_off+0x5c>
    80008000:	ffffe097          	auipc	ra,0xffffe
    80008004:	700080e7          	jalr	1792(ra) # 80006700 <mycpu>
    80008008:	07852783          	lw	a5,120(a0)
    8000800c:	01813083          	ld	ra,24(sp)
    80008010:	01013403          	ld	s0,16(sp)
    80008014:	0017879b          	addiw	a5,a5,1
    80008018:	06f52c23          	sw	a5,120(a0)
    8000801c:	00813483          	ld	s1,8(sp)
    80008020:	02010113          	addi	sp,sp,32
    80008024:	00008067          	ret
    80008028:	0014d493          	srli	s1,s1,0x1
    8000802c:	ffffe097          	auipc	ra,0xffffe
    80008030:	6d4080e7          	jalr	1748(ra) # 80006700 <mycpu>
    80008034:	0014f493          	andi	s1,s1,1
    80008038:	06952e23          	sw	s1,124(a0)
    8000803c:	fc5ff06f          	j	80008000 <push_off+0x34>

0000000080008040 <pop_off>:
    80008040:	ff010113          	addi	sp,sp,-16
    80008044:	00813023          	sd	s0,0(sp)
    80008048:	00113423          	sd	ra,8(sp)
    8000804c:	01010413          	addi	s0,sp,16
    80008050:	ffffe097          	auipc	ra,0xffffe
    80008054:	6b0080e7          	jalr	1712(ra) # 80006700 <mycpu>
    80008058:	100027f3          	csrr	a5,sstatus
    8000805c:	0027f793          	andi	a5,a5,2
    80008060:	04079663          	bnez	a5,800080ac <pop_off+0x6c>
    80008064:	07852783          	lw	a5,120(a0)
    80008068:	02f05a63          	blez	a5,8000809c <pop_off+0x5c>
    8000806c:	fff7871b          	addiw	a4,a5,-1
    80008070:	06e52c23          	sw	a4,120(a0)
    80008074:	00071c63          	bnez	a4,8000808c <pop_off+0x4c>
    80008078:	07c52783          	lw	a5,124(a0)
    8000807c:	00078863          	beqz	a5,8000808c <pop_off+0x4c>
    80008080:	100027f3          	csrr	a5,sstatus
    80008084:	0027e793          	ori	a5,a5,2
    80008088:	10079073          	csrw	sstatus,a5
    8000808c:	00813083          	ld	ra,8(sp)
    80008090:	00013403          	ld	s0,0(sp)
    80008094:	01010113          	addi	sp,sp,16
    80008098:	00008067          	ret
    8000809c:	00002517          	auipc	a0,0x2
    800080a0:	92c50513          	addi	a0,a0,-1748 # 800099c8 <digits+0x48>
    800080a4:	fffff097          	auipc	ra,0xfffff
    800080a8:	018080e7          	jalr	24(ra) # 800070bc <panic>
    800080ac:	00002517          	auipc	a0,0x2
    800080b0:	90450513          	addi	a0,a0,-1788 # 800099b0 <digits+0x30>
    800080b4:	fffff097          	auipc	ra,0xfffff
    800080b8:	008080e7          	jalr	8(ra) # 800070bc <panic>

00000000800080bc <push_on>:
    800080bc:	fe010113          	addi	sp,sp,-32
    800080c0:	00813823          	sd	s0,16(sp)
    800080c4:	00113c23          	sd	ra,24(sp)
    800080c8:	00913423          	sd	s1,8(sp)
    800080cc:	02010413          	addi	s0,sp,32
    800080d0:	100024f3          	csrr	s1,sstatus
    800080d4:	100027f3          	csrr	a5,sstatus
    800080d8:	0027e793          	ori	a5,a5,2
    800080dc:	10079073          	csrw	sstatus,a5
    800080e0:	ffffe097          	auipc	ra,0xffffe
    800080e4:	620080e7          	jalr	1568(ra) # 80006700 <mycpu>
    800080e8:	07852783          	lw	a5,120(a0)
    800080ec:	02078663          	beqz	a5,80008118 <push_on+0x5c>
    800080f0:	ffffe097          	auipc	ra,0xffffe
    800080f4:	610080e7          	jalr	1552(ra) # 80006700 <mycpu>
    800080f8:	07852783          	lw	a5,120(a0)
    800080fc:	01813083          	ld	ra,24(sp)
    80008100:	01013403          	ld	s0,16(sp)
    80008104:	0017879b          	addiw	a5,a5,1
    80008108:	06f52c23          	sw	a5,120(a0)
    8000810c:	00813483          	ld	s1,8(sp)
    80008110:	02010113          	addi	sp,sp,32
    80008114:	00008067          	ret
    80008118:	0014d493          	srli	s1,s1,0x1
    8000811c:	ffffe097          	auipc	ra,0xffffe
    80008120:	5e4080e7          	jalr	1508(ra) # 80006700 <mycpu>
    80008124:	0014f493          	andi	s1,s1,1
    80008128:	06952e23          	sw	s1,124(a0)
    8000812c:	fc5ff06f          	j	800080f0 <push_on+0x34>

0000000080008130 <pop_on>:
    80008130:	ff010113          	addi	sp,sp,-16
    80008134:	00813023          	sd	s0,0(sp)
    80008138:	00113423          	sd	ra,8(sp)
    8000813c:	01010413          	addi	s0,sp,16
    80008140:	ffffe097          	auipc	ra,0xffffe
    80008144:	5c0080e7          	jalr	1472(ra) # 80006700 <mycpu>
    80008148:	100027f3          	csrr	a5,sstatus
    8000814c:	0027f793          	andi	a5,a5,2
    80008150:	04078463          	beqz	a5,80008198 <pop_on+0x68>
    80008154:	07852783          	lw	a5,120(a0)
    80008158:	02f05863          	blez	a5,80008188 <pop_on+0x58>
    8000815c:	fff7879b          	addiw	a5,a5,-1
    80008160:	06f52c23          	sw	a5,120(a0)
    80008164:	07853783          	ld	a5,120(a0)
    80008168:	00079863          	bnez	a5,80008178 <pop_on+0x48>
    8000816c:	100027f3          	csrr	a5,sstatus
    80008170:	ffd7f793          	andi	a5,a5,-3
    80008174:	10079073          	csrw	sstatus,a5
    80008178:	00813083          	ld	ra,8(sp)
    8000817c:	00013403          	ld	s0,0(sp)
    80008180:	01010113          	addi	sp,sp,16
    80008184:	00008067          	ret
    80008188:	00002517          	auipc	a0,0x2
    8000818c:	86850513          	addi	a0,a0,-1944 # 800099f0 <digits+0x70>
    80008190:	fffff097          	auipc	ra,0xfffff
    80008194:	f2c080e7          	jalr	-212(ra) # 800070bc <panic>
    80008198:	00002517          	auipc	a0,0x2
    8000819c:	83850513          	addi	a0,a0,-1992 # 800099d0 <digits+0x50>
    800081a0:	fffff097          	auipc	ra,0xfffff
    800081a4:	f1c080e7          	jalr	-228(ra) # 800070bc <panic>

00000000800081a8 <__memset>:
    800081a8:	ff010113          	addi	sp,sp,-16
    800081ac:	00813423          	sd	s0,8(sp)
    800081b0:	01010413          	addi	s0,sp,16
    800081b4:	1a060e63          	beqz	a2,80008370 <__memset+0x1c8>
    800081b8:	40a007b3          	neg	a5,a0
    800081bc:	0077f793          	andi	a5,a5,7
    800081c0:	00778693          	addi	a3,a5,7
    800081c4:	00b00813          	li	a6,11
    800081c8:	0ff5f593          	andi	a1,a1,255
    800081cc:	fff6071b          	addiw	a4,a2,-1
    800081d0:	1b06e663          	bltu	a3,a6,8000837c <__memset+0x1d4>
    800081d4:	1cd76463          	bltu	a4,a3,8000839c <__memset+0x1f4>
    800081d8:	1a078e63          	beqz	a5,80008394 <__memset+0x1ec>
    800081dc:	00b50023          	sb	a1,0(a0)
    800081e0:	00100713          	li	a4,1
    800081e4:	1ae78463          	beq	a5,a4,8000838c <__memset+0x1e4>
    800081e8:	00b500a3          	sb	a1,1(a0)
    800081ec:	00200713          	li	a4,2
    800081f0:	1ae78a63          	beq	a5,a4,800083a4 <__memset+0x1fc>
    800081f4:	00b50123          	sb	a1,2(a0)
    800081f8:	00300713          	li	a4,3
    800081fc:	18e78463          	beq	a5,a4,80008384 <__memset+0x1dc>
    80008200:	00b501a3          	sb	a1,3(a0)
    80008204:	00400713          	li	a4,4
    80008208:	1ae78263          	beq	a5,a4,800083ac <__memset+0x204>
    8000820c:	00b50223          	sb	a1,4(a0)
    80008210:	00500713          	li	a4,5
    80008214:	1ae78063          	beq	a5,a4,800083b4 <__memset+0x20c>
    80008218:	00b502a3          	sb	a1,5(a0)
    8000821c:	00700713          	li	a4,7
    80008220:	18e79e63          	bne	a5,a4,800083bc <__memset+0x214>
    80008224:	00b50323          	sb	a1,6(a0)
    80008228:	00700e93          	li	t4,7
    8000822c:	00859713          	slli	a4,a1,0x8
    80008230:	00e5e733          	or	a4,a1,a4
    80008234:	01059e13          	slli	t3,a1,0x10
    80008238:	01c76e33          	or	t3,a4,t3
    8000823c:	01859313          	slli	t1,a1,0x18
    80008240:	006e6333          	or	t1,t3,t1
    80008244:	02059893          	slli	a7,a1,0x20
    80008248:	40f60e3b          	subw	t3,a2,a5
    8000824c:	011368b3          	or	a7,t1,a7
    80008250:	02859813          	slli	a6,a1,0x28
    80008254:	0108e833          	or	a6,a7,a6
    80008258:	03059693          	slli	a3,a1,0x30
    8000825c:	003e589b          	srliw	a7,t3,0x3
    80008260:	00d866b3          	or	a3,a6,a3
    80008264:	03859713          	slli	a4,a1,0x38
    80008268:	00389813          	slli	a6,a7,0x3
    8000826c:	00f507b3          	add	a5,a0,a5
    80008270:	00e6e733          	or	a4,a3,a4
    80008274:	000e089b          	sext.w	a7,t3
    80008278:	00f806b3          	add	a3,a6,a5
    8000827c:	00e7b023          	sd	a4,0(a5)
    80008280:	00878793          	addi	a5,a5,8
    80008284:	fed79ce3          	bne	a5,a3,8000827c <__memset+0xd4>
    80008288:	ff8e7793          	andi	a5,t3,-8
    8000828c:	0007871b          	sext.w	a4,a5
    80008290:	01d787bb          	addw	a5,a5,t4
    80008294:	0ce88e63          	beq	a7,a4,80008370 <__memset+0x1c8>
    80008298:	00f50733          	add	a4,a0,a5
    8000829c:	00b70023          	sb	a1,0(a4)
    800082a0:	0017871b          	addiw	a4,a5,1
    800082a4:	0cc77663          	bgeu	a4,a2,80008370 <__memset+0x1c8>
    800082a8:	00e50733          	add	a4,a0,a4
    800082ac:	00b70023          	sb	a1,0(a4)
    800082b0:	0027871b          	addiw	a4,a5,2
    800082b4:	0ac77e63          	bgeu	a4,a2,80008370 <__memset+0x1c8>
    800082b8:	00e50733          	add	a4,a0,a4
    800082bc:	00b70023          	sb	a1,0(a4)
    800082c0:	0037871b          	addiw	a4,a5,3
    800082c4:	0ac77663          	bgeu	a4,a2,80008370 <__memset+0x1c8>
    800082c8:	00e50733          	add	a4,a0,a4
    800082cc:	00b70023          	sb	a1,0(a4)
    800082d0:	0047871b          	addiw	a4,a5,4
    800082d4:	08c77e63          	bgeu	a4,a2,80008370 <__memset+0x1c8>
    800082d8:	00e50733          	add	a4,a0,a4
    800082dc:	00b70023          	sb	a1,0(a4)
    800082e0:	0057871b          	addiw	a4,a5,5
    800082e4:	08c77663          	bgeu	a4,a2,80008370 <__memset+0x1c8>
    800082e8:	00e50733          	add	a4,a0,a4
    800082ec:	00b70023          	sb	a1,0(a4)
    800082f0:	0067871b          	addiw	a4,a5,6
    800082f4:	06c77e63          	bgeu	a4,a2,80008370 <__memset+0x1c8>
    800082f8:	00e50733          	add	a4,a0,a4
    800082fc:	00b70023          	sb	a1,0(a4)
    80008300:	0077871b          	addiw	a4,a5,7
    80008304:	06c77663          	bgeu	a4,a2,80008370 <__memset+0x1c8>
    80008308:	00e50733          	add	a4,a0,a4
    8000830c:	00b70023          	sb	a1,0(a4)
    80008310:	0087871b          	addiw	a4,a5,8
    80008314:	04c77e63          	bgeu	a4,a2,80008370 <__memset+0x1c8>
    80008318:	00e50733          	add	a4,a0,a4
    8000831c:	00b70023          	sb	a1,0(a4)
    80008320:	0097871b          	addiw	a4,a5,9
    80008324:	04c77663          	bgeu	a4,a2,80008370 <__memset+0x1c8>
    80008328:	00e50733          	add	a4,a0,a4
    8000832c:	00b70023          	sb	a1,0(a4)
    80008330:	00a7871b          	addiw	a4,a5,10
    80008334:	02c77e63          	bgeu	a4,a2,80008370 <__memset+0x1c8>
    80008338:	00e50733          	add	a4,a0,a4
    8000833c:	00b70023          	sb	a1,0(a4)
    80008340:	00b7871b          	addiw	a4,a5,11
    80008344:	02c77663          	bgeu	a4,a2,80008370 <__memset+0x1c8>
    80008348:	00e50733          	add	a4,a0,a4
    8000834c:	00b70023          	sb	a1,0(a4)
    80008350:	00c7871b          	addiw	a4,a5,12
    80008354:	00c77e63          	bgeu	a4,a2,80008370 <__memset+0x1c8>
    80008358:	00e50733          	add	a4,a0,a4
    8000835c:	00b70023          	sb	a1,0(a4)
    80008360:	00d7879b          	addiw	a5,a5,13
    80008364:	00c7f663          	bgeu	a5,a2,80008370 <__memset+0x1c8>
    80008368:	00f507b3          	add	a5,a0,a5
    8000836c:	00b78023          	sb	a1,0(a5)
    80008370:	00813403          	ld	s0,8(sp)
    80008374:	01010113          	addi	sp,sp,16
    80008378:	00008067          	ret
    8000837c:	00b00693          	li	a3,11
    80008380:	e55ff06f          	j	800081d4 <__memset+0x2c>
    80008384:	00300e93          	li	t4,3
    80008388:	ea5ff06f          	j	8000822c <__memset+0x84>
    8000838c:	00100e93          	li	t4,1
    80008390:	e9dff06f          	j	8000822c <__memset+0x84>
    80008394:	00000e93          	li	t4,0
    80008398:	e95ff06f          	j	8000822c <__memset+0x84>
    8000839c:	00000793          	li	a5,0
    800083a0:	ef9ff06f          	j	80008298 <__memset+0xf0>
    800083a4:	00200e93          	li	t4,2
    800083a8:	e85ff06f          	j	8000822c <__memset+0x84>
    800083ac:	00400e93          	li	t4,4
    800083b0:	e7dff06f          	j	8000822c <__memset+0x84>
    800083b4:	00500e93          	li	t4,5
    800083b8:	e75ff06f          	j	8000822c <__memset+0x84>
    800083bc:	00600e93          	li	t4,6
    800083c0:	e6dff06f          	j	8000822c <__memset+0x84>

00000000800083c4 <__memmove>:
    800083c4:	ff010113          	addi	sp,sp,-16
    800083c8:	00813423          	sd	s0,8(sp)
    800083cc:	01010413          	addi	s0,sp,16
    800083d0:	0e060863          	beqz	a2,800084c0 <__memmove+0xfc>
    800083d4:	fff6069b          	addiw	a3,a2,-1
    800083d8:	0006881b          	sext.w	a6,a3
    800083dc:	0ea5e863          	bltu	a1,a0,800084cc <__memmove+0x108>
    800083e0:	00758713          	addi	a4,a1,7
    800083e4:	00a5e7b3          	or	a5,a1,a0
    800083e8:	40a70733          	sub	a4,a4,a0
    800083ec:	0077f793          	andi	a5,a5,7
    800083f0:	00f73713          	sltiu	a4,a4,15
    800083f4:	00174713          	xori	a4,a4,1
    800083f8:	0017b793          	seqz	a5,a5
    800083fc:	00e7f7b3          	and	a5,a5,a4
    80008400:	10078863          	beqz	a5,80008510 <__memmove+0x14c>
    80008404:	00900793          	li	a5,9
    80008408:	1107f463          	bgeu	a5,a6,80008510 <__memmove+0x14c>
    8000840c:	0036581b          	srliw	a6,a2,0x3
    80008410:	fff8081b          	addiw	a6,a6,-1
    80008414:	02081813          	slli	a6,a6,0x20
    80008418:	01d85893          	srli	a7,a6,0x1d
    8000841c:	00858813          	addi	a6,a1,8
    80008420:	00058793          	mv	a5,a1
    80008424:	00050713          	mv	a4,a0
    80008428:	01088833          	add	a6,a7,a6
    8000842c:	0007b883          	ld	a7,0(a5)
    80008430:	00878793          	addi	a5,a5,8
    80008434:	00870713          	addi	a4,a4,8
    80008438:	ff173c23          	sd	a7,-8(a4)
    8000843c:	ff0798e3          	bne	a5,a6,8000842c <__memmove+0x68>
    80008440:	ff867713          	andi	a4,a2,-8
    80008444:	02071793          	slli	a5,a4,0x20
    80008448:	0207d793          	srli	a5,a5,0x20
    8000844c:	00f585b3          	add	a1,a1,a5
    80008450:	40e686bb          	subw	a3,a3,a4
    80008454:	00f507b3          	add	a5,a0,a5
    80008458:	06e60463          	beq	a2,a4,800084c0 <__memmove+0xfc>
    8000845c:	0005c703          	lbu	a4,0(a1)
    80008460:	00e78023          	sb	a4,0(a5)
    80008464:	04068e63          	beqz	a3,800084c0 <__memmove+0xfc>
    80008468:	0015c603          	lbu	a2,1(a1)
    8000846c:	00100713          	li	a4,1
    80008470:	00c780a3          	sb	a2,1(a5)
    80008474:	04e68663          	beq	a3,a4,800084c0 <__memmove+0xfc>
    80008478:	0025c603          	lbu	a2,2(a1)
    8000847c:	00200713          	li	a4,2
    80008480:	00c78123          	sb	a2,2(a5)
    80008484:	02e68e63          	beq	a3,a4,800084c0 <__memmove+0xfc>
    80008488:	0035c603          	lbu	a2,3(a1)
    8000848c:	00300713          	li	a4,3
    80008490:	00c781a3          	sb	a2,3(a5)
    80008494:	02e68663          	beq	a3,a4,800084c0 <__memmove+0xfc>
    80008498:	0045c603          	lbu	a2,4(a1)
    8000849c:	00400713          	li	a4,4
    800084a0:	00c78223          	sb	a2,4(a5)
    800084a4:	00e68e63          	beq	a3,a4,800084c0 <__memmove+0xfc>
    800084a8:	0055c603          	lbu	a2,5(a1)
    800084ac:	00500713          	li	a4,5
    800084b0:	00c782a3          	sb	a2,5(a5)
    800084b4:	00e68663          	beq	a3,a4,800084c0 <__memmove+0xfc>
    800084b8:	0065c703          	lbu	a4,6(a1)
    800084bc:	00e78323          	sb	a4,6(a5)
    800084c0:	00813403          	ld	s0,8(sp)
    800084c4:	01010113          	addi	sp,sp,16
    800084c8:	00008067          	ret
    800084cc:	02061713          	slli	a4,a2,0x20
    800084d0:	02075713          	srli	a4,a4,0x20
    800084d4:	00e587b3          	add	a5,a1,a4
    800084d8:	f0f574e3          	bgeu	a0,a5,800083e0 <__memmove+0x1c>
    800084dc:	02069613          	slli	a2,a3,0x20
    800084e0:	02065613          	srli	a2,a2,0x20
    800084e4:	fff64613          	not	a2,a2
    800084e8:	00e50733          	add	a4,a0,a4
    800084ec:	00c78633          	add	a2,a5,a2
    800084f0:	fff7c683          	lbu	a3,-1(a5)
    800084f4:	fff78793          	addi	a5,a5,-1
    800084f8:	fff70713          	addi	a4,a4,-1
    800084fc:	00d70023          	sb	a3,0(a4)
    80008500:	fec798e3          	bne	a5,a2,800084f0 <__memmove+0x12c>
    80008504:	00813403          	ld	s0,8(sp)
    80008508:	01010113          	addi	sp,sp,16
    8000850c:	00008067          	ret
    80008510:	02069713          	slli	a4,a3,0x20
    80008514:	02075713          	srli	a4,a4,0x20
    80008518:	00170713          	addi	a4,a4,1
    8000851c:	00e50733          	add	a4,a0,a4
    80008520:	00050793          	mv	a5,a0
    80008524:	0005c683          	lbu	a3,0(a1)
    80008528:	00178793          	addi	a5,a5,1
    8000852c:	00158593          	addi	a1,a1,1
    80008530:	fed78fa3          	sb	a3,-1(a5)
    80008534:	fee798e3          	bne	a5,a4,80008524 <__memmove+0x160>
    80008538:	f89ff06f          	j	800084c0 <__memmove+0xfc>
	...
