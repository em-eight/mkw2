nofralloc
/* 805215D4 9421FFF0 */ stwu        r1, -0x10(r1)
/* 805215D8 7C0802A6 */ mflr        r0
/* 805215DC 90010014 */ stw         r0, 0x14(r1)
/* 805215E0 38000000 */ li          r0, 0
/* 805215E4 93E1000C */ stw         r31, 0xc(r1)
/* 805215E8 7C7F1B78 */ mr          r31, r3
/* 805215EC 80830004 */ lwz         r4, 4(r3)
/* 805215F0 980300E4 */ stb         r0, 0xe4(r3)
/* 805215F4 2C040000 */ cmpwi       r4, 0
/* 805215F8 4182001C */ beq-        lbl_80521614
/* 805215FC 81840000 */ lwz         r12, 0(r4)
/* 80521600 7C832378 */ mr          r3, r4
/* 80521604 818C0010 */ lwz         r12, 0x10(r12)
/* 80521608 7D8903A6 */ mtctr       r12
/* 8052160C 4E800421 */ bctrl       
/* 80521610 48000008 */ b           lbl_80521618
lbl_80521614:
/* 80521614 3860FFFF */ li          r3, -1
lbl_80521618:
/* 80521618 2C030004 */ cmpwi       r3, 4
/* 8052161C 40820014 */ bne-        lbl_80521630
/* 80521620 807F0004 */ lwz         r3, 4(r31)
/* 80521624 38000001 */ li          r0, 1
/* 80521628 980300A6 */ stb         r0, 0xa6(r3)
/* 8052162C 48000048 */ b           lbl_80521674
lbl_80521630:
/* 80521630 807F0004 */ lwz         r3, 4(r31)
/* 80521634 2C030000 */ cmpwi       r3, 0
/* 80521638 41820018 */ beq-        lbl_80521650
/* 8052163C 81830000 */ lwz         r12, 0(r3)
/* 80521640 818C0010 */ lwz         r12, 0x10(r12)
/* 80521644 7D8903A6 */ mtctr       r12
/* 80521648 4E800421 */ bctrl       
/* 8052164C 48000008 */ b           lbl_80521654
lbl_80521650:
/* 80521650 3860FFFF */ li          r3, -1
lbl_80521654:
/* 80521654 2C03FFFF */ cmpwi       r3, -1
/* 80521658 4182001C */ beq-        lbl_80521674
/* 8052165C 38800000 */ li          r4, 0
/* 80521660 909F00DC */ stw         r4, 0xdc(r31)
/* 80521664 807F00E8 */ lwz         r3, 0xe8(r31)
/* 80521668 38000001 */ li          r0, 1
/* 8052166C 909F00E0 */ stw         r4, 0xe0(r31)
/* 80521670 90030014 */ stw         r0, 0x14(r3)
lbl_80521674:
/* 80521674 80010014 */ lwz         r0, 0x14(r1)
/* 80521678 83E1000C */ lwz         r31, 0xc(r1)
/* 8052167C 7C0803A6 */ mtlr        r0
/* 80521680 38210010 */ addi        r1, r1, 0x10
/* 80521684 4E800020 */ blr         