nofralloc
/* 80521554 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80521558 7C0802A6 */ mflr        r0
/* 8052155C 2C040000 */ cmpwi       r4, 0
/* 80521560 90010024 */ stw         r0, 0x24(r1)
/* 80521564 93E1001C */ stw         r31, 0x1c(r1)
/* 80521568 7CBF2B78 */ mr          r31, r5
/* 8052156C 93C10018 */ stw         r30, 0x18(r1)
/* 80521570 7C9E2378 */ mr          r30, r4
/* 80521574 93A10014 */ stw         r29, 0x14(r1)
/* 80521578 7C7D1B78 */ mr          r29, r3
/* 8052157C 90830004 */ stw         r4, 4(r3)
/* 80521580 7FC3F378 */ mr          r3, r30
/* 80521584 4182000C */ beq-        lbl_80521590
/* 80521588 88840051 */ lbz         r4, 0x51(r4)
/* 8052158C 48000008 */ b           lbl_80521594
lbl_80521590:
/* 80521590 38800000 */ li          r4, 0
lbl_80521594:
/* 80521594 81830000 */ lwz         r12, 0(r3)
/* 80521598 818C0038 */ lwz         r12, 0x38(r12)
/* 8052159C 7D8903A6 */ mtctr       r12
/* 805215A0 4E800421 */ bctrl       
/* 805215A4 2C1F0000 */ cmpwi       r31, 0
/* 805215A8 4182000C */ beq-        lbl_805215b4
/* 805215AC 93FD0008 */ stw         r31, 8(r29)
/* 805215B0 48000008 */ b           lbl_805215b8
lbl_805215b4:
/* 805215B4 93DD0008 */ stw         r30, 8(r29)
lbl_805215b8:
/* 805215B8 80010024 */ lwz         r0, 0x24(r1)
/* 805215BC 83E1001C */ lwz         r31, 0x1c(r1)
/* 805215C0 83C10018 */ lwz         r30, 0x18(r1)
/* 805215C4 83A10014 */ lwz         r29, 0x14(r1)
/* 805215C8 7C0803A6 */ mtlr        r0
/* 805215CC 38210020 */ addi        r1, r1, 0x20
/* 805215D0 4E800020 */ blr         