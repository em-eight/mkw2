nofralloc
/* 80510F18 9421FFF0 */ stwu        r1, -0x10(r1)
/* 80510F1C 7C0802A6 */ mflr        r0
/* 80510F20 2C030000 */ cmpwi       r3, 0
/* 80510F24 90010014 */ stw         r0, 0x14(r1)
/* 80510F28 93E1000C */ stw         r31, 0xc(r1)
/* 80510F2C 7C7F1B78 */ mr          r31, r3
/* 80510F30 41820010 */ beq-        lbl_80510f40
/* 80510F34 2C040000 */ cmpwi       r4, 0
/* 80510F38 40810008 */ ble-        lbl_80510f40
/* 80510F3C 4BD18ED9 */ bl          __dl__FPv
lbl_80510f40:
/* 80510F40 7FE3FB78 */ mr          r3, r31
/* 80510F44 83E1000C */ lwz         r31, 0xc(r1)
/* 80510F48 80010014 */ lwz         r0, 0x14(r1)
/* 80510F4C 7C0803A6 */ mtlr        r0
/* 80510F50 38210010 */ addi        r1, r1, 0x10
/* 80510F54 4E800020 */ blr         