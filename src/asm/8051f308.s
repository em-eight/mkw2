nofralloc
/* 8051F308 9421FFF0 */ stwu        r1, -0x10(r1)
/* 8051F30C 7C0802A6 */ mflr        r0
/* 8051F310 90010014 */ stw         r0, 0x14(r1)
/* 8051F314 93E1000C */ stw         r31, 0xc(r1)
/* 8051F318 7C7F1B78 */ mr          r31, r3
/* 8051F31C 81830000 */ lwz         r12, 0(r3)
/* 8051F320 818C0038 */ lwz         r12, 0x38(r12)
/* 8051F324 7D8903A6 */ mtctr       r12
/* 8051F328 4E800421 */ bctrl       
/* 8051F32C 881F0018 */ lbz         r0, 0x18(r31)
/* 8051F330 3C608089 */ lis         r3, ZERO_F__6System@ha
/* 8051F334 C003FCC0 */ lfs         f0, ZERO_F__6System@l(r3)
/* 8051F338 38800000 */ li          r4, 0
/* 8051F33C 38600007 */ li          r3, 7
/* 8051F340 5400066E */ rlwinm      r0, r0, 0, 0x19, 0x17
/* 8051F344 B09F0008 */ sth         r4, 8(r31)
/* 8051F348 B09F000A */ sth         r4, 0xa(r31)
/* 8051F34C D01F0010 */ stfs        f0, 0x10(r31)
/* 8051F350 D01F000C */ stfs        f0, 0xc(r31)
/* 8051F354 987F0014 */ stb         r3, 0x14(r31)
/* 8051F358 987F0015 */ stb         r3, 0x15(r31)
/* 8051F35C 989F0016 */ stb         r4, 0x16(r31)
/* 8051F360 989F0017 */ stb         r4, 0x17(r31)
/* 8051F364 981F0018 */ stb         r0, 0x18(r31)
/* 8051F368 83E1000C */ lwz         r31, 0xc(r1)
/* 8051F36C 80010014 */ lwz         r0, 0x14(r1)
/* 8051F370 7C0803A6 */ mtlr        r0
/* 8051F374 38210010 */ addi        r1, r1, 0x10
/* 8051F378 4E800020 */ blr         