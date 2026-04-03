# 1 "src/switchContext.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/riscv64-linux-gnu/include/stdc-predef.h" 1 3
# 32 "<command-line>" 2
# 1 "src/switchContext.S"
# void Thread::switchContext(Context *oldContext, Context *newContext)
# a0 = &old->context, a1 = &new->context

.global _ZN6Thread13switchContextEPNS_7ContextES1_
.type _ZN6Thread13switchContextEPNS_7ContextES1_, @function
_ZN6Thread13switchContextEPNS_7ContextES1_:

    # 1. SAČUVAJ STARU NIT (u a0)
    sd ra, 0(a0)
    sd sp, 8(a0)

    # 2. UČITAJ NOVU NIT (iz a1)
    ld ra, 0(a1)
    ld sp, 8(a1)

    # 3. SKOK U NOVU NIT
    ret

# --- Riscv klase funkcije ---

.global _ZN5Riscv11pushAllRegsEv
.type _ZN5Riscv11pushAllRegsEv, @function
_ZN5Riscv11pushAllRegsEv:
    # Rezervišemo prostor za 32 registra (32 * 8 = 256 bajtova)
    addi sp, sp, -256

    # Čuvamo registre x1 do x31 na stek
    # x0 ne čuvamo jer je uvek nula
    .irp index, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    sd x\index, \index * 8(sp)
    .endr

    ret

.global _ZN5Riscv10popAllRegsEv
.type _ZN5Riscv10popAllRegsEv, @function
_ZN5Riscv10popAllRegsEv:
    # Vraćamo registre x1 do x31 sa steka
    .irp index, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    ld x\index, \index * 8(sp)
    .endr

    # Oslobađamo prostor na steku
    addi sp, sp, 256
    ret
