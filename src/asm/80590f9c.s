nofralloc
/* 80590F9C 9421FFD0 */ stwu        r1, -0x30(r1)
/* 80590FA0 7C0802A6 */ mflr        r0
/* 80590FA4 3D808089 */ lis         r12, lbl_80891c58@ha
/* 80590FA8 90010034 */ stw         r0, 0x34(r1)
/* 80590FAC 398C1C58 */ addi        r12, r12, lbl_80891c58@l
/* 80590FB0 93E1002C */ stw         r31, 0x2c(r1)
/* 80590FB4 80630000 */ lwz         r3, 0(r3)
/* 80590FB8 80630024 */ lwz         r3, 0x24(r3)
/* 80590FBC 2C030000 */ cmpwi       r3, 0
/* 80590FC0 41820058 */ beq-        lbl_80591018
/* 80590FC4 38AC0008 */ addi        r5, r12, 8
/* 80590FC8 38CC0014 */ addi        r6, r12, 0x14
/* 80590FCC 816C0008 */ lwz         r11, 8(r12)
/* 80590FD0 549F15BA */ rlwinm      r31, r4, 2, 0x16, 0x1d
/* 80590FD4 81450004 */ lwz         r10, 4(r5)
/* 80590FD8 38810014 */ addi        r4, r1, 0x14
/* 80590FDC 81250008 */ lwz         r9, 8(r5)
/* 80590FE0 38A10008 */ addi        r5, r1, 8
/* 80590FE4 810C0014 */ lwz         r8, 0x14(r12)
/* 80590FE8 80E60004 */ lwz         r7, 4(r6)
/* 80590FEC 80060008 */ lwz         r0, 8(r6)
/* 80590FF0 91610014 */ stw         r11, 0x14(r1)
/* 80590FF4 C02C0004 */ lfs         f1, 4(r12)
/* 80590FF8 91410018 */ stw         r10, 0x18(r1)
/* 80590FFC 9121001C */ stw         r9, 0x1c(r1)
/* 80591000 91010008 */ stw         r8, 8(r1)
/* 80591004 7C84F82E */ lwzx        r4, r4, r31
/* 80591008 90E1000C */ stw         r7, 0xc(r1)
/* 8059100C 90010010 */ stw         r0, 0x10(r1)
/* 80591010 7CA5F82E */ lwzx        r5, r5, r31
/* 80591014 48015AA5 */ bl          unk_805a6ab8
lbl_80591018:
/* 80591018 80010034 */ lwz         r0, 0x34(r1)
/* 8059101C 83E1002C */ lwz         r31, 0x2c(r1)
/* 80591020 7C0803A6 */ mtlr        r0
/* 80591024 38210030 */ addi        r1, r1, 0x30
/* 80591028 4E800020 */ blr         