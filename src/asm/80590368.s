nofralloc
/* 80590368 80630000 */ lwz         r3, 0(r3)
/* 8059036C 80630008 */ lwz         r3, 8(r3)
/* 80590370 8183000C */ lwz         r12, 0xc(r3)
/* 80590374 818C0054 */ lwz         r12, 0x54(r12)
/* 80590378 7D8903A6 */ mtctr       r12
/* 8059037C 4E800420 */ bctr        