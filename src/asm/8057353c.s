nofralloc
/* 8057353C 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80573540 7C0802A6 */ mflr        r0
/* 80573544 90010024 */ stw         r0, 0x24(r1)
/* 80573548 93E1001C */ stw         r31, 0x1c(r1)
/* 8057354C 7C9F2378 */ mr          r31, r4
/* 80573550 93C10018 */ stw         r30, 0x18(r1)
/* 80573554 7C7E1B78 */ mr          r30, r3
/* 80573558 38630004 */ addi        r3, r3, 4
/* 8057355C 4801D265 */ bl          kartAccessor_34__Q24Kart15KartObjectProxyFv
/* 80573560 7C641B78 */ mr          r4, r3
/* 80573564 7FE5FB78 */ mr          r5, r31
/* 80573568 38610008 */ addi        r3, r1, 8
/* 8057356C 4BFFFEF9 */ bl          unk_80573464
/* 80573570 387E0004 */ addi        r3, r30, 4
/* 80573574 4801D7AD */ bl          kartAction__Q24Kart15KartObjectProxyFv
/* 80573578 C0010008 */ lfs         f0, 8(r1)
/* 8057357C D0030048 */ stfs        f0, 0x48(r3)
/* 80573580 C001000C */ lfs         f0, 0xc(r1)
/* 80573584 D003004C */ stfs        f0, 0x4c(r3)
/* 80573588 C0010010 */ lfs         f0, 0x10(r1)
/* 8057358C D0030050 */ stfs        f0, 0x50(r3)
/* 80573590 38600006 */ li          r3, 6
/* 80573594 83E1001C */ lwz         r31, 0x1c(r1)
/* 80573598 83C10018 */ lwz         r30, 0x18(r1)
/* 8057359C 80010024 */ lwz         r0, 0x24(r1)
/* 805735A0 7C0803A6 */ mtlr        r0
/* 805735A4 38210020 */ addi        r1, r1, 0x20
/* 805735A8 4E800020 */ blr         