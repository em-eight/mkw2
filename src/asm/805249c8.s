nofralloc
/* 805249C8 9421FFF0 */ stwu        r1, -0x10(r1)
/* 805249CC 7C0802A6 */ mflr        r0
/* 805249D0 90010014 */ stw         r0, 0x14(r1)
/* 805249D4 93E1000C */ stw         r31, 0xc(r1)
/* 805249D8 3BE00000 */ li          r31, 0
/* 805249DC 93C10008 */ stw         r30, 8(r1)
/* 805249E0 7C7E1B78 */ mr          r30, r3
lbl_805249e4:
/* 805249E4 57E0063E */ clrlwi      r0, r31, 0x18
/* 805249E8 1C0000B0 */ mulli       r0, r0, 0xb0
/* 805249EC 7C7E0214 */ add         r3, r30, r0
/* 805249F0 85833BA0 */ lwzu        r12, 0x3ba0(r3)
/* 805249F4 818C0020 */ lwz         r12, 0x20(r12)
/* 805249F8 7D8903A6 */ mtctr       r12
/* 805249FC 4E800421 */ bctrl       
/* 80524A00 3BFF0001 */ addi        r31, r31, 1
/* 80524A04 281F0004 */ cmplwi      r31, 4
/* 80524A08 4180FFDC */ blt+        lbl_805249e4
/* 80524A0C 3BE00000 */ li          r31, 0
lbl_80524a10:
/* 80524A10 57E0063E */ clrlwi      r0, r31, 0x18
/* 80524A14 1C000920 */ mulli       r0, r0, 0x920
/* 80524A18 7C7E0214 */ add         r3, r30, r0
/* 80524A1C 85831720 */ lwzu        r12, 0x1720(r3)
/* 80524A20 818C0020 */ lwz         r12, 0x20(r12)
/* 80524A24 7D8903A6 */ mtctr       r12
/* 80524A28 4E800421 */ bctrl       
/* 80524A2C 3BFF0001 */ addi        r31, r31, 1
/* 80524A30 281F0004 */ cmplwi      r31, 4
/* 80524A34 4180FFDC */ blt+        lbl_80524a10
/* 80524A38 80010014 */ lwz         r0, 0x14(r1)
/* 80524A3C 83E1000C */ lwz         r31, 0xc(r1)
/* 80524A40 83C10008 */ lwz         r30, 8(r1)
/* 80524A44 7C0803A6 */ mtlr        r0
/* 80524A48 38210010 */ addi        r1, r1, 0x10
/* 80524A4C 4E800020 */ blr         