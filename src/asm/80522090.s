nofralloc
/* 80522090 80630004 */ lwz         r3, 4(r3)
/* 80522094 81830000 */ lwz         r12, 0(r3)
/* 80522098 818C001C */ lwz         r12, 0x1c(r12)
/* 8052209C 7D8903A6 */ mtctr       r12
/* 805220A0 4E800420 */ bctr        