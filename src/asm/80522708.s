nofralloc
/* 80522708 9421FFF0 */ stwu        r1, -0x10(r1)
/* 8052270C 7C0802A6 */ mflr        r0
/* 80522710 90010014 */ stw         r0, 0x14(r1)
/* 80522714 93E1000C */ stw         r31, 0xc(r1)
/* 80522718 7C7F1B78 */ mr          r31, r3
/* 8052271C 806300E8 */ lwz         r3, 0xe8(r3)
/* 80522720 48002589 */ bl          GhostWriter_reset
/* 80522724 807F0004 */ lwz         r3, 4(r31)
/* 80522728 38A00000 */ li          r5, 0
/* 8052272C 3880002C */ li          r4, 0x2c
/* 80522730 3800FFFF */ li          r0, -1
/* 80522734 2C030000 */ cmpwi       r3, 0
/* 80522738 90BF00DC */ stw         r5, 0xdc(r31)
/* 8052273C 90BF00E0 */ stw         r5, 0xe0(r31)
/* 80522740 909F0010 */ stw         r4, 0x10(r31)
/* 80522744 90BF0018 */ stw         r5, 0x18(r31)
/* 80522748 981F0014 */ stb         r0, 0x14(r31)
/* 8052274C B0BF00C2 */ sth         r5, 0xc2(r31)
/* 80522750 B0BF00C4 */ sth         r5, 0xc4(r31)
/* 80522754 4182002C */ beq-        lbl_80522780
/* 80522758 809F0004 */ lwz         r4, 4(r31)
/* 8052275C 2C040000 */ cmpwi       r4, 0
/* 80522760 4182000C */ beq-        lbl_8052276c
/* 80522764 88840051 */ lbz         r4, 0x51(r4)
/* 80522768 48000008 */ b           lbl_80522770
lbl_8052276c:
/* 8052276C 38800000 */ li          r4, 0
lbl_80522770:
/* 80522770 81830000 */ lwz         r12, 0(r3)
/* 80522774 818C0044 */ lwz         r12, 0x44(r12)
/* 80522778 7D8903A6 */ mtctr       r12
/* 8052277C 4E800421 */ bctrl       
lbl_80522780:
/* 80522780 38000000 */ li          r0, 0
/* 80522784 981F00C6 */ stb         r0, 0xc6(r31)
/* 80522788 83E1000C */ lwz         r31, 0xc(r1)
/* 8052278C 80010014 */ lwz         r0, 0x14(r1)
/* 80522790 7C0803A6 */ mtlr        r0
/* 80522794 38210010 */ addi        r1, r1, 0x10
/* 80522798 4E800020 */ blr         