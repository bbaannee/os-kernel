# void kThread::switchContext(Context *oldContext, Context *newContext)
# a0 = &old->context, a1 = &new->context

.global _ZN7kThread13switchContextEPNS_7ContextES1_
.type _ZN7kThread13switchContextEPNS_7ContextES1_, @function
_ZN7kThread13switchContextEPNS_7ContextES1_:

   
    sd ra, 0(a0)
    sd sp, 8(a0)

   
    ld ra, 0(a1)
    ld sp, 8(a1)

    ret

