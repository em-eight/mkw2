nofralloc
/* 805832C4 80830000 */ lwz         r4, 0(r3)
/* 805832C8 38000000 */ li          r0, 0
/* 805832CC 80A40004 */ lwz         r5, 4(r4)
/* 805832D0 80850008 */ lwz         r4, 8(r5)
/* 805832D4 54840314 */ rlwinm      r4, r4, 0, 0xc, 0xa
/* 805832D8 90850008 */ stw         r4, 8(r5)
/* 805832DC B0030102 */ sth         r0, 0x102(r3)
/* 805832E0 4E800020 */ blr         