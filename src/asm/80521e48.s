nofralloc
/* 80521E48 9421FFE0 */ stwu        r1, -0x20(r1)
/* 80521E4C 7C0802A6 */ mflr        r0
/* 80521E50 90010024 */ stw         r0, 0x24(r1)
/* 80521E54 80030020 */ lwz         r0, 0x20(r3)
/* 80521E58 DBE10018 */ stfd        f31, 0x18(r1)
/* 80521E5C FFE00890 */ fmr         f31, f1
/* 80521E60 2C000000 */ cmpwi       r0, 0
/* 80521E64 93E10014 */ stw         r31, 0x14(r1)
/* 80521E68 7CDF3378 */ mr          r31, r6
/* 80521E6C 93C10010 */ stw         r30, 0x10(r1)
/* 80521E70 7CBE2B78 */ mr          r30, r5
/* 80521E74 93A1000C */ stw         r29, 0xc(r1)
/* 80521E78 7C7D1B78 */ mr          r29, r3
/* 80521E7C 41820034 */ beq-        lbl_80521eb0
/* 80521E80 81840000 */ lwz         r12, 0(r4)
/* 80521E84 7C832378 */ mr          r3, r4
/* 80521E88 818C0014 */ lwz         r12, 0x14(r12)
/* 80521E8C 7D8903A6 */ mtctr       r12
/* 80521E90 4E800421 */ bctrl       
/* 80521E94 2C030000 */ cmpwi       r3, 0
/* 80521E98 41820018 */ beq-        lbl_80521eb0
/* 80521E9C FC20F890 */ fmr         f1, f31
/* 80521EA0 807D0020 */ lwz         r3, 0x20(r29)
/* 80521EA4 7FC4F378 */ mr          r4, r30
/* 80521EA8 7FE5FB78 */ mr          r5, r31
/* 80521EAC 48003BC9 */ bl          unk_80525a74
lbl_80521eb0:
/* 80521EB0 80010024 */ lwz         r0, 0x24(r1)
/* 80521EB4 CBE10018 */ lfd         f31, 0x18(r1)
/* 80521EB8 83E10014 */ lwz         r31, 0x14(r1)
/* 80521EBC 83C10010 */ lwz         r30, 0x10(r1)
/* 80521EC0 83A1000C */ lwz         r29, 0xc(r1)
/* 80521EC4 7C0803A6 */ mtlr        r0
/* 80521EC8 38210020 */ addi        r1, r1, 0x20
/* 80521ECC 4E800020 */ blr         