nofralloc
/* 805222F4 9421FFF0 */ stwu        r1, -0x10(r1)
/* 805222F8 7C0802A6 */ mflr        r0
/* 805222FC 2C030000 */ cmpwi       r3, 0
/* 80522300 90010014 */ stw         r0, 0x14(r1)
/* 80522304 93E1000C */ stw         r31, 0xc(r1)
/* 80522308 7C9F2378 */ mr          r31, r4
/* 8052230C 93C10008 */ stw         r30, 8(r1)
/* 80522310 7C7E1B78 */ mr          r30, r3
/* 80522314 41820028 */ beq-        lbl_8052233c
/* 80522318 3C80808B */ lis         r4, lbl_808b2d90@ha
/* 8052231C 38842D90 */ addi        r4, r4, lbl_808b2d90@l
/* 80522320 90830000 */ stw         r4, 0(r3)
/* 80522324 806300D8 */ lwz         r3, 0xd8(r3)
/* 80522328 4BD07BB9 */ bl          __dla__FPv
/* 8052232C 2C1F0000 */ cmpwi       r31, 0
/* 80522330 4081000C */ ble-        lbl_8052233c
/* 80522334 7FC3F378 */ mr          r3, r30
/* 80522338 4BD07ADD */ bl          __dl__FPv
lbl_8052233c:
/* 8052233C 7FC3F378 */ mr          r3, r30
/* 80522340 83E1000C */ lwz         r31, 0xc(r1)
/* 80522344 83C10008 */ lwz         r30, 8(r1)
/* 80522348 80010014 */ lwz         r0, 0x14(r1)
/* 8052234C 7C0803A6 */ mtlr        r0
/* 80522350 38210010 */ addi        r1, r1, 0x10
/* 80522354 4E800020 */ blr         