nofralloc
/* 80522874 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80522878 7C0802A6 */ mflr        r0
/* 8052287C 2C030000 */ cmpwi       r3, 0
/* 80522880 90010014 */ stw         r0, 0x14(r1)
/* 80522884 93E1000C */ stw         r31, 0xc(r1)
/* 80522888 7C7F1B78 */ mr          r31, r3
/* 8052288C 41820010 */ beq-        lbl_8052289c
/* 80522890 2C040000 */ cmpwi       r4, 0
/* 80522894 40810008 */ ble-        lbl_8052289c
/* 80522898 4BD0757D */ bl          __dl__FPv
lbl_8052289c:
/* 8052289C 7FE3FB78 */ mr          r3, r31
/* 805228A0 83E1000C */ lwz         r31, 0xc(r1)
/* 805228A4 80010014 */ lwz         r0, 0x14(r1)
/* 805228A8 7C0803A6 */ mtlr        r0
/* 805228AC 38210010 */ addi        r1, r1, 0x10
/* 805228B0 4E800020 */ blr         