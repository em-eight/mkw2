nofralloc
/* 805715F4 9421FFF0 */ stwu        r1, -0x10(r1)
/* 805715F8 7C0802A6 */ mflr        r0
/* 805715FC 2C030000 */ cmpwi       r3, 0
/* 80571600 90010014 */ stw         r0, 0x14(r1)
/* 80571604 93E1000C */ stw         r31, 0xc(r1)
/* 80571608 7C7F1B78 */ mr          r31, r3
/* 8057160C 41820010 */ beq-        lbl_8057161c
/* 80571610 2C040000 */ cmpwi       r4, 0
/* 80571614 40810008 */ ble-        lbl_8057161c
/* 80571618 4BCB87FD */ bl          __dl__FPv
lbl_8057161c:
/* 8057161C 7FE3FB78 */ mr          r3, r31
/* 80571620 83E1000C */ lwz         r31, 0xc(r1)
/* 80571624 80010014 */ lwz         r0, 0x14(r1)
/* 80571628 7C0803A6 */ mtlr        r0
/* 8057162C 38210010 */ addi        r1, r1, 0x10
/* 80571630 4E800020 */ blr         