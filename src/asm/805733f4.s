nofralloc
/* 805733F4 9421FFE0 */ stwu        r1, -0x20(r1)
/* 805733F8 7C0802A6 */ mflr        r0
/* 805733FC 90010024 */ stw         r0, 0x24(r1)
/* 80573400 93E1001C */ stw         r31, 0x1c(r1)
/* 80573404 7C9F2378 */ mr          r31, r4
/* 80573408 93C10018 */ stw         r30, 0x18(r1)
/* 8057340C 7C7E1B78 */ mr          r30, r3
/* 80573410 38630004 */ addi        r3, r3, 4
/* 80573414 4801D3AD */ bl          kartAccessor_34__Q24Kart15KartObjectProxyFv
/* 80573418 7C641B78 */ mr          r4, r3
/* 8057341C 7FE5FB78 */ mr          r5, r31
/* 80573420 38610008 */ addi        r3, r1, 8
/* 80573424 48000041 */ bl          unk_80573464
/* 80573428 387E0004 */ addi        r3, r30, 4
/* 8057342C 4801D8F5 */ bl          kartAction__Q24Kart15KartObjectProxyFv
/* 80573430 C0010008 */ lfs         f0, 8(r1)
/* 80573434 D0030048 */ stfs        f0, 0x48(r3)
/* 80573438 C001000C */ lfs         f0, 0xc(r1)
/* 8057343C D003004C */ stfs        f0, 0x4c(r3)
/* 80573440 C0010010 */ lfs         f0, 0x10(r1)
/* 80573444 D0030050 */ stfs        f0, 0x50(r3)
/* 80573448 38600005 */ li          r3, 5
/* 8057344C 83E1001C */ lwz         r31, 0x1c(r1)
/* 80573450 83C10018 */ lwz         r30, 0x18(r1)
/* 80573454 80010024 */ lwz         r0, 0x24(r1)
/* 80573458 7C0803A6 */ mtlr        r0
/* 8057345C 38210020 */ addi        r1, r1, 0x20
/* 80573460 4E800020 */ blr         