nofralloc
/* 806221D8 9421FFE0 */ stwu        r1, -0x20(r1)
/* 806221DC 7C0802A6 */ mflr        r0
/* 806221E0 90010024 */ stw         r0, 0x24(r1)
/* 806221E4 93E1001C */ stw         r31, 0x1c(r1)
/* 806221E8 7C7F1B78 */ mr          r31, r3
/* 806221EC 93C10018 */ stw         r30, 0x18(r1)
/* 806221F0 93A10014 */ stw         r29, 0x14(r1)
/* 806221F4 3BA00000 */ li          r29, 0
/* 806221F8 48000054 */ b           lbl_8062224c
lbl_806221fc:
/* 806221FC 3BC3FFFF */ addi        r30, r3, -1
/* 80622200 57C0103A */ slwi        r0, r30, 2
/* 80622204 7C7F0214 */ add         r3, r31, r0
/* 80622208 80630354 */ lwz         r3, 0x354(r3)
/* 8062220C 4BFDFD39 */ bl          unk_80601f44
/* 80622210 807F037C */ lwz         r3, 0x37c(r31)
/* 80622214 3803FFFF */ addi        r0, r3, -1
/* 80622218 7C1E0000 */ cmpw        r30, r0
/* 8062221C 40820030 */ bne-        lbl_8062224c
/* 80622220 5460103A */ slwi        r0, r3, 2
/* 80622224 7C7F0214 */ add         r3, r31, r0
/* 80622228 80630350 */ lwz         r3, 0x350(r3)
/* 8062222C 4BFDF9DD */ bl          Page_deactivate
/* 80622230 801F037C */ lwz         r0, 0x37c(r31)
/* 80622234 5400103A */ slwi        r0, r0, 2
/* 80622238 7C7F0214 */ add         r3, r31, r0
/* 8062223C 93A30354 */ stw         r29, 0x354(r3)
/* 80622240 807F037C */ lwz         r3, 0x37c(r31)
/* 80622244 3803FFFF */ addi        r0, r3, -1
/* 80622248 901F037C */ stw         r0, 0x37c(r31)
lbl_8062224c:
/* 8062224C 807F037C */ lwz         r3, 0x37c(r31)
/* 80622250 2C030000 */ cmpwi       r3, 0
/* 80622254 4181FFA8 */ bgt+        lbl_806221fc
/* 80622258 3C60809C */ lis         r3, lbl_809c1e38@ha
/* 8062225C 38800000 */ li          r4, 0
/* 80622260 80631E38 */ lwz         r3, lbl_809c1e38@l(r3)
/* 80622264 38630034 */ addi        r3, r3, 0x34
/* 80622268 4BFF9AAD */ bl          unk_8061bd14
/* 8062226C 7FFDFB78 */ mr          r29, r31
/* 80622270 3BC00000 */ li          r30, 0
lbl_80622274:
/* 80622274 807D0008 */ lwz         r3, 8(r29)
/* 80622278 2C030000 */ cmpwi       r3, 0
/* 8062227C 41820028 */ beq-        lbl_806222a4
/* 80622280 4BFDF85D */ bl          Page_fini
/* 80622284 807D0008 */ lwz         r3, 8(r29)
/* 80622288 2C030000 */ cmpwi       r3, 0
/* 8062228C 41820018 */ beq-        lbl_806222a4
/* 80622290 81830000 */ lwz         r12, 0(r3)
/* 80622294 38800001 */ li          r4, 1
/* 80622298 818C0008 */ lwz         r12, 8(r12)
/* 8062229C 7D8903A6 */ mtctr       r12
/* 806222A0 4E800421 */ bctrl       
lbl_806222a4:
/* 806222A4 3BDE0001 */ addi        r30, r30, 1
/* 806222A8 3BBD0004 */ addi        r29, r29, 4
/* 806222AC 2C1E00D3 */ cmpwi       r30, 0xd3
/* 806222B0 4180FFC4 */ blt+        lbl_80622274
/* 806222B4 7FFDFB78 */ mr          r29, r31
/* 806222B8 3BC00000 */ li          r30, 0
lbl_806222bc:
/* 806222BC 807D0380 */ lwz         r3, 0x380(r29)
/* 806222C0 2C030000 */ cmpwi       r3, 0
/* 806222C4 41820030 */ beq-        lbl_806222f4
/* 806222C8 4BFDFC7D */ bl          unk_80601f44
/* 806222CC 807D0380 */ lwz         r3, 0x380(r29)
/* 806222D0 4BFDF80D */ bl          Page_fini
/* 806222D4 807D0380 */ lwz         r3, 0x380(r29)
/* 806222D8 2C030000 */ cmpwi       r3, 0
/* 806222DC 41820018 */ beq-        lbl_806222f4
/* 806222E0 81830000 */ lwz         r12, 0(r3)
/* 806222E4 38800001 */ li          r4, 1
/* 806222E8 818C0008 */ lwz         r12, 8(r12)
/* 806222EC 7D8903A6 */ mtctr       r12
/* 806222F0 4E800421 */ bctrl       
lbl_806222f4:
/* 806222F4 3BDE0001 */ addi        r30, r30, 1
/* 806222F8 3BBD0004 */ addi        r29, r29, 4
/* 806222FC 2C1E0002 */ cmpwi       r30, 2
/* 80622300 4180FFBC */ blt+        lbl_806222bc
/* 80622304 4BFAB865 */ bl          unk_805cdb68
/* 80622308 807F03EC */ lwz         r3, 0x3ec(r31)
/* 8062230C 38800001 */ li          r4, 1
/* 80622310 4BFC7BE9 */ bl          LayoutThing3List_destroy
/* 80622314 807F03E8 */ lwz         r3, 0x3e8(r31)
/* 80622318 38800001 */ li          r4, 1
/* 8062231C 4BFC7F7D */ bl          UIResourceAccessorList_destroy
/* 80622320 3C608038 */ lis         r3, lbl_80386170@ha
/* 80622324 38000000 */ li          r0, 0
/* 80622328 90036170 */ stw         r0, lbl_80386170@l(r3)
/* 8062232C 807F0400 */ lwz         r3, 0x400(r31)
/* 80622330 2C030000 */ cmpwi       r3, 0
/* 80622334 41820008 */ beq-        lbl_8062233c
/* 80622338 4BFDAAB5 */ bl          unk_805fcdec
lbl_8062233c:
/* 8062233C 881F038E */ lbz         r0, 0x38e(r31)
/* 80622340 2C000000 */ cmpwi       r0, 0
/* 80622344 41820040 */ beq-        lbl_80622384
/* 80622348 3C601062 */ lis         r3, 0x1062
/* 8062234C 3FC08000 */ lis         r30, 0x8000
/* 80622350 3BA34DD3 */ addi        r29, r3, 0x4dd3
/* 80622354 3FE0809C */ lis         r31, lbl_809c20d8@ha
/* 80622358 4800001C */ b           lbl_80622374
lbl_8062235c:
/* 8062235C 801E00F8 */ lwz         r0, 0xf8(r30)
/* 80622360 38600000 */ li          r3, 0
/* 80622364 5400F0BE */ srwi        r0, r0, 2
/* 80622368 7C1D0016 */ mulhwu      r0, r29, r0
/* 8062236C 5404D1BE */ srwi        r4, r0, 6
/* 80622370 4BB88939 */ bl          OSSleepTicks
lbl_80622374:
/* 80622374 807F20D8 */ lwz         r3, lbl_809c20d8@l(r31)
/* 80622378 48034ACD */ bl          unk_80656e44
/* 8062237C 2C030000 */ cmpwi       r3, 0
/* 80622380 4182FFDC */ beq+        lbl_8062235c
lbl_80622384:
/* 80622384 80010024 */ lwz         r0, 0x24(r1)
/* 80622388 83E1001C */ lwz         r31, 0x1c(r1)
/* 8062238C 83C10018 */ lwz         r30, 0x18(r1)
/* 80622390 83A10014 */ lwz         r29, 0x14(r1)
/* 80622394 7C0803A6 */ mtlr        r0
/* 80622398 38210020 */ addi        r1, r1, 0x20
/* 8062239C 4E800020 */ blr         